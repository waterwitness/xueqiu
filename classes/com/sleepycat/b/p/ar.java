package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class ar<T>
  implements Iterable<T>
{
  public Set<T> a;
  public T b;
  public T c;
  
  public ar() {}
  
  public ar(T paramT)
  {
    this.b = paramT;
  }
  
  public final boolean a(T paramT)
  {
    boolean bool2 = true;
    if (paramT != null)
    {
      bool1 = true;
      aa.a(bool1);
      if (((this.b != null) || (this.c != null)) && (this.a != null)) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = true;; bool1 = false)
    {
      aa.a(bool1);
      if (this.a == null) {
        break label75;
      }
      bool1 = bool2;
      if (!this.a.remove(paramT)) {
        bool1 = false;
      }
      return bool1;
      bool1 = false;
      break;
    }
    label75:
    if ((this.b != null) && ((this.b == paramT) || (this.b.equals(paramT))))
    {
      this.b = null;
      return true;
    }
    if ((this.c != null) && ((this.c == paramT) || (this.c.equals(paramT))))
    {
      this.c = null;
      return true;
    }
    return false;
  }
  
  public final boolean b(T paramT)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramT != null)
    {
      bool1 = true;
      aa.a(bool1);
      if (((this.b != null) || (this.c != null)) && (this.a != null)) {
        break label64;
      }
      bool1 = true;
      label35:
      aa.a(bool1);
      if (this.a == null) {
        break label69;
      }
      bool1 = this.a.add(paramT);
    }
    label64:
    label69:
    label99:
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = false;
            break;
            bool1 = false;
            break label35;
            if (this.b == null) {
              break label99;
            }
            bool1 = bool2;
          } while (this.b == paramT);
          bool1 = bool2;
        } while (this.b.equals(paramT));
        if (this.c == null) {
          break label129;
        }
        bool1 = bool2;
      } while (this.c == paramT);
      bool1 = bool2;
    } while (this.c.equals(paramT));
    label129:
    if (this.b == null)
    {
      this.b = paramT;
      return true;
    }
    if (this.c == null)
    {
      this.c = paramT;
      return true;
    }
    this.a = new HashSet(5);
    this.a.add(this.b);
    this.a.add(this.c);
    this.b = null;
    this.c = null;
    return this.a.add(paramT);
  }
  
  public final Iterator<T> iterator()
  {
    if (((this.b == null) && (this.c == null)) || (this.a == null)) {}
    for (boolean bool = true;; bool = false)
    {
      aa.a(bool);
      if (this.a == null) {
        break;
      }
      return this.a.iterator();
    }
    return new as(this, this.b, this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */