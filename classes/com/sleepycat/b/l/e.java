package com.sleepycat.b.l;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

public class e
  implements at
{
  public ac a;
  public long b;
  public byte[] c;
  byte d;
  
  public e()
  {
    a(null, w.b, -1L, 0);
  }
  
  public e(ac paramac, byte[] paramArrayOfByte, long paramLong)
  {
    a(paramac, paramArrayOfByte, paramLong, 2);
  }
  
  public e(byte[] paramArrayOfByte, long paramLong, byte paramByte)
  {
    a(null, paramArrayOfByte, paramLong, paramByte | 0x2);
  }
  
  private void a(ac paramac, byte[] paramArrayOfByte, long paramLong, int paramInt)
  {
    this.a = paramac;
    this.c = paramArrayOfByte;
    this.b = paramLong;
    this.d = ((byte)paramInt);
  }
  
  private void d()
  {
    this.d = ((byte)(this.d | 0x2));
  }
  
  private boolean e()
  {
    return (this.d & 0x8) != 0;
  }
  
  private boolean f()
  {
    return (this.d & 0x1) != 0;
  }
  
  public final int a()
  {
    return ar.a(this.c) + ar.a(this.b) + 1;
  }
  
  public ac a(i parami, j paramj)
  {
    if (this.a == null) {
      if (this.b == -1L)
      {
        if (!f()) {
          throw aa.c(j.a("NULL_LSN without KnownDeleted", paramj, this.b, this.d));
        }
      }
      else {
        localad = parami.c;
      }
    }
    try
    {
      ac localac = (ac)localad.w.d(this.b);
      localac.a(parami, this.b);
      this.a = localac;
      if (paramj != null) {
        paramj.a(null, this.a);
      }
    }
    catch (FileNotFoundException parami)
    {
      while ((f()) || (e())) {}
      throw new aa(localad, com.sleepycat.b.c.ac.k, j.a(parami.toString(), paramj, this.b, this.d), parami);
    }
    catch (aa parami)
    {
      parami.a(j.a(null, paramj, this.b, this.d));
      throw parami;
    }
    catch (RuntimeException parami)
    {
      throw new aa(localad, com.sleepycat.b.c.ac.m, j.a(parami.toString(), paramj, this.b, this.d), parami);
    }
    return this.a;
  }
  
  public final String a(int paramInt)
  {
    boolean bool = true;
    StringBuilder localStringBuilder1 = new StringBuilder();
    label74:
    label107:
    StringBuilder localStringBuilder2;
    if (this.b == -1L)
    {
      localStringBuilder1.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder1.append("<lsn/>");
      localStringBuilder1.append('\n');
      if (this.c != null) {
        break label217;
      }
      localStringBuilder1.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder1.append("<key/>");
      localStringBuilder1.append('\n');
      if (this.a != null) {
        break label233;
      }
      localStringBuilder1.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder1.append("<target/>");
      localStringBuilder1.append('\n');
      localStringBuilder1.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder1.append("<knownDeleted val=\"");
      localStringBuilder1.append(f()).append("\"/>");
      localStringBuilder1.append("<pendingDeleted val=\"");
      localStringBuilder1.append(e()).append("\"/>");
      localStringBuilder2 = localStringBuilder1.append("<dirty val=\"");
      if ((this.d & 0x2) == 0) {
        break label250;
      }
    }
    for (;;)
    {
      localStringBuilder2.append(bool).append("\"/>");
      return localStringBuilder1.toString();
      localStringBuilder1.append(com.sleepycat.b.p.j.b(this.b, paramInt));
      break;
      label217:
      localStringBuilder1.append(w.a(this.c, paramInt));
      break label74;
      label233:
      localStringBuilder1.append(this.a.a(paramInt, true));
      break label107;
      label250:
      bool = false;
    }
  }
  
  public void a(long paramLong)
  {
    this.b = paramLong;
    d();
  }
  
  void a(i parami, long paramLong)
  {
    if ((paramLong == -1L) && (parami.g()))
    {
      d();
      return;
    }
    a(paramLong);
  }
  
  public void a(ac paramac)
  {
    this.a = paramac;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<ref kd=\"").append(f());
    paramStringBuilder.append("\" pd=\"").append(e());
    paramStringBuilder.append("\">");
    paramStringBuilder.append(w.a(this.c, 0));
    paramStringBuilder.append(com.sleepycat.b.p.j.g(this.b));
    paramStringBuilder.append("</ref>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.c);
    ar.c(paramByteBuffer, this.b);
    paramByteBuffer.put(this.d);
    this.d = ((byte)(this.d & 0xFFFFFFFD));
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.c = ar.c(paramByteBuffer, bool);
      this.b = ar.b(paramByteBuffer, bool);
      this.d = paramByteBuffer.get();
      this.d = ((byte)(this.d & 0xFFFFFFFD));
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public void c()
  {
    this.a = null;
  }
  
  public String toString()
  {
    return a(0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */