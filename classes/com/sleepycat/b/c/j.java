package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.c.a;
import java.util.Comparator;

final class j
{
  final boolean a;
  final Class<? extends Comparator<byte[]>> b;
  final Comparator<byte[]> c;
  
  public j(byte[] paramArrayOfByte, String paramString, ClassLoader paramClassLoader)
  {
    if (paramArrayOfByte.length == 0)
    {
      this.b = null;
      this.c = null;
      this.a = false;
      return;
    }
    paramArrayOfByte = i.a(paramArrayOfByte, paramString, paramClassLoader);
    if ((paramArrayOfByte instanceof String))
    {
      paramArrayOfByte = (String)paramArrayOfByte;
      try
      {
        this.b = a.a(paramArrayOfByte, paramClassLoader);
        this.c = i.a(this.b, paramString);
        this.a = true;
        return;
      }
      catch (ClassNotFoundException paramArrayOfByte)
      {
        throw aa.a(paramArrayOfByte);
      }
    }
    if ((paramArrayOfByte instanceof Comparator))
    {
      this.b = null;
      this.c = ((Comparator)paramArrayOfByte);
      this.a = false;
      return;
    }
    throw aa.c("Expected class name or Comparator instance, got: " + paramArrayOfByte.getClass().getName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */