package com.sleepycat.b.i;

import com.sleepycat.b.b.b;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.an;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;

public class x
  implements Serializable, Cloneable
{
  protected Properties b;
  public transient boolean c = true;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      b localb = an.a;
      return;
    }
  }
  
  public x()
  {
    this.b = new Properties();
  }
  
  x(Properties paramProperties, boolean paramBoolean)
  {
    this.c = paramBoolean;
    a(paramProperties);
    this.b = new Properties();
    this.b.putAll(paramProperties);
  }
  
  private void a(Properties paramProperties)
  {
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      b localb = (b)d.a.get(str);
      if (localb == null) {
        throw new IllegalArgumentException(str + " is not a valid JE environment configuration");
      }
      if (this.c) {
        localb.a(paramProperties.getProperty(str));
      }
    }
  }
  
  public final String a(String paramString)
  {
    return m.a(this.b, paramString);
  }
  
  protected Object clone()
  {
    x localx = (x)super.clone();
    localx.b = ((Properties)this.b.clone());
    return localx;
  }
  
  public final Properties e()
  {
    return this.b;
  }
  
  public String toString()
  {
    return this.b.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */