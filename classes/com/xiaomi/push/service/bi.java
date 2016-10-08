package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.d.f;
import com.xiaomi.d.g;
import com.xiaomi.d.h;
import com.xiaomi.d.i;
import com.xiaomi.e.a;
import com.xiaomi.push.b.d;
import java.util.ArrayList;
import java.util.Iterator;

public final class bi
  extends u
  implements g
{
  private XMPushService a;
  private long b;
  
  bi(XMPushService paramXMPushService)
  {
    this.a = paramXMPushService;
  }
  
  public final f a(Context paramContext, h paramh, String paramString)
  {
    return new bk(paramContext, paramh, paramString);
  }
  
  public final void a(com.xiaomi.push.b.b paramb)
  {
    if (paramb.b)
    {
      com.xiaomi.a.a.b.c.a("Switch to BucketV2 :" + paramb.c);
      f localf = f.a();
      try
      {
        if (paramb.c) {
          if (!(localf instanceof i))
          {
            f.a(this);
            f.a(this.a, new bj(), "0", "push", "2.2");
          }
        }
        for (;;)
        {
          return;
          if ((f.a() instanceof i))
          {
            f.a(null);
            f.a(this.a, new bj(), "0", "push", "2.2");
          }
        }
        return;
      }
      finally {}
    }
  }
  
  public final void a(d paramd)
  {
    Object localObject;
    if ((paramd.a) && (System.currentTimeMillis() - this.b > 3600000L))
    {
      com.xiaomi.a.a.b.c.a("fetch bucket :" + paramd.b);
      this.b = System.currentTimeMillis();
      localObject = f.a();
      ((f)localObject).d();
      ((f)localObject).e();
      paramd = this.a.a;
      if (paramd != null)
      {
        localObject = ((f)localObject).b(paramd.a().e);
        if (localObject != null)
        {
          localObject = ((com.xiaomi.d.b)localObject).b();
          Iterator localIterator = ((ArrayList)localObject).iterator();
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
          } while (!((String)localIterator.next()).equals(paramd.c()));
        }
      }
    }
    for (int i = 0;; i = 1)
    {
      if ((i != 0) && (!((ArrayList)localObject).isEmpty()))
      {
        com.xiaomi.a.a.b.c.a("bucket changed, force reconnect");
        this.a.a(0, null);
        this.a.a(false);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */