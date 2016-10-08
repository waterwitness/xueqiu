package com.xiaomi.push.service;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Pair;
import com.xiaomi.a.a.b.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ai
  extends HandlerThread
{
  volatile long a = 0L;
  volatile boolean b = false;
  volatile Handler c;
  private List<Pair<f, Long>> d = new ArrayList();
  
  public ai(String paramString)
  {
    super(paramString);
  }
  
  public final void a(int paramInt)
  {
    if (this.c != null) {
      this.c.removeMessages(paramInt);
    }
  }
  
  public final void a(f paramf, long paramLong)
  {
    synchronized (this.d)
    {
      if (this.c != null)
      {
        Message localMessage = Message.obtain();
        localMessage.what = paramf.d;
        localMessage.obj = paramf;
        this.c.sendMessageDelayed(localMessage, paramLong);
        return;
      }
      c.a("the job is pended, the controller is not ready.");
      this.d.add(new Pair(paramf, Long.valueOf(paramLong)));
    }
  }
  
  protected final void onLooperPrepared()
  {
    this.c = new aj(this, getLooper());
    synchronized (this.d)
    {
      Iterator localIterator = this.d.iterator();
      if (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        c.a("executing the pending job.");
        a((f)localPair.first, ((Long)localPair.second).longValue());
      }
    }
    this.d.clear();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */