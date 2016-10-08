package com.xiaomi.f;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.p;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.ak;
import com.xiaomi.push.service.t;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.a.b.o;
import org.apache.a.e;

public final class g
{
  public boolean a = false;
  int b;
  long c;
  f d;
  private String e;
  private com.xiaomi.a.a.e.a f = com.xiaomi.a.a.e.b.a();
  
  private com.xiaomi.push.d.d a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    com.xiaomi.push.d.d locald = new com.xiaomi.push.d.d(this.e, localArrayList);
    if (!com.xiaomi.a.a.d.d.b(this.d.a)) {
      locald.b = ak.d(this.d.a);
    }
    org.apache.a.c.b localb = new org.apache.a.c.b(paramInt);
    org.apache.a.b.h localh = new o().a(localb);
    try
    {
      locald.b(localh);
      localLinkedList = this.f.b();
    }
    catch (org.apache.a.g localg1)
    {
      try
      {
        LinkedList localLinkedList;
        while (localLinkedList.size() > 0)
        {
          localb3 = (com.xiaomi.a.a.e.b)localLinkedList.getLast();
          if (localb3.a != 0) {
            break label208;
          }
          if (!(localb3.c instanceof com.xiaomi.push.d.b)) {
            break label254;
          }
          com.xiaomi.push.d.b localb1 = (com.xiaomi.push.d.b)localb3.c;
          if (localb1 != null) {
            localb1.b(localh);
          }
          if (localb.a.size() > paramInt) {
            break;
          }
          if (localb1 != null) {
            localArrayList.add(localb1);
          }
          localLinkedList.removeLast();
        }
      }
      catch (NoSuchElementException localNoSuchElementException)
      {
        for (;;)
        {
          com.xiaomi.a.a.e.b localb3;
          c.a("stat approximate size = " + localb.a.size());
          return locald;
          com.xiaomi.push.d.b localb2 = b();
          localb2.a(com.xiaomi.push.d.a.ab.ac);
          localb2.c(localb3.a);
          localb2.g = localb3.b;
        }
        localg1 = localg1;
      }
      catch (org.apache.a.g localg2)
      {
        for (;;)
        {
          label208:
          continue;
          label254:
          Object localObject = null;
        }
      }
    }
  }
  
  final com.xiaomi.push.d.d a()
  {
    int j = 0;
    com.xiaomi.push.d.d locald = null;
    try
    {
      if ((this.a) && (System.currentTimeMillis() - this.c > this.b))
      {
        this.a = false;
        this.c = 0L;
      }
      int i = j;
      if (this.a)
      {
        i = j;
        if (this.f.a() > 0) {
          i = 1;
        }
      }
      if (i != 0)
      {
        i = 750;
        if (!com.xiaomi.a.a.d.d.b(com.xiaomi.e.e.h.a)) {
          i = 375;
        }
        locald = a(i);
      }
      return locald;
    }
    finally {}
  }
  
  final void a(com.xiaomi.push.d.b paramb)
  {
    try
    {
      this.f.a(paramb);
      return;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public final void a(XMPushService paramXMPushService, p paramp)
  {
    try
    {
      this.d = new f(paramXMPushService);
      this.e = "";
      if (paramp != null) {
        paramp.a(this.d);
      }
      t.a().a(new i(this));
      return;
    }
    finally {}
  }
  
  final com.xiaomi.push.d.b b()
  {
    com.xiaomi.push.d.b localb = new com.xiaomi.push.d.b();
    localb.d = com.xiaomi.a.a.d.d.c(this.d.a);
    localb.a = 0;
    localb.c = 1;
    localb.i = ((int)(System.currentTimeMillis() / 1000L));
    localb.a();
    if (this.d.b != null)
    {
      localb.j = this.d.b.e();
      localb.b();
    }
    return localb;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */