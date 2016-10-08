package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.g.a.p;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ai;
import com.sleepycat.b.g.al;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.l.ab;
import com.sleepycat.b.n;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

public class s
  extends bc
{
  protected final ByteBuffer a;
  protected final ad b;
  private p e = null;
  private p f = null;
  
  static
  {
    if (!s.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  s(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    super(paramae);
    this.b = paramad;
    this.a = paramByteBuffer.slice();
    this.a.limit(paramae.d);
  }
  
  s(ad paramad, al paramal)
  {
    super(paramal.g);
    this.b = paramad;
    paramad = paramal.a();
    paramad.position(this.d.b());
    this.a = paramad.slice();
    if ((!c) && (this.a.limit() != this.d.d)) {
      throw new AssertionError("Limit:" + this.a.limit() + " size:" + this.d.d);
    }
  }
  
  private boolean b(int paramInt)
  {
    if ((paramInt < 8) && (paramInt < this.d.f))
    {
      d();
      if (paramInt < 8) {
        return true;
      }
    }
    return false;
  }
  
  private p d()
  {
    try
    {
      if (this.e != null) {
        break label60;
      }
      af localaf = c();
      if (!localaf.P.d) {
        throw aa.c("Log entry type does not support replication: " + localaf);
      }
    }
    finally {}
    this.e = ((p)((af)localObject).M);
    label60:
    p localp = this.e;
    return localp;
  }
  
  final int a(int paramInt)
  {
    if (b(paramInt)) {}
    for (paramInt = a().a(paramInt);; paramInt = this.d.d) {
      return paramInt + 17;
    }
  }
  
  final p a()
  {
    m localm;
    try
    {
      if (this.f != null) {
        break label95;
      }
      ad localad = this.b;
      ByteBuffer localByteBuffer = this.a;
      localm = c().b();
      localByteBuffer.mark();
      localm.a(localad, this.d, localByteBuffer);
      localByteBuffer.reset();
      if (!(localm instanceof p)) {
        throw aa.c("Log entry type does not support replication: " + localm.getClass().getName());
      }
    }
    finally {}
    this.f = ((p)localm);
    label95:
    p localp = this.f;
    return localp;
  }
  
  public final boolean a(String paramString)
  {
    p localp;
    try
    {
      localp = a();
      if (localp.i() >= 0L) {
        throw aa.c(paramString + " txn id should be negative: " + localp);
      }
    }
    catch (n paramString)
    {
      throw aa.a(paramString);
    }
    if ((localp instanceof k)) {
      if (af.e.c(this.d.b))
      {
        k localk = (k)localp;
        localk.b(false);
        if (((ab)localk.j()).a.a >= 0L) {
          throw aa.c(paramString + " db id should be negative: " + localp);
        }
      }
      else if (localp.a().a >= 0L)
      {
        throw aa.c(paramString + " db id should be negative: " + localp);
      }
    }
    return true;
  }
  
  final boolean a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramByteBuffer.put(this.d.b);
    boolean bool = b(paramInt);
    if (bool)
    {
      p localp = a();
      ar.a(paramByteBuffer, paramInt);
      ar.a(paramByteBuffer, localp.a(paramInt));
      ar.b(paramByteBuffer, this.d.e.c);
      this.a.mark();
      localp.a(paramByteBuffer, paramInt);
    }
    for (;;)
    {
      this.a.reset();
      return bool;
      ar.a(paramByteBuffer, this.d.f);
      ar.a(paramByteBuffer, this.d.d);
      ar.b(paramByteBuffer, this.d.e.c);
      this.a.mark();
      paramByteBuffer.put(this.a);
    }
  }
  
  public final long b()
  {
    if (!af.q.c(this.d.b)) {
      return 0L;
    }
    return a().i();
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringBuilder();
      this.d.a((StringBuilder)localObject);
      a().a((StringBuilder)localObject);
      localObject = ((StringBuilder)localObject).toString();
      return (String)localObject;
    }
    catch (n localn)
    {
      localn.printStackTrace();
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */