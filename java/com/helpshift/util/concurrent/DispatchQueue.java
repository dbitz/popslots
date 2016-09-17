package com.helpshift.util.concurrent;

import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

public class DispatchQueue {
    private static final String TAG = "HelpshiftDebug";
    private LinkedBlockingQueue<Thread> afterThreads = new LinkedBlockingQueue();
    private LinkedBlockingQueue<Future> tasks = new LinkedBlockingQueue();
    private ExecutorService threadPoolExecutor;

    public DispatchQueue(boolean isConcurrent) {
        if (isConcurrent) {
            this.threadPoolExecutor = Executors.newCachedThreadPool();
        } else {
            this.threadPoolExecutor = Executors.newSingleThreadExecutor();
        }
    }

    public void dispatchSync(Runnable runnable) {
        try {
            this.threadPoolExecutor.submit(runnable).get();
        } catch (InterruptedException e) {
            Log.d(TAG, "Runnable interrupted : ", e);
        } catch (ExecutionException e2) {
            Log.d(TAG, "Execution exception : ", e2);
        }
    }

    private void trackTask(Future task) {
        this.tasks.add(task);
    }

    public void dispatchAsync(Runnable runnable) {
        trackTask(this.threadPoolExecutor.submit(runnable));
    }

    public void dispatchAfter(Runnable runnable, long interval) {
        final DispatchQueue queue = this;
        final long j = interval;
        final Runnable runnable2 = runnable;
        Thread triggerThread = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(j);
                    queue.dispatchAsync(runnable2);
                } catch (InterruptedException e) {
                    Log.d(DispatchQueue.TAG, "Runnable interrupted : ", e);
                }
            }
        });
        triggerThread.start();
        this.afterThreads.add(triggerThread);
    }

    public void join() {
        try {
            Iterator it = this.afterThreads.iterator();
            while (it.hasNext()) {
                ((Thread) it.next()).join();
            }
            it = this.tasks.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).get();
            }
            this.tasks.clear();
        } catch (InterruptedException e) {
            Log.d(TAG, "Runnable interrupted : ", e);
        } catch (ExecutionException e2) {
            Log.d(TAG, "Execution exception : ", e2);
        }
    }
}
