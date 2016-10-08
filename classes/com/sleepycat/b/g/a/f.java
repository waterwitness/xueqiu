package com.sleepycat.b.g.a;

import com.sleepycat.b.g.a;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.ax;
import java.nio.ByteBuffer;

public enum f
  implements ax
{
  private byte g;
  
  private f(byte paramByte)
  {
    this.g = paramByte;
  }
  
  public static boolean a(f paramf)
  {
    return (paramf == b) || (paramf == f);
  }
  
  public static f b(ByteBuffer paramByteBuffer)
  {
    switch (paramByteBuffer.get())
    {
    default: 
      return a;
    case 1: 
      return b;
    case 2: 
      return c;
    case 3: 
      return d;
    case 4: 
      return e;
    }
    return f;
  }
  
  public final int a()
  {
    return 1;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<DbOp val=\"").append(this).append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.put(this.g);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.g = paramByteBuffer.get();
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof f)) {}
    while (this.g != ((f)paramat).g) {
      return false;
    }
    return true;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    a.a(this, paramByteBuffer, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */