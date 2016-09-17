package com.helpshift.support;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public class DownloadRunnable implements Runnable {
    static final int HTTP_STATE_COMPLETED = 3;
    static final int HTTP_STATE_FAILED = -1;
    static final int HTTP_STATE_PAUSED = 1;
    static final int HTTP_STATE_RESUMED = 2;
    static final int HTTP_STATE_STARTED = 0;
    static final int PROGRESS_CHANGED = 4;
    static final String TAG = "HelpShiftDebug";
    byte[] byteBuffer;
    final DownloadRunnableMethods downloadTask;
    private long downloadedBytes;
    private long totalBytes;
    String userAgent = ("Helpshift-Android/4.1.1-support/" + VERSION.RELEASE);

    interface DownloadRunnableMethods {
        int getDownloadState();

        URL getDownloadUrl();

        int getFileSize();

        File getFinalFile();

        File getTempFile();

        void handleDownloadState(int i);

        void setDownloadState(int i);

        void setDownloadThread(Thread thread);

        void setDownloadedFilePath(String str);

        void setProgress(double d);
    }

    public void run() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x0041 in list [B:11:0x0039]
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:42)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:60)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:286)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:173)
*/
        /*
        r18 = this;
        r0 = r18;
        r13 = r0.downloadTask;
        r14 = java.lang.Thread.currentThread();
        r13.setDownloadThread(r14);
        r13 = 10;
        android.os.Process.setThreadPriority(r13);
        r13 = java.lang.Thread.interrupted();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        if (r13 == 0) goto L_0x0042;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0016:
        r13 = new java.lang.InterruptedException;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13.<init>();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        throw r13;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x001c:
        r4 = move-exception;
        r0 = r18;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r14 = -1;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13.setDownloadState(r14);	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13 = "HelpShiftDebug";	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r14 = "Exception Interrupted";	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        android.util.Log.d(r13, r14, r4);	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r0 = r18;
        r13 = r0.downloadTask;
        r13 = r13.getDownloadState();
        r14 = -1;
        if (r13 != r14) goto L_0x0041;
    L_0x0039:
        r0 = r18;
        r13 = r0.downloadTask;
        r14 = -1;
        r13.handleDownloadState(r14);
    L_0x0041:
        return;
    L_0x0042:
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r13.getDownloadUrl();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r9 = r13.openConnection();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r9 = (java.net.HttpURLConnection) r9;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = "User-Agent";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r0.userAgent;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r9.setRequestProperty(r13, r14);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r5 = r13.getTempFile();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r5.length();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0.downloadedBytes = r14;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = "Range";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = new java.lang.StringBuilder;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14.<init>();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r15 = "bytes=";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r14.append(r15);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r0.downloadedBytes;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r16 = r0;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r16;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r14.append(r0);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r15 = "-";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r14.append(r15);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r14.toString();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r9.setRequestProperty(r13, r14);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r14.getDownloadState();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13.handleDownloadState(r14);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r13.getDownloadState();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        if (r13 == 0) goto L_0x00b7;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x00ac:
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r13.getDownloadState();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = 2;
        if (r13 != r14) goto L_0x00e4;
    L_0x00b7:
        r2 = 0;
        r7 = 0;
        r13 = java.lang.Thread.interrupted();	 Catch:{ IOException -> 0x00c5 }
        if (r13 == 0) goto L_0x00f9;	 Catch:{ IOException -> 0x00c5 }
    L_0x00bf:
        r13 = new java.lang.InterruptedException;	 Catch:{ IOException -> 0x00c5 }
        r13.<init>();	 Catch:{ IOException -> 0x00c5 }
        throw r13;	 Catch:{ IOException -> 0x00c5 }
    L_0x00c5:
        r4 = move-exception;
    L_0x00c6:
        r0 = r18;	 Catch:{ all -> 0x0109 }
        r13 = r0.downloadTask;	 Catch:{ all -> 0x0109 }
        r14 = -1;	 Catch:{ all -> 0x0109 }
        r13.setDownloadState(r14);	 Catch:{ all -> 0x0109 }
        r13 = "HelpShiftDebug";	 Catch:{ all -> 0x0109 }
        r14 = "Exception IO";	 Catch:{ all -> 0x0109 }
        android.util.Log.d(r13, r14, r4);	 Catch:{ all -> 0x0109 }
        if (r2 == 0) goto L_0x00dc;
    L_0x00d9:
        r2.close();	 Catch:{ IOException -> 0x025f, InterruptedException -> 0x001c }
    L_0x00dc:
        r9.disconnect();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        if (r7 == 0) goto L_0x00e4;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x00e1:
        r7.close();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x00e4:
        r0 = r18;
        r13 = r0.downloadTask;
        r13 = r13.getDownloadState();
        r14 = -1;
        if (r13 != r14) goto L_0x0041;
    L_0x00ef:
        r0 = r18;
        r13 = r0.downloadTask;
        r14 = -1;
        r13.handleDownloadState(r14);
        goto L_0x0041;
    L_0x00f9:
        r2 = r9.getInputStream();	 Catch:{ IOException -> 0x00c5 }
        r13 = java.lang.Thread.interrupted();	 Catch:{ IOException -> 0x00c5 }
        if (r13 == 0) goto L_0x013f;	 Catch:{ IOException -> 0x00c5 }
    L_0x0103:
        r13 = new java.lang.InterruptedException;	 Catch:{ IOException -> 0x00c5 }
        r13.<init>();	 Catch:{ IOException -> 0x00c5 }
        throw r13;	 Catch:{ IOException -> 0x00c5 }
    L_0x0109:
        r13 = move-exception;
    L_0x010a:
        if (r2 == 0) goto L_0x010f;
    L_0x010c:
        r2.close();	 Catch:{ IOException -> 0x0273, InterruptedException -> 0x001c }
    L_0x010f:
        r9.disconnect();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        if (r7 == 0) goto L_0x0117;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0114:
        r7.close();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0117:
        throw r13;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0118:
        r4 = move-exception;
        r0 = r18;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r14 = -1;	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13.setDownloadState(r14);	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r13 = "HelpShiftDebug";	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r14 = "Exception IO";	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        android.util.Log.d(r13, r14, r4);	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
        r0 = r18;
        r13 = r0.downloadTask;
        r13 = r13.getDownloadState();
        r14 = -1;
        if (r13 != r14) goto L_0x0041;
    L_0x0135:
        r0 = r18;
        r13 = r0.downloadTask;
        r14 = -1;
        r13.handleDownloadState(r14);
        goto L_0x0041;
    L_0x013f:
        r3 = r9.getContentLength();	 Catch:{ IOException -> 0x00c5 }
        r0 = r18;	 Catch:{ IOException -> 0x00c5 }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x00c5 }
        r13 = r13.getFileSize();	 Catch:{ IOException -> 0x00c5 }
        r14 = (long) r13;	 Catch:{ IOException -> 0x00c5 }
        r0 = r18;	 Catch:{ IOException -> 0x00c5 }
        r0.totalBytes = r14;	 Catch:{ IOException -> 0x00c5 }
        r8 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00c5 }
        r13 = 1;	 Catch:{ IOException -> 0x00c5 }
        r8.<init>(r5, r13);	 Catch:{ IOException -> 0x00c5 }
        r13 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r13 = new byte[r13];	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0.byteBuffer = r13;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x015e:
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.byteBuffer;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r15 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r12 = r2.read(r13, r14, r15);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = -1;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        if (r12 == r13) goto L_0x01c0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x016c:
        if (r12 >= 0) goto L_0x0178;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x016e:
        r13 = new java.io.EOFException;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.<init>();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        throw r13;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x0174:
        r4 = move-exception;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r7 = r8;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        goto L_0x00c6;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x0178:
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.byteBuffer;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r8.write(r13, r14, r12);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = r5.length();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0.downloadedBytes = r14;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = r0.downloadedBytes;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = (double) r14;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r0.totalBytes;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r16 = r0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r16;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = (double) r0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r16 = r0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = r14 / r16;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r16 = 4666723172467343360; // 0x40c3880000000000 float:0.0 double:10000.0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r10 = r14 * r16;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.setProgress(r10);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 4;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.handleDownloadState(r14);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = java.lang.Thread.interrupted();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        if (r13 == 0) goto L_0x015e;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x01b6:
        r13 = new java.lang.InterruptedException;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.<init>();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        throw r13;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x01bc:
        r13 = move-exception;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r7 = r8;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        goto L_0x010a;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x01c0:
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r13.getDownloadState();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        if (r13 == 0) goto L_0x01d5;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x01ca:
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r13.getDownloadState();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 2;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        if (r13 != r14) goto L_0x0228;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x01d5:
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r13.getTempFile();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = r14.getFinalFile();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0.copy(r13, r14);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r13.getTempFile();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.delete();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r13.getFinalFile();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r6 = r13.getAbsolutePath();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.setDownloadedFilePath(r6);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = 0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0.byteBuffer = r13;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 0;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.setDownloadThread(r14);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        java.lang.Thread.interrupted();	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 3;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.setDownloadState(r14);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r0 = r18;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13 = r0.downloadTask;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r14 = 3;	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
        r13.handleDownloadState(r14);	 Catch:{ IOException -> 0x0174, all -> 0x01bc }
    L_0x0228:
        if (r2 == 0) goto L_0x022d;
    L_0x022a:
        r2.close();	 Catch:{ IOException -> 0x024c, InterruptedException -> 0x001c, all -> 0x0237 }
    L_0x022d:
        r9.disconnect();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        if (r8 == 0) goto L_0x00e4;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0232:
        r8.close();	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        goto L_0x00e4;
    L_0x0237:
        r13 = move-exception;
        r0 = r18;
        r14 = r0.downloadTask;
        r14 = r14.getDownloadState();
        r15 = -1;
        if (r14 != r15) goto L_0x024b;
    L_0x0243:
        r0 = r18;
        r14 = r0.downloadTask;
        r15 = -1;
        r14.handleDownloadState(r15);
    L_0x024b:
        throw r13;
    L_0x024c:
        r4 = move-exception;
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = -1;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13.setDownloadState(r14);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = "HelpShiftDebug";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = "Exception IO";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        android.util.Log.d(r13, r14, r4);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        goto L_0x022d;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x025f:
        r4 = move-exception;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = -1;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13.setDownloadState(r14);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r13 = "HelpShiftDebug";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = "Exception IO";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        android.util.Log.d(r13, r14, r4);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        goto L_0x00dc;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
    L_0x0273:
        r4 = move-exception;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r0 = r18;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = r0.downloadTask;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r15 = -1;	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14.setDownloadState(r15);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r14 = "HelpShiftDebug";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        r15 = "Exception IO";	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        android.util.Log.d(r14, r15, r4);	 Catch:{ InterruptedException -> 0x001c, IOException -> 0x0118 }
        goto L_0x010f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.helpshift.support.DownloadRunnable.run():void");
    }

    public DownloadRunnable(DownloadRunnableMethods downloadTask) {
        this.downloadTask = downloadTask;
    }

    private void copy(File src, File dst) {
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        InputStream in = null;
        OutputStream out = null;
        try {
            OutputStream out2;
            InputStream in2 = new FileInputStream(src);
            try {
                out2 = new FileOutputStream(dst);
            } catch (FileNotFoundException e3) {
                e = e3;
                in = in2;
                try {
                    Log.d(TAG, "Exception File Not Found", e);
                    if (in != null) {
                        try {
                            in.close();
                        } catch (IOException e4) {
                        }
                    }
                    if (out == null) {
                        try {
                            out.close();
                        } catch (IOException e5) {
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (in != null) {
                        try {
                            in.close();
                        } catch (IOException e6) {
                        }
                    }
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e7) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e8) {
                e2 = e8;
                in = in2;
                Log.d(TAG, "Exception IO", e2);
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e9) {
                    }
                }
                if (out == null) {
                    try {
                        out.close();
                    } catch (IOException e10) {
                        return;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                in = in2;
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
                throw th;
            }
            try {
                byte[] buf = new byte[1024];
                while (true) {
                    int len = in2.read(buf);
                    if (len <= 0) {
                        break;
                    }
                    out2.write(buf, HTTP_STATE_STARTED, len);
                }
                if (in2 != null) {
                    try {
                        in2.close();
                    } catch (IOException e11) {
                    }
                }
                if (out2 != null) {
                    try {
                        out2.close();
                    } catch (IOException e12) {
                        out = out2;
                        in = in2;
                        return;
                    }
                }
                out = out2;
                in = in2;
            } catch (FileNotFoundException e13) {
                e = e13;
                out = out2;
                in = in2;
                Log.d(TAG, "Exception File Not Found", e);
                if (in != null) {
                    in.close();
                }
                if (out == null) {
                    out.close();
                }
            } catch (IOException e14) {
                e2 = e14;
                out = out2;
                in = in2;
                Log.d(TAG, "Exception IO", e2);
                if (in != null) {
                    in.close();
                }
                if (out == null) {
                    out.close();
                }
            } catch (Throwable th4) {
                th = th4;
                out = out2;
                in = in2;
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
                throw th;
            }
        } catch (FileNotFoundException e15) {
            e = e15;
            Log.d(TAG, "Exception File Not Found", e);
            if (in != null) {
                in.close();
            }
            if (out == null) {
                out.close();
            }
        } catch (IOException e16) {
            e2 = e16;
            Log.d(TAG, "Exception IO", e2);
            if (in != null) {
                in.close();
            }
            if (out == null) {
                out.close();
            }
        }
    }
}
