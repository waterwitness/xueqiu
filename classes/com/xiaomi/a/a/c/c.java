package com.xiaomi.a.a.c;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class c
  extends Thread
{
  final LinkedBlockingQueue<d> a = new LinkedBlockingQueue();
  
  public c(b paramb)
  {
    super("PackageProcessor");
  }
  
  public final void run()
  {
    int i;
    if (this.b.c > 0) {
      i = this.b.c;
    }
    while (!this.b.b)
    {
      try
      {
        this.b.d = ((d)this.a.poll(i, TimeUnit.SECONDS));
        if (this.b.d == null) {
          break label148;
        }
        Message localMessage = this.b.a.obtainMessage(0, this.b.d);
        this.b.a.sendMessage(localMessage);
        this.b.d.a();
        localMessage = this.b.a.obtainMessage(1, this.b.d);
        this.b.a.sendMessage(localMessage);
      }
      catch (InterruptedException localInterruptedException)
      {
        com.xiaomi.a.a.b.c.a(localInterruptedException);
      }
      continue;
      i = 1;
      continue;
      label148:
      if (this.b.c > 0) {
        this.b.a();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */