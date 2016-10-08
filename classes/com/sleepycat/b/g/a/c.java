package com.sleepycat.b.g.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.au;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

abstract class c<T extends at>
  implements m
{
  final Constructor<T> a;
  af b;
  
  c()
  {
    this.a = null;
  }
  
  c(Class<T> paramClass)
  {
    this.a = a(paramClass);
  }
  
  static <T extends at> T a(Constructor<T> paramConstructor)
  {
    try
    {
      paramConstructor = (at)paramConstructor.newInstance(null);
      return paramConstructor;
    }
    catch (IllegalAccessException paramConstructor)
    {
      throw aa.a(paramConstructor);
    }
    catch (InstantiationException paramConstructor)
    {
      throw aa.a(paramConstructor);
    }
    catch (IllegalArgumentException paramConstructor)
    {
      throw aa.a(paramConstructor);
    }
    catch (InvocationTargetException paramConstructor)
    {
      throw aa.a(paramConstructor);
    }
  }
  
  static <T extends at> Constructor<T> a(Class<T> paramClass)
  {
    try
    {
      paramClass = paramClass.getConstructor(null);
      return paramClass;
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
  
  public Object a(i parami)
  {
    return h();
  }
  
  public void a(ae paramae, long paramLong, au paramau) {}
  
  public void a(af paramaf)
  {
    this.b = paramaf;
  }
  
  public void c(i parami) {}
  
  public af d()
  {
    return this.b;
  }
  
  public int e()
  {
    return 0;
  }
  
  public boolean f()
  {
    return false;
  }
  
  public m g()
  {
    try
    {
      m localm = (m)super.clone();
      return localm;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw aa.a(localCloneNotSupportedException);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, true);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */