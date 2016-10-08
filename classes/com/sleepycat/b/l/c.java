package com.sleepycat.b.l;

import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class c
  implements at
{
  public final h a;
  public long b;
  public long c;
  public final ArrayList<g> d;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public c()
  {
    this.a = new h();
    this.b = -1L;
    this.c = -1L;
    this.d = new ArrayList();
  }
  
  public c(a parama)
  {
    this.b = parama.m;
    this.c = parama.a;
    this.a = parama.i.a;
    this.d = new ArrayList();
    int i = 0;
    while (i < parama.f)
    {
      if (parama.p(i)) {
        this.d.add(new g(parama.h(i), parama.k(i), parama.h[i]));
      }
      i += 1;
    }
    this.d.trimToSize();
  }
  
  static int a(a parama)
  {
    int i = 0;
    int k;
    for (int j = 0; i < parama.f; j = k)
    {
      k = j;
      if (parama.p(i)) {
        k = j + 1;
      }
      i += 1;
    }
    return j;
  }
  
  public final int a()
  {
    int k = this.d.size();
    int i = this.a.a();
    int j = ar.a(this.b);
    int m = ar.a(this.c);
    j = ar.a(k) + (i + j + m);
    i = 0;
    while (i < k)
    {
      j += ((g)this.d.get(i)).a();
      i += 1;
    }
    return j;
  }
  
  public final void a(i parami, a parama)
  {
    parama.B();
    for (;;)
    {
      int j;
      try
      {
        parama.i = parami;
        parama.m = this.b;
        j = 0;
        if (j >= this.d.size()) {
          break label182;
        }
        parami = (g)this.d.get(j);
        int k = parama.a(parami.a, true, false);
        if ((k >= 0) && ((0x10000 & k) != 0))
        {
          k &= 0xFFFEFFFF;
          if (j.a(parami.c))
          {
            parama.b(k);
          }
          else
          {
            long l = parami.b;
            int i = parami.c;
            parama.b(k, l);
            parama.h[k] = i;
            parama.a(true);
          }
        }
      }
      finally
      {
        parama.C();
      }
      boolean bool = parama.a(new e(parami.a, parami.b, parami.c));
      if ((!e) && (!bool))
      {
        throw new AssertionError();
        label182:
        parama.e = 0L;
        parama.a(false);
        parama.C();
        return;
      }
      j += 1;
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.a.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("<lastFullLsn>");
    paramStringBuilder.append(com.sleepycat.b.p.j.h(this.b));
    paramStringBuilder.append("</lastFullLsn>");
    paramStringBuilder.append("<prevDeltaLsn>");
    paramStringBuilder.append(com.sleepycat.b.p.j.h(this.c));
    paramStringBuilder.append("</prevDeltaLsn>");
    paramStringBuilder.append("<deltas size=\"").append(this.d.size()).append("\"/>");
    int i = 0;
    while (i < this.d.size())
    {
      ((g)this.d.get(i)).a(paramStringBuilder, paramBoolean);
      i += 1;
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    this.a.a(paramByteBuffer);
    ar.c(paramByteBuffer, this.b);
    ar.c(paramByteBuffer, this.c);
    ar.b(paramByteBuffer, this.d.size());
    int i = 0;
    while (i < this.d.size())
    {
      ((g)this.d.get(i)).a(paramByteBuffer);
      i += 1;
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    boolean bool2 = true;
    int i = 0;
    this.a.a(paramByteBuffer, paramInt);
    if (paramInt < 6)
    {
      bool1 = true;
      this.b = ar.b(paramByteBuffer, bool1);
      if (paramInt >= 8) {
        this.c = ar.g(paramByteBuffer);
      }
      if (paramInt >= 6) {
        break label111;
      }
    }
    label111:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      int j = ar.a(paramByteBuffer, bool1);
      while (i < j)
      {
        g localg = new g();
        localg.a(paramByteBuffer, paramInt);
        this.d.add(localg);
        i += 1;
      }
      bool1 = false;
      break;
    }
    this.d.trimToSize();
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */