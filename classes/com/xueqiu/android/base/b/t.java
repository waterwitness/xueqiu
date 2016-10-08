package com.xueqiu.android.base.b;

import android.app.Activity;
import android.support.v4.a.i;
import com.android.volley.y;
import com.xueqiu.android.base.util.v;

public final class t<T>
  extends p<T>
{
  public rx.i.a<T> a = rx.i.a.k();
  
  @Deprecated
  public t() {}
  
  public t(q paramq)
  {
    super(paramq);
  }
  
  public final rx.a<T> a(Activity paramActivity)
  {
    return rx.a.a.a.a(paramActivity, this.a.c());
  }
  
  public final rx.a<T> a(i parami)
  {
    return rx.a.a.a.a(parami, this.a.c());
  }
  
  public final void a(y paramy)
  {
    try
    {
      this.a.a(paramy);
      return;
    }
    catch (Throwable paramy)
    {
      v.c("RxRequestListener", "", paramy);
    }
  }
  
  public final void a(T paramT)
  {
    this.a.a(paramT);
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */