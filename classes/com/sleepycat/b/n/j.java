package com.sleepycat.b.n;

import com.sleepycat.b.p.w;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

public class j
  implements Cloneable
{
  private static boolean c = false;
  private static Map<j, k> d = Collections.synchronizedMap(new WeakHashMap());
  protected q a;
  protected o b;
  
  j(j paramj)
  {
    this.a = paramj.a;
    this.b = paramj.b;
    if (c) {
      d.put(this, d.get(paramj));
    }
  }
  
  public j(q paramq, o paramo)
  {
    this.a = paramq;
    this.b = paramo;
    if (c) {
      d.put(this, new k((byte)0));
    }
  }
  
  static void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  final void a(o paramo)
  {
    this.b = paramo;
  }
  
  public Object clone()
  {
    return super.clone();
  }
  
  public final q f()
  {
    return this.a;
  }
  
  final o g()
  {
    return this.b;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(500);
    localStringBuilder.append("<LockInfo locker=\"");
    localStringBuilder.append(this.a);
    localStringBuilder.append("\" type=\"");
    localStringBuilder.append(this.b);
    localStringBuilder.append("\"/>");
    if (c)
    {
      Exception localException = (Exception)d.get(this);
      if (localException != null)
      {
        localStringBuilder.append(" lock taken at: ");
        localStringBuilder.append(w.a(localException));
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */