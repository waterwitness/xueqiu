package com.sleepycat.a.a;

import java.util.HashMap;
import java.util.Map;

public abstract class k<E>
  extends j<E>
{
  private static final Map<Class, k> primitives = new HashMap();
  
  static
  {
    addPrimitive(String.class, String.class, new i());
    addPrimitive(Character.class, Character.TYPE, new c());
    addPrimitive(Boolean.class, Boolean.TYPE, new a());
    addPrimitive(Byte.class, Byte.TYPE, new b());
    addPrimitive(Short.class, Short.TYPE, new h());
    addPrimitive(Integer.class, Integer.TYPE, new f());
    addPrimitive(Long.class, Long.TYPE, new g());
    addPrimitive(Float.class, Float.TYPE, new e());
    addPrimitive(Double.class, Double.TYPE, new d());
  }
  
  private static void addPrimitive(Class paramClass1, Class paramClass2, k paramk)
  {
    primitives.put(paramClass1, paramk);
    primitives.put(paramClass2, paramk);
  }
  
  public static <T> k<T> getPrimitiveBinding(Class<T> paramClass)
  {
    return (k)primitives.get(paramClass);
  }
  
  public abstract E entryToObject(l paraml);
  
  public E entryToObject(com.sleepycat.b.m paramm)
  {
    return (E)entryToObject(entryToInput(paramm));
  }
  
  public abstract void objectToEntry(E paramE, m paramm);
  
  public void objectToEntry(E paramE, com.sleepycat.b.m paramm)
  {
    m localm = getTupleOutput(paramE);
    objectToEntry(paramE, localm);
    outputToEntry(localm, paramm);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\a\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */