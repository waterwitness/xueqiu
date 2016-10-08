package com.c.a;

import android.util.Log;
import com.c.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class t
  implements Cloneable
{
  static final w f = new l();
  static final w g = new j();
  private static Class[] l = { Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class };
  private static Class[] m = { Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class };
  private static Class[] n = { Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class };
  private static final HashMap<Class, HashMap<String, Method>> o = new HashMap();
  private static final HashMap<Class, HashMap<String, Method>> p = new HashMap();
  String a;
  protected c b;
  Method c = null;
  Class d;
  q e = null;
  final ReentrantReadWriteLock h = new ReentrantReadWriteLock();
  final Object[] i = new Object[1];
  w j;
  private Method k = null;
  private Object q;
  
  private t(c paramc)
  {
    this.b = paramc;
    if (paramc != null) {
      this.a = paramc.a;
    }
  }
  
  private t(String paramString)
  {
    this.a = paramString;
  }
  
  public static t a(c<?, Float> paramc, float... paramVarArgs)
  {
    return new u(paramc, paramVarArgs);
  }
  
  public static t a(c<?, Integer> paramc, int... paramVarArgs)
  {
    return new v(paramc, paramVarArgs);
  }
  
  public static t a(String paramString, float... paramVarArgs)
  {
    return new u(paramString, paramVarArgs);
  }
  
  public static t a(String paramString, int... paramVarArgs)
  {
    return new v(paramString, paramVarArgs);
  }
  
  private Method a(Class paramClass1, String paramString, Class paramClass2)
  {
    Method localMethod1 = null;
    Object localObject = this.a;
    String str = paramString;
    if (localObject != null) {
      if (((String)localObject).length() != 0) {
        break label42;
      }
    }
    label42:
    char c1;
    for (str = paramString;; str = paramString + c1 + str)
    {
      if (paramClass2 != null) {
        break label143;
      }
      try
      {
        paramString = paramClass1.getMethod(str, null);
        return paramString;
      }
      catch (NoSuchMethodException paramString) {}
      c1 = Character.toUpperCase(((String)localObject).charAt(0));
      str = ((String)localObject).substring(1);
    }
    try
    {
      paramClass1 = paramClass1.getDeclaredMethod(str, null);
      try
      {
        paramClass1.setAccessible(true);
        return paramClass1;
      }
      catch (NoSuchMethodException paramClass2) {}
    }
    catch (NoSuchMethodException paramClass1)
    {
      for (;;)
      {
        label143:
        int i2;
        int i1;
        Class localClass;
        label313:
        paramClass1 = null;
      }
    }
    Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.a + ": " + paramString);
    return paramClass1;
    localObject = new Class[1];
    if (this.d.equals(Float.class))
    {
      paramString = l;
      i2 = paramString.length;
      i1 = 0;
      paramClass2 = localMethod1;
    }
    for (;;)
    {
      if (i1 >= i2) {
        break label313;
      }
      localClass = paramString[i1];
      localObject[0] = localClass;
      try
      {
        localMethod1 = paramClass1.getMethod(str, (Class[])localObject);
        paramClass2 = localMethod1;
        this.d = localClass;
        return localMethod1;
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
        try
        {
          Method localMethod2 = paramClass1.getDeclaredMethod(str, (Class[])localObject);
          paramClass2 = localMethod2;
          localMethod2.setAccessible(true);
          paramClass2 = localMethod2;
          this.d = localClass;
          return localMethod2;
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          i1 += 1;
        }
      }
      if (this.d.equals(Integer.class))
      {
        paramString = m;
        break;
      }
      if (this.d.equals(Double.class))
      {
        paramString = n;
        break;
      }
      paramString = new Class[1];
      paramString[0] = this.d;
      break;
    }
    Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.a + " with value type " + this.d);
    return paramClass2;
  }
  
  private Method a(Class paramClass1, HashMap<Class, HashMap<String, Method>> paramHashMap, String paramString, Class paramClass2)
  {
    Method localMethod1 = null;
    try
    {
      this.h.writeLock().lock();
      HashMap localHashMap = (HashMap)paramHashMap.get(paramClass1);
      if (localHashMap != null) {
        localMethod1 = (Method)localHashMap.get(this.a);
      }
      Method localMethod2 = localMethod1;
      if (localMethod1 == null)
      {
        localMethod2 = a(paramClass1, paramString, paramClass2);
        paramString = localHashMap;
        if (localHashMap == null)
        {
          paramString = new HashMap();
          paramHashMap.put(paramClass1, paramString);
        }
        paramString.put(this.a, localMethod2);
      }
      return localMethod2;
    }
    finally
    {
      this.h.writeLock().unlock();
    }
  }
  
  public t a()
  {
    try
    {
      t localt = (t)super.clone();
      localt.a = this.a;
      localt.b = this.b;
      localt.e = this.e.a();
      localt.j = this.j;
      return localt;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  void a(float paramFloat)
  {
    this.q = this.e.a(paramFloat);
  }
  
  public final void a(c paramc)
  {
    this.b = paramc;
  }
  
  void a(Class paramClass)
  {
    this.c = a(paramClass, o, "set", this.d);
  }
  
  final void a(Object paramObject)
  {
    Object localObject;
    if (this.b != null)
    {
      try
      {
        this.b.a(paramObject);
        Iterator localIterator = this.e.e.iterator();
        while (localIterator.hasNext())
        {
          localObject = (n)localIterator.next();
          if (!((n)localObject).d) {
            ((n)localObject).a(this.b.a(paramObject));
          }
        }
        localClass = paramObject.getClass();
      }
      catch (ClassCastException localClassCastException)
      {
        Log.e("PropertyValuesHolder", "No such property (" + this.b.a + ") on target object " + paramObject + ". Trying reflection instead");
        this.b = null;
      }
    }
    else
    {
      Class localClass;
      if (this.c == null) {
        a(localClass);
      }
      localObject = this.e.e.iterator();
      while (((Iterator)localObject).hasNext())
      {
        n localn = (n)((Iterator)localObject).next();
        if (!localn.d)
        {
          if (this.k == null) {
            this.k = a(localClass, p, "get", null);
          }
          try
          {
            localn.a(this.k.invoke(paramObject, new Object[0]));
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
          }
        }
      }
    }
  }
  
  public void a(float... paramVarArgs)
  {
    int i1 = 1;
    this.d = Float.TYPE;
    int i2 = paramVarArgs.length;
    o[] arrayOfo = new o[Math.max(i2, 2)];
    if (i2 == 1)
    {
      arrayOfo[0] = ((o)new o());
      arrayOfo[1] = ((o)n.a(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      this.e = new k(arrayOfo);
      return;
      arrayOfo[0] = ((o)n.a(0.0F, paramVarArgs[0]));
      while (i1 < i2)
      {
        arrayOfo[i1] = ((o)n.a(i1 / (i2 - 1), paramVarArgs[i1]));
        i1 += 1;
      }
    }
  }
  
  public void a(int... paramVarArgs)
  {
    int i1 = 1;
    this.d = Integer.TYPE;
    int i2 = paramVarArgs.length;
    p[] arrayOfp = new p[Math.max(i2, 2)];
    if (i2 == 1)
    {
      arrayOfp[0] = ((p)new p());
      arrayOfp[1] = ((p)n.a(1.0F, paramVarArgs[0]));
    }
    for (;;)
    {
      this.e = new m(arrayOfp);
      return;
      arrayOfp[0] = ((p)n.a(0.0F, paramVarArgs[0]));
      while (i1 < i2)
      {
        arrayOfp[i1] = ((p)n.a(i1 / (i2 - 1), paramVarArgs[i1]));
        i1 += 1;
      }
    }
  }
  
  Object b()
  {
    return this.q;
  }
  
  void b(Object paramObject)
  {
    if (this.b != null) {
      this.b.a(paramObject, b());
    }
    if (this.c != null) {}
    try
    {
      this.i[0] = b();
      this.c.invoke(paramObject, this.i);
      return;
    }
    catch (InvocationTargetException paramObject)
    {
      Log.e("PropertyValuesHolder", ((InvocationTargetException)paramObject).toString());
      return;
    }
    catch (IllegalAccessException paramObject)
    {
      Log.e("PropertyValuesHolder", ((IllegalAccessException)paramObject).toString());
    }
  }
  
  public String toString()
  {
    return this.a + ": " + this.e.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */