package com.sleepycat.b;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;

public class aa
  extends bd
{
  public boolean a;
  private ac c;
  
  static
  {
    if (!aa.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  private aa(ac paramac, String paramString, Throwable paramThrowable)
  {
    this(null, paramac, paramString, paramThrowable);
  }
  
  public aa(ad paramad, ac paramac)
  {
    this(paramad, paramac, null, null);
  }
  
  public aa(ad paramad, ac paramac, String paramString)
  {
    this(paramad, paramac, paramString, null);
  }
  
  public aa(ad paramad, ac paramac, String paramString, Throwable paramThrowable)
  {
    super(localStringBuilder.toString(), paramThrowable);
    if (paramac.E)
    {
      if ((!b) && (paramad == null)) {
        throw new AssertionError();
      }
      paramad.a(this);
    }
    this.c = paramac;
  }
  
  public aa(ad paramad, ac paramac, Throwable paramThrowable)
  {
    this(paramad, paramac, null, paramThrowable);
  }
  
  private aa(String paramString)
  {
    super(paramString);
  }
  
  public aa(String paramString, aa paramaa)
  {
    super(paramString, paramaa);
    if ((!b) && (paramaa == null)) {
      throw new AssertionError();
    }
    this.c = paramaa.c;
  }
  
  public static aa a()
  {
    aa localaa = new aa(ac.f.toString());
    localaa.c = ac.f;
    return localaa;
  }
  
  public static aa a(ad paramad)
  {
    return new aa(paramad, ac.C, null, null);
  }
  
  public static aa a(ad paramad, ac paramac, String paramString, Throwable paramThrowable)
  {
    if ((paramThrowable instanceof aa))
    {
      paramad = (aa)paramThrowable;
      paramad.a(paramString);
      return paramad;
    }
    return new aa(paramad, paramac, paramString, paramThrowable);
  }
  
  public static aa a(ad paramad, Exception paramException)
  {
    return new aa(paramad, ac.A, null, paramException);
  }
  
  public static aa a(ad paramad, String paramString)
  {
    return new aa(paramad, ac.C, paramString, null);
  }
  
  public static aa a(ad paramad, String paramString, Exception paramException)
  {
    return new aa(paramad, ac.A, paramString, paramException);
  }
  
  public static aa a(Exception paramException)
  {
    return new aa(ac.z, null, paramException);
  }
  
  public static aa a(String paramString, Exception paramException)
  {
    return new aa(ac.z, paramString, paramException);
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw c(null);
    }
  }
  
  public static aa b()
  {
    return new aa(ac.B, null, null);
  }
  
  public static aa c(String paramString)
  {
    return new aa(ac.B, paramString, null);
  }
  
  public aa b(String paramString)
  {
    if ((!b) && (aa.class != getClass())) {
      throw new AssertionError("Missing overriding " + getClass().getName() + ".wrapSelf() method");
    }
    return new aa(paramString, this);
  }
  
  public String getMessage()
  {
    if ((this.c == ac.f) || (!this.a)) {
      return super.getMessage();
    }
    return "Environment invalid because of previous exception: " + super.getMessage();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */