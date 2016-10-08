package com.xiaomi.d;

import com.xiaomi.a.a.b.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;
import org.apache.a.g;

final class r
  extends TimerTask
{
  r(m paramm) {}
  
  public final void run()
  {
    Object localObject2 = new ArrayList();
    synchronized (this.a)
    {
      ((List)localObject2).addAll(this.a.a);
      ??? = ((List)localObject2).iterator();
      for (;;)
      {
        if (((Iterator)???).hasNext())
        {
          localObject2 = (n)((Iterator)???).next();
          List localList = ((n)localObject2).a();
          double d = ((n)localObject2).b();
          if (localList == null) {
            continue;
          }
          try
          {
            if (localList.size() > 0) {
              m.a(this.a, localList, d);
            }
          }
          catch (g localg)
          {
            c.a("uploadHostStat exception" + localg.toString());
          }
        }
      }
    }
    this.a.c = false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */