package com.xiaomi.push.service;

import android.util.Base64;
import com.google.a.a.e;
import com.xiaomi.a.a.b.c;
import com.xiaomi.a.a.c.d;
import com.xiaomi.d.k;
import com.xiaomi.d.l;
import com.xiaomi.e.e.h;
import com.xiaomi.push.b.b;
import java.util.List;

final class v
  extends d
{
  boolean a = false;
  
  v(t paramt) {}
  
  public final void a()
  {
    try
    {
      Object localObject = Base64.decode(k.a(h.a, "http://resolver.msg.xiaomi.net/psc/?t=a", new l()), 10);
      localObject = (b)new b().a((byte[])localObject, localObject.length);
      if (localObject != null)
      {
        t.a(this.b, (b)localObject);
        this.a = true;
        t.a(this.b);
      }
      return;
    }
    catch (Exception localException)
    {
      c.a("fetch config failure: " + localException.getMessage());
    }
  }
  
  public final void b()
  {
    t.b(this.b);
    if (this.a) {
      synchronized (this.b)
      {
        u[] arrayOfu = (u[])t.c(this.b).toArray(new u[t.c(this.b).size()]);
        int j = arrayOfu.length;
        int i = 0;
        if (i < j)
        {
          arrayOfu[i].a(t.d(this.b));
          i += 1;
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */