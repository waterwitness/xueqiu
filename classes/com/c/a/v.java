package com.c.a;

import android.util.Log;
import com.c.b.b;
import com.c.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class v
  extends t
{
  m k;
  int l;
  private b m;
  
  public v(c paramc, int... paramVarArgs)
  {
    super(paramc, (byte)0);
    a(paramVarArgs);
    if ((paramc instanceof b)) {
      this.m = ((b)this.b);
    }
  }
  
  public v(String paramString, int... paramVarArgs)
  {
    super(paramString, (byte)0);
    a(paramVarArgs);
  }
  
  private v c()
  {
    v localv = (v)super.a();
    localv.k = ((m)localv.e);
    return localv;
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
  
  public final void a(int... paramVarArgs)
  {
    super.a(paramVarArgs);
    this.k = ((m)this.e);
  }
  
  final Object b()
  {
    return Integer.valueOf(this.l);
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
        this.b.a(paramObject, Integer.valueOf(this.l));
        return;
      }
    } while (this.c == null);
    try
    {
      this.i[0] = Integer.valueOf(this.l);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */