package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;

public final class e
{
  final short a;
  Constructor<? extends d> b;
  private final Class<? extends d> c;
  private final String d;
  
  public e(short paramShort, Class<? extends d> paramClass)
  {
    this.a = paramShort;
    this.c = paramClass;
    this.d = paramClass.getSimpleName();
    try
    {
      this.b = paramClass.getConstructor(new Class[] { paramClass.getEnclosingClass(), ByteBuffer.class });
      return;
    }
    catch (SecurityException paramClass)
    {
      throw aa.a(paramClass);
    }
    catch (NoSuchMethodException paramClass)
    {
      throw aa.a(paramClass);
    }
  }
  
  public final String toString()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */