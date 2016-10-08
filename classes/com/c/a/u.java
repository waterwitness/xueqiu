package com.c.a;

import android.util.Log;
import com.c.b.a;
import com.c.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class u
  extends t
{
  k k;
  float l;
  private a m;
  
  public u(c paramc, float... paramVarArgs)
  {
    super(paramc, (byte)0);
    a(paramVarArgs);
    if ((paramc instanceof a)) {
      this.m = ((a)this.b);
    }
  }
  
  public u(String paramString, float... paramVarArgs)
  {
    super(paramString, (byte)0);
    a(paramVarArgs);
  }
  
  private u c()
  {
    u localu = (u)super.a();
    localu.k = ((k)localu.e);
    return localu;
  }
  
  final void a(float paramFloat)
  {
    this.l = this.k.b(paramFloat);
  }
  
  final void a(Class paramClass)
  {
    if (this.b != null) {
      return;
    }
    super.a(paramClass);
  }
  
  public final void a(float... paramVarArgs)
  {
    super.a(paramVarArgs);
    this.k = ((k)this.e);
  }
  
  final Object b()
  {
    return Float.valueOf(this.l);
  }
  
  final void b(Object paramObject)
  {
    if (this.m != null) {
      this.m.a(paramObject, this.l);
    }
    do
    {
      return;
      if (this.b != null)
      {
        this.b.a(paramObject, Float.valueOf(this.l));
        return;
      }
    } while (this.c == null);
    try
    {
      this.i[0] = Float.valueOf(this.l);
      this.c.invoke(paramObject, this.i);
      return;
    }
    catch (InvocationTargetException paramObject)
    {
      Log.e("PropertyValuesHolder", ((InvocationTargetException)paramObject).toString());
      return;
    }
    catch (IllegalAccessException paramObject)
    {
      Log.e("PropertyValuesHolder", ((IllegalAccessException)paramObject).toString());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */