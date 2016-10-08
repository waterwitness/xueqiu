package com.sleepycat.b.i.i;

import com.sleepycat.b.aa;
import com.sleepycat.b.av;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.e;
import com.sleepycat.b.g.af;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.au;
import com.sleepycat.b.q;

public class m
{
  static final m a;
  public final au b;
  public final au c;
  final byte d = af.q.K;
  final byte e = af.r.K;
  public final au f;
  public final au g;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      a = new m(au.a, au.a, au.a, au.a);
      return;
    }
  }
  
  m(au paramau1, au paramau2, au paramau3, au paramau4)
  {
    this.b = paramau1;
    this.c = paramau2;
    this.f = paramau3;
    this.g = paramau4;
  }
  
  public static m a(com.sleepycat.b.m paramm)
  {
    return (m)new n().entryToObject(paramm);
  }
  
  static au a(au paramau1, au paramau2, boolean paramBoolean)
  {
    if (paramau1.a(au.a)) {}
    do
    {
      return paramau2;
      if (paramau2.a(au.a)) {
        return paramau1;
      }
    } while (paramBoolean);
    return paramau1;
  }
  
  final au a(ad paramad, i parami, z paramz)
  {
    Object localObject = new n();
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    com.sleepycat.a.a.g.a(-1L, localm1);
    ((n)localObject).objectToEntry(this, localm2);
    localObject = null;
    try
    {
      parami = q.a(parami, paramz, com.sleepycat.b.g.a);
      localObject = parami;
      parami.a.i = false;
      localObject = parami;
      paramz = parami.a(localm1, localm2);
      localObject = parami;
      if (paramz != av.a)
      {
        localObject = parami;
        throw aa.a(paramad, "Unable to write VLSNRange, status = " + paramz);
      }
    }
    finally
    {
      if (localObject != null) {
        ((e)localObject).close();
      }
    }
    if (parami != null) {
      parami.close();
    }
    return this.c;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("first=").append(this.b);
    localStringBuilder.append(" last=").append(this.c);
    localStringBuilder.append(" sync=").append(this.f);
    localStringBuilder.append(" txnEnd=").append(this.g);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */