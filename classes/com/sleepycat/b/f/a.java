package com.sleepycat.b.f;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.o;

public class a
{
  public final ai a;
  private final b c = new b();
  private String d;
  private final o e;
  private final o f;
  private final o g;
  private final o h;
  private final o i;
  private final o j;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public a(String paramString)
  {
    this.d = paramString;
    this.a = new ai("Latch", "Latch characteristics");
    this.e = new o(this.a, c.a);
    this.f = new o(this.a, c.b);
    this.g = new o(this.a, c.c);
    this.h = new o(this.a, c.d);
    this.i = new o(this.a, c.e);
    this.j = new o(this.a, c.f);
  }
  
  public final void a()
  {
    try
    {
      if (this.c.isHeldByCurrentThread())
      {
        this.f.f();
        throw aa.c("Latch already held: " + this.d);
      }
    }
    finally
    {
      if (!b) {
        ad.H();
      }
    }
    if (this.c.isLocked()) {
      this.g.f();
    }
    for (;;)
    {
      this.c.lock();
      if (!b) {
        d.a.a(this);
      }
      if (!b) {
        ad.H();
      }
      return;
      this.e.f();
    }
  }
  
  public final boolean a(boolean paramBoolean)
  {
    try
    {
      if (!this.c.isHeldByCurrentThread()) {
        return true;
      }
      this.c.unlock();
      this.j.f();
      if (!b)
      {
        if (paramBoolean) {}
        for (paramBoolean = d.a.b(this); !paramBoolean; paramBoolean = true)
        {
          throw new AssertionError();
          d.a.b(this);
        }
      }
      return false;
    }
    catch (IllegalMonitorStateException localIllegalMonitorStateException) {}
    return true;
  }
  
  public final boolean b()
  {
    try
    {
      if (this.c.isHeldByCurrentThread())
      {
        this.f.f();
        throw aa.c("Latch already held: " + this.d);
      }
    }
    finally
    {
      if (!b) {
        ad.H();
      }
    }
    boolean bool = this.c.tryLock();
    if (bool)
    {
      if (!b) {
        d.a.a(this);
      }
      this.h.f();
    }
    for (;;)
    {
      if (!b) {
        ad.H();
      }
      return bool;
      this.i.f();
    }
  }
  
  public final void c()
  {
    if (a(true)) {
      throw aa.c("Latch not held: " + this.d);
    }
  }
  
  public String toString()
  {
    return this.c.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */