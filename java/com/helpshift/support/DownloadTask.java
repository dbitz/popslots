package com.helpshift.support;

import android.os.Environment;
import com.helpshift.util.ApplicationUtil;
import com.helpshift.util.HelpshiftContext;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.jboss.netty.util.internal.jzlib.JZlib;
import org.json.JSONObject;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class DownloadTask implements DownloadRunnableMethods {
    public static final String TAG = "HelpShiftDebug";
    private static DownloadManager downloadManager;
    private final int FINAL_FILE = 1;
    private final int TEMP_FILE = 0;
    private String contentType;
    Thread currentThread;
    private Runnable downloadRunnable = new DownloadRunnable(this);
    private int downloadState;
    private DownloadTaskCallBacks downloadTaskCallBacks;
    private int downloadType;
    private URL downloadURL;
    private String downloadedFilePath;
    private String fileName;
    private String fileType;
    private File finalFile;
    private long height;
    private HSApiData hsApiData;
    private HSStorage hsStorage;
    private String issueId;
    private String msgId;
    private int position;
    private double progress;
    private int size;
    private File tempFile;
    private URL thumbnailUrl;
    private long width;

    DownloadTask() {
        downloadManager = DownloadManager.getInstance();
    }

    void initializeDownloaderTask(DownloadManager downloadManager, JSONObject attachment, int position, String msgId, String issueId, int downloadType) {
        try {
            downloadManager = downloadManager;
            this.downloadTaskCallBacks = DownloadManager.getDownloadTaskCallBacks();
            this.hsApiData = new HSApiData(HelpshiftContext.getApplicationContext());
            this.hsStorage = this.hsApiData.storage;
            this.downloadType = downloadType;
            this.downloadURL = new URL(attachment.optString(Values.URL, ""));
            this.fileName = attachment.optString("file-name", "");
            if (downloadType == 8) {
                this.thumbnailUrl = new URL(attachment.optString("thumbnail", ""));
                this.downloadURL = this.thumbnailUrl;
            }
            this.contentType = attachment.optString("content-type", "");
            String[] split = this.contentType.split("\\/");
            this.fileType = split[split.length - 1];
            this.size = attachment.optInt("size", 0);
            this.downloadState = 0;
            this.tempFile = createFile(0);
            this.finalFile = createFile(1);
            this.position = position;
            this.msgId = msgId;
            this.issueId = issueId;
        } catch (MalformedURLException e) {
            Log.d(TAG, "Exception Malformed URL", e);
        }
    }

    void handleState(int state) {
        downloadManager.handleState(this, state, this.position);
    }

    public void setDownloadThread(Thread currentThread) {
        setCurrentThread(currentThread);
    }

    public void setDownloadedFilePath(String filePath) {
        this.downloadedFilePath = filePath;
    }

    public void setProgress(double progress) {
        this.progress = progress;
    }

    public void handleDownloadState(int state) {
        int outState;
        switch (state) {
            case JZlib.Z_ERRNO /*-1*/:
                this.hsStorage.removeFromActiveDownloads(this.msgId);
                outState = -1;
                break;
            case Base64.NO_OPTIONS /*0*/:
                outState = 1;
                break;
            case BuddyOnlineState.OFFLINE /*1*/:
                outState = 2;
                break;
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                outState = 3;
                break;
            case MessageRecipientMode.TO_ZONE /*3*/:
                this.hsStorage.removeFromActiveDownloads(this.msgId);
                switch (this.downloadType) {
                    case BaseRequest.CreateRoom /*6*/:
                        this.hsStorage.addToDownloadedGenericFiles(this.msgId, this.downloadedFilePath);
                        break;
                    case BaseRequest.GenericMessage /*7*/:
                        this.hsStorage.addToDownloadedImageFiles(this.msgId, this.downloadedFilePath);
                        File file = new File(this.hsStorage.getFilePathForThumbnail(this.msgId));
                        if (file.exists()) {
                            file.delete();
                        }
                        this.hsStorage.removeFromDownloadedThumbnailFiles(this.msgId);
                        break;
                    case Base64.DO_BREAK_LINES /*8*/:
                        this.hsStorage.addToDownloadedThumbnailFiles(this.msgId, this.downloadedFilePath);
                        break;
                }
                outState = 4;
                break;
            case Base64.DONT_GUNZIP /*4*/:
                outState = 5;
                break;
            default:
                outState = 1;
                break;
        }
        handleState(outState);
    }

    public int getDownloadState() {
        return this.downloadState;
    }

    public void setDownloadState(int state) {
        this.downloadState = state;
    }

    public URL getDownloadUrl() {
        return this.downloadURL;
    }

    public int getFileSize() {
        return this.size;
    }

    public File getTempFile() {
        return this.tempFile;
    }

    public void setTempFile(File file) {
        this.tempFile = file;
    }

    public File getFinalFile() {
        return this.finalFile;
    }

    public void setFinalFile(File file) {
        this.finalFile = file;
    }

    public double getProgress() {
        return this.progress;
    }

    public String getDownloadedFilePath() {
        return this.downloadedFilePath;
    }

    public String getMsgId() {
        return this.msgId;
    }

    public String getIssueId() {
        return this.issueId;
    }

    public int getDownloadType() {
        return this.downloadType;
    }

    Runnable getDownloadRunnable() {
        return this.downloadRunnable;
    }

    Thread getCurrentThread() {
        Thread thread;
        synchronized (downloadManager) {
            thread = this.currentThread;
        }
        return thread;
    }

    void setCurrentThread(Thread thread) {
        synchronized (downloadManager) {
            this.currentThread = thread;
        }
    }

    protected void recycle() {
        this.downloadedFilePath = null;
        this.tempFile = null;
        this.finalFile = null;
    }

    public DownloadTaskCallBacks getDownloadTaskCallBacks() {
        return this.downloadTaskCallBacks;
    }

    private File createFile(int type) {
        File dir;
        if (ApplicationUtil.isPermissionGranted(HelpshiftContext.getApplicationContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
            dir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        } else {
            dir = HelpshiftContext.getApplicationContext().getFilesDir();
        }
        if (!dir.exists()) {
            dir.mkdirs();
        }
        if (!dir.canWrite()) {
            return null;
        }
        String fileName = "";
        switch (type) {
            case Base64.NO_OPTIONS /*0*/:
                return new File(dir, "Support_Temp_" + System.currentTimeMillis() + this.fileName);
            case BuddyOnlineState.OFFLINE /*1*/:
                return new File(dir, "Support_" + System.currentTimeMillis() + this.fileName);
            default:
                return null;
        }
    }
}
