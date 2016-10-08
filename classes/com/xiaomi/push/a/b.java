package com.xiaomi.push.a;

import android.content.Context;
import com.xiaomi.e.e.i;
import java.util.concurrent.ConcurrentLinkedQueue;

public class b
{
  private static b c = null;
  public final ConcurrentLinkedQueue<d> a = new ConcurrentLinkedQueue();
  private Context b;
  
  private b(Context paramContext)
  {
    this.b = paramContext;
    this.a.add(new c(this));
    a(0L);
  }
  
  public static b a(Context paramContext)
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = new b(paramContext);
      }
      c.b = paramContext;
      return c;
    }
    finally {}
  }
  
  private void b(long paramLong)
  {
    d locald = (d)this.a.peek();
    if ((locald != null) && (locald.c())) {
      a(paramLong);
    }
  }
  
  public final void a()
  {
    if (!this.a.isEmpty())
    {
      d locald = (d)this.a.peek();
      if (System.currentTimeMillis() - locald.b > 172800000L) {}
      for (int i = 1;; i = 0)
      {
        if ((i == 0) && (this.a.size() <= 6)) {
          break label75;
        }
        com.xiaomi.a.a.b.c.c("remove Expired task");
        this.a.remove();
        break;
      }
    }
    label75:
    b(0L);
  }
  
  public final void a(long paramLong)
  {
    if (!this.a.isEmpty()) {
      i.a(new g(this), paramLong);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */