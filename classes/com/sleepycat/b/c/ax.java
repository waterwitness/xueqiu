package com.sleepycat.b.c;

import com.sleepycat.b.g.a;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.l;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class ax
  extends a
{
  private byte a;
  private int b;
  private byte[] c = ar.a;
  private byte[] d = ar.a;
  private byte[][] e = null;
  
  public ax() {}
  
  ax(byte paramByte, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[][] paramArrayOfByte)
  {
    this.a = paramByte;
    this.b = paramInt;
    if (paramArrayOfByte1 != null) {
      this.c = paramArrayOfByte1;
    }
    if (paramArrayOfByte2 != null) {
      this.d = paramArrayOfByte2;
    }
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte;
    }
  }
  
  public final int a()
  {
    return ar.a(this.b) + 1 + ar.a(this.c) + ar.a(this.d) + bk.a(this.e);
  }
  
  public final l a(ad paramad)
  {
    l locall = new l();
    locall.d = true;
    locall.a(i.b(this.a));
    boolean bool;
    j localj;
    if ((i.c(this.a)) || (i.b(this.a)))
    {
      bool = true;
      locall.b(bool);
      locall.h = i.a(this.a);
      locall.j = true;
      locall.k = this.b;
      localj = new j(this.c, "Btree", paramad.J);
      if (!localj.a) {
        break label180;
      }
      locall.a(localj.b);
      label112:
      localj = new j(this.d, "Duplicate", paramad.J);
      if (!localj.a) {
        break label201;
      }
      locall.m = l.a(localj.b, "Duplicate");
    }
    for (locall.o = true;; locall.o = false)
    {
      locall.a(bk.a(null, this.e, paramad.J));
      return locall;
      bool = false;
      break;
      label180:
      locall.l = l.a(localj.c, "Btree");
      locall.n = false;
      break label112;
      label201:
      locall.m = l.a(localj.c, "Duplicate");
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    boolean bool = true;
    paramStringBuilder.append("<config ");
    i.a(paramStringBuilder, this.a);
    StringBuilder localStringBuilder = paramStringBuilder.append(" btcmpSet=\"");
    if (this.c != ar.a)
    {
      paramBoolean = true;
      localStringBuilder.append(paramBoolean);
      localStringBuilder = paramStringBuilder.append("\" dupcmpSet=\"");
      if (this.d == ar.a) {
        break label96;
      }
    }
    label96:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      localStringBuilder.append(paramBoolean).append("\"");
      bk.a(paramStringBuilder, this.e, null);
      paramStringBuilder.append(" />");
      return;
      paramBoolean = false;
      break;
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(this.a);
    ar.b(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.c);
    ar.a(paramByteBuffer, this.d);
    bk.a(paramByteBuffer, this.e);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.a = paramByteBuffer.get();
    this.b = ar.a(paramByteBuffer, false);
    if (paramInt < 8) {
      ar.a(paramByteBuffer, false);
    }
    this.c = ar.c(paramByteBuffer, false);
    this.d = ar.c(paramByteBuffer, false);
    if (paramInt < 8) {}
    for (paramByteBuffer = null;; paramByteBuffer = bk.a(paramByteBuffer))
    {
      this.e = paramByteBuffer;
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof ax)) {}
    do
    {
      return false;
      paramat = (ax)paramat;
    } while ((this.a != paramat.a) || (this.b != paramat.b) || (!Arrays.equals(this.c, paramat.c)) || (!Arrays.equals(this.d, paramat.d)));
    return true;
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */