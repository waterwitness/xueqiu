package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.h.s;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Logger;

public class u
{
  final Set<String> a;
  final aa b;
  final Logger c;
  private volatile boolean e;
  private s<v> f;
  
  static
  {
    if (!u.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  private s<v> a()
  {
    try
    {
      s locals = this.f;
      return locals;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(v paramv)
  {
    try
    {
      s locals = a();
      if (locals != null) {
        locals.add(paramv);
      }
      return;
    }
    finally {}
  }
  
  public final boolean a(Exception paramException)
  {
    try
    {
      if ((!d) && (paramException == null)) {
        throw new AssertionError();
      }
    }
    finally {}
    boolean bool = this.e;
    if (bool) {}
    for (bool = false;; bool = true)
    {
      return bool;
      s locals = a();
      if (locals != null)
      {
        locals.b.compareAndSet(null, paramException);
        locals.add(locals.a);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */