package com.squareup.okhttp.internal.spdy;

import c.d;
import c.g;
import java.util.List;
import java.util.Map;

final class Hpack$Writer
{
  private final d out;
  
  Hpack$Writer(d paramd)
  {
    this.out = paramd;
  }
  
  final void writeByteString(g paramg)
  {
    writeInt(paramg.c.length, 127, 0);
    this.out.a(paramg);
  }
  
  final void writeHeaders(List<Header> paramList)
  {
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      g localg = ((Header)paramList.get(i)).name.c();
      Integer localInteger = (Integer)Hpack.access$200().get(localg);
      if (localInteger != null)
      {
        writeInt(localInteger.intValue() + 1, 15, 0);
        writeByteString(((Header)paramList.get(i)).value);
      }
      for (;;)
      {
        i += 1;
        break;
        this.out.a(0);
        writeByteString(localg);
        writeByteString(((Header)paramList.get(i)).value);
      }
    }
  }
  
  final void writeInt(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
    {
      this.out.a(paramInt3 | paramInt1);
      return;
    }
    this.out.a(paramInt3 | paramInt2);
    paramInt1 -= paramInt2;
    while (paramInt1 >= 128)
    {
      this.out.a(paramInt1 & 0x7F | 0x80);
      paramInt1 >>>= 7;
    }
    this.out.a(paramInt1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Hpack$Writer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */