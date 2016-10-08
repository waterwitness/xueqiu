package com.sleepycat.b;

import com.sleepycat.b.b.d;
import com.sleepycat.b.c.m;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class ac
  implements Serializable, Cloneable
{
  boolean l = false;
  boolean m = false;
  protected long n;
  protected Properties o = new Properties();
  transient boolean p = true;
  transient boolean q = true;
  public transient ag r = null;
  public a s;
  public b t;
  
  static
  {
    if (!ac.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      u = bool;
      return;
    }
  }
  
  public final String a(String paramString)
  {
    return m.a(this.o, paramString);
  }
  
  public final void a(u paramu)
  {
    br.a(false, this.l, this.m, paramu);
    if (paramu == null)
    {
      this.o.remove(d.bq);
      return;
    }
    m.a(this.o, d.bq, paramu.toString(), this.q);
  }
  
  public final void a(Properties paramProperties)
  {
    Iterator localIterator = d.a.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      Object localObject = (com.sleepycat.b.b.b)d.a.get(str1);
      if ((!u) && (localObject == null)) {
        throw new AssertionError();
      }
      if ((!((com.sleepycat.b.b.b)localObject).c) && (!((com.sleepycat.b.b.b)localObject).d))
      {
        localObject = this.o.getProperty(str1);
        String str2 = paramProperties.getProperty(str1);
        if (localObject != null) {
          if (((String)localObject).equals(str2)) {
            break;
          }
        } else {
          for (;;)
          {
            throw new IllegalArgumentException(str1 + " is set to " + str2 + " in the config parameter which is incompatible with the value of " + (String)localObject + " in the underlying environment");
            if (str2 == null) {
              break;
            }
          }
        }
      }
    }
  }
  
  public final boolean b(String paramString)
  {
    return this.o.containsKey(paramString);
  }
  
  protected ac h()
  {
    try
    {
      ac localac = (ac)super.clone();
      localac.o = ((Properties)this.o.clone());
      return localac;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final u i()
  {
    return u.a(m.a(this.o, d.bq));
  }
  
  public final Properties j()
  {
    return this.o;
  }
  
  public String toString()
  {
    return "cacheSize=" + this.n + "\ntxnNoSync=" + this.l + "\ntxnWriteNoSync=" + this.m + "\n" + this.o.toString() + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */