package com.google.a.a;

import java.io.IOException;

public abstract class e
{
  public abstract int a();
  
  public abstract e a(a parama);
  
  public final e a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      paramArrayOfByte = new a(paramArrayOfByte, paramInt);
      a(paramArrayOfByte);
      paramArrayOfByte.a(0);
      return this;
    }
    catch (d paramArrayOfByte)
    {
      throw paramArrayOfByte;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public abstract void a(b paramb);
  
  public final byte[] b()
  {
    byte[] arrayOfByte = new byte[a()];
    int i = arrayOfByte.length;
    try
    {
      b localb = new b(arrayOfByte, i);
      a(localb);
      if (localb.d == null)
      {
        if (localb.b - localb.c == 0) {
          return ???;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
      }
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).");
    }
    throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
    return localIOException;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */