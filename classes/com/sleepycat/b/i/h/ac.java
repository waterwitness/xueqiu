package com.sleepycat.b.i.h;

import java.nio.ByteBuffer;

public enum ac
{
  private ac() {}
  
  static ac a(int paramInt)
  {
    if (paramInt < values().length) {
      return values()[paramInt];
    }
    return null;
  }
  
  final ByteBuffer a()
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(1);
    localByteBuffer.put((byte)ordinal());
    localByteBuffer.flip();
    return localByteBuffer;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */