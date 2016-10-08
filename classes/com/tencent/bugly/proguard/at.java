package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;

final class at
  implements Runnable
{
  private final Context a;
  private final Runnable b;
  private final long c;
  
  public at(t paramt, Context paramContext)
  {
    this(paramt, paramContext, null, 0L);
  }
  
  public at(t paramt, Context paramContext, Runnable paramRunnable, long paramLong)
  {
    this.a = paramContext;
    this.b = paramRunnable;
    this.c = paramLong;
  }
  
  public final void run()
  {
    if (!a.a(this.a, "security_info", 30000L))
    {
      ??? = v.a();
      if (??? == null) {
        w.e("[UploadManager] async task handler has not been initialized", new Object[0]);
      }
    }
    do
    {
      return;
      w.c("[UploadManager] sleep %d try to lock security file again", new Object[] { Integer.valueOf(5000) });
      try
      {
        Thread.sleep(5000L);
        ((v)???).c(new at(this.d, t.a(this.d)));
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
      if (!t.b(this.d))
      {
        w.d("[UploadManager] failed to load security info from database", new Object[0]);
        this.d.a(false);
      }
      if (t.c(this.d) != null)
      {
        if (this.d.c())
        {
          w.c("[UploadManager] sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
          if (this.b != null) {
            t.a(this.d, this.b, this.c);
          }
          t.a(this.d, 0);
          a.b(this.a, "security_info");
          synchronized (t.d(this.d))
          {
            t.a(this.d, false);
            return;
          }
        }
        w.a("[UploadManager] session ID is expired, drop it", new Object[0]);
        this.d.a(true);
      }
      ??? = a.a(128);
      if ((??? == null) || (???.length << 3 != 128)) {
        break;
      }
      t.a(this.d, (byte[])???);
      w.c("[UploadManager] execute one upload task for requesting session ID (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      if (this.b != null)
      {
        t.a(this.d, this.b, this.c);
        return;
      }
    } while (t.a(this.d, 1));
    w.d("[UploadManager] failed to execute one upload task (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    for (;;)
    {
      this.d.a(false);
      a.b(this.a, "security_info");
      synchronized (t.d(this.d))
      {
        t.a(this.d, false);
        return;
      }
      w.d("[UploadManager] failed to create AES key (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */