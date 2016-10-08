package com.sleepycat.b.i.c;

import com.sleepycat.b.b.b;

public final class f<T extends Enum<T>>
  extends b
{
  public final Class<T> f;
  
  public f(String paramString, Enum<T> paramEnum, Class<T> paramClass)
  {
    super(paramString, paramEnum.name(), false, true);
    this.f = paramClass;
  }
  
  public final void a(String paramString)
  {
    if (this.f != null) {
      Enum.valueOf(this.f, paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */