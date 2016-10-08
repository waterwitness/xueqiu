package com.sleepycat.b;

import com.sleepycat.b.c.i;
import com.sleepycat.b.m.d;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class l
  implements Cloneable
{
  public static final l a = new l();
  public boolean b = false;
  public boolean c = false;
  public boolean d = false;
  public boolean e = false;
  public boolean f = false;
  public boolean g = false;
  public boolean h = false;
  public boolean i = false;
  public boolean j = true;
  public int k;
  public Comparator<byte[]> l = null;
  public Comparator<byte[]> m = null;
  public boolean n = false;
  public boolean o = false;
  boolean p = false;
  boolean q = false;
  boolean r = false;
  public a s = null;
  public b t = null;
  be u = null;
  public List<d> v = new LinkedList();
  boolean w;
  
  public static Comparator<byte[]> a(Class<? extends Comparator<byte[]>> paramClass, String paramString)
  {
    if (paramClass == null) {
      return null;
    }
    if (!Comparator.class.isAssignableFrom(paramClass)) {
      throw new IllegalArgumentException(paramClass.getName() + " is is not valid as a " + paramString + " comparator because it does not  implement java.util.Comparator.");
    }
    try
    {
      paramClass = i.a(paramClass, paramString);
      return paramClass;
    }
    catch (n paramClass)
    {
      throw new IllegalArgumentException(paramString + " comparator is not valid. Perhaps you have not implemented a zero-parameter constructor for the comparator or the comparator class cannot be found.", paramClass);
    }
  }
  
  public static Comparator<byte[]> a(Comparator<byte[]> paramComparator, String paramString)
  {
    if (paramComparator == null) {
      return null;
    }
    try
    {
      i.a(paramComparator, false, paramString);
      return paramComparator;
    }
    catch (n paramComparator)
    {
      throw new IllegalArgumentException(paramString + " comparator is not valid.", paramComparator);
    }
  }
  
  static boolean b(List<d> paramList)
  {
    boolean bool = paramList.get(0) instanceof com.sleepycat.b.m.b;
    HashSet localHashSet = new HashSet();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (!localHashSet.add(locald.a())) {
        throw new IllegalArgumentException("Duplicate trigger name:" + locald.a());
      }
      if (bool != locald instanceof com.sleepycat.b.m.b) {
        throw new IllegalArgumentException("Conflicting trigger types in list:" + paramList);
      }
    }
    return bool;
  }
  
  public l a()
  {
    try
    {
      l locall = (l)super.clone();
      return locall;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final l a(Class<? extends Comparator<byte[]>> paramClass)
  {
    this.l = a(paramClass, "Btree");
    this.n = true;
    return this;
  }
  
  public l a(List<d> paramList)
  {
    this.v = paramList;
    if ((paramList == null) || (paramList.size() == 0)) {
      return this;
    }
    b(paramList);
    return this;
  }
  
  public final l a(boolean paramBoolean)
  {
    this.f = paramBoolean;
    if (paramBoolean) {
      b(true);
    }
    return this;
  }
  
  public final void b(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.f)) {
      throw new IllegalStateException("Key prefixing is mandatory for databases with duplicates");
    }
    this.i = paramBoolean;
  }
  
  public String toString()
  {
    return "allowCreate=" + this.b + "\nexclusiveCreate=" + this.c + "\ntransactional=" + this.d + "\nreadOnly=" + this.e + "\nsortedDuplicates=" + this.f + "\ndeferredWrite=" + this.g + "\ntemporary=" + this.h + "\nkeyPrefixing=" + this.i + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */