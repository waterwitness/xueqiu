package com.sleepycat.c;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;

public final class b
  extends ObjectInputStream
{
  private final ClassLoader a;
  
  public b(InputStream paramInputStream, ClassLoader paramClassLoader)
  {
    super(paramInputStream);
    this.a = paramClassLoader;
  }
  
  protected final Class resolveClass(ObjectStreamClass paramObjectStreamClass)
  {
    Class localClass = null;
    if (this.a != null) {
      try
      {
        localClass = Class.forName(paramObjectStreamClass.getName(), false, this.a);
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException1) {}
    }
    Object localObject2 = Thread.currentThread().getContextClassLoader();
    Object localObject1;
    if (localObject2 != null)
    {
      try
      {
        localObject2 = Class.forName(paramObjectStreamClass.getName(), false, (ClassLoader)localObject2);
        return (Class)localObject2;
      }
      catch (ClassNotFoundException localClassNotFoundException2)
      {
        if (localClassNotFoundException1 != null) {
          break label75;
        }
      }
      localObject1 = localClassNotFoundException2;
    }
    label75:
    for (;;)
    {
      try
      {
        paramObjectStreamClass = super.resolveClass(paramObjectStreamClass);
        return paramObjectStreamClass;
      }
      catch (ClassNotFoundException paramObjectStreamClass)
      {
        if (localObject1 == null) {
          throw paramObjectStreamClass;
        }
        paramObjectStreamClass = (ObjectStreamClass)localObject1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */