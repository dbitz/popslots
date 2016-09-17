package com.helpshift.util;

import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.channels.FileChannel;
import java.util.HashMap;

public class DBUtil {
    private static final String TAG = "HelpshiftDebug";
    private static final String sdPath = (".backups/" + HelpshiftContext.getApplicationContext().getPackageName() + "/helpshift/databases/");

    private static void copy(File dstFilePath, HashMap<String, Serializable> data) {
        Throwable th;
        ObjectOutputStream outputStream = null;
        try {
            ObjectOutputStream outputStream2 = new ObjectOutputStream(new FileOutputStream(dstFilePath));
            try {
                outputStream2.writeObject(data);
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (Exception e) {
                        outputStream = outputStream2;
                        return;
                    }
                }
                outputStream = outputStream2;
            } catch (FileNotFoundException e2) {
                outputStream = outputStream2;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception e3) {
                    }
                }
            } catch (IOException e4) {
                outputStream = outputStream2;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception e5) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = outputStream2;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception e6) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (IOException e8) {
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th3) {
            th = th3;
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
    }

    private static void copy(File dstDBPath, String srcDBPathName) {
        FileChannel dst = null;
        FileChannel fileChannel = null;
        try {
            fileChannel = new FileInputStream(new File(HelpshiftContext.getApplicationContext().getDatabasePath(srcDBPathName).getPath())).getChannel();
            dst = new FileOutputStream(dstDBPath).getChannel();
            dst.transferFrom(fileChannel, 0, fileChannel.size());
            fileChannel.close();
            dst.close();
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (Exception e) {
                    return;
                }
            }
            if (dst != null) {
                dst.close();
            }
        } catch (FileNotFoundException e2) {
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (Exception e3) {
                    return;
                }
            }
            if (dst != null) {
                dst.close();
            }
        } catch (IOException e4) {
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (Exception e5) {
                    return;
                }
            }
            if (dst != null) {
                dst.close();
            }
        } catch (Throwable th) {
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (Exception e6) {
                }
            }
            if (dst != null) {
                dst.close();
            }
        }
    }

    private static void backupData(String fileName, HashMap<String, Serializable> data) {
        if (data != null || doesDatabaseExist(fileName)) {
            try {
                File sd = Environment.getExternalStoragePublicDirectory(sdPath);
                if (!sd.exists()) {
                    sd.mkdirs();
                }
                if (sd.canWrite()) {
                    File dstDBPath = new File(sd, fileName);
                    if (data != null) {
                        copy(dstDBPath, (HashMap) data);
                    } else {
                        copy(dstDBPath, fileName);
                    }
                }
            } catch (Exception e) {
                Log.d(TAG, "backupDatabase", e);
            }
        }
    }

    public static void backupDatabase(String dbName) {
        backupData(dbName, null);
    }

    public static void backupHashMap(String fileName, HashMap<String, Serializable> data) {
        backupData(fileName, data);
    }

    public static void restoreDatabaseBackup(String dbName) {
        if (!doesDatabaseExist(dbName)) {
            FileChannel dst = null;
            FileChannel fileChannel = dst;
            try {
                File sd = Environment.getExternalStoragePublicDirectory(sdPath);
                if (sd.canRead()) {
                    String currentDBPath = HelpshiftContext.getApplicationContext().getDatabasePath(dbName).getPath();
                    File srcDBPath = new File(sd, dbName);
                    File dstDBPath = new File(currentDBPath);
                    fileChannel = new FileInputStream(srcDBPath).getChannel();
                    dst = new FileOutputStream(dstDBPath).getChannel();
                    dst.transferFrom(fileChannel, 0, fileChannel.size());
                }
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (Exception e) {
                        return;
                    }
                }
                if (dst != null) {
                    dst.close();
                }
            } catch (Exception e2) {
                Log.d(TAG, "restoreDatabaseBackup", e2);
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (Exception e3) {
                        return;
                    }
                }
                if (dst != null) {
                    dst.close();
                }
            } catch (Throwable th) {
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (Exception e4) {
                    }
                }
                if (dst != null) {
                    dst.close();
                }
            }
        }
    }

    public static boolean doesDatabaseExist(String fileName) {
        return HelpshiftContext.getApplicationContext().getDatabasePath(fileName).exists();
    }

    public static boolean doesExternalFileExist(String fileName) {
        return new File(Environment.getExternalStoragePublicDirectory(sdPath), fileName).exists();
    }

    public static HashMap<String, Serializable> restoreHashMap(String fileName) {
        Exception e;
        Throwable th;
        if (!doesExternalFileExist(fileName)) {
            return null;
        }
        HashMap<String, Serializable> data = null;
        ObjectInputStream inputStream = null;
        try {
            File sd = Environment.getExternalStoragePublicDirectory(sdPath);
            if (sd.canRead()) {
                ObjectInputStream inputStream2 = new ObjectInputStream(new FileInputStream(new File(sd, fileName)));
                try {
                    data = (HashMap) inputStream2.readObject();
                    inputStream = inputStream2;
                } catch (Exception e2) {
                    e = e2;
                    inputStream = inputStream2;
                    try {
                        Log.d(TAG, "restoreDatabaseBackup", e);
                        if (inputStream != null) {
                            return data;
                        }
                        try {
                            inputStream.close();
                            return data;
                        } catch (IOException e3) {
                            return data;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = inputStream2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
            if (inputStream == null) {
                return data;
            }
            try {
                inputStream.close();
                return data;
            } catch (IOException e5) {
                return data;
            }
        } catch (Exception e6) {
            e = e6;
            Log.d(TAG, "restoreDatabaseBackup", e);
            if (inputStream != null) {
                return data;
            }
            inputStream.close();
            return data;
        }
    }
}
