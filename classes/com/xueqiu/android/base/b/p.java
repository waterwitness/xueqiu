package com.xueqiu.android.base.b;

import com.android.volley.s;
import com.android.volley.t;
import com.android.volley.y;
import java.lang.ref.WeakReference;

public abstract class p<T>
  implements t<T>
{
  private WeakReference<q> a;
  final s f;
  
  @Deprecated
  public p()
  {
    this.f = new s()
    {
      public final void a(y paramAnonymousy)
      {
        p.this.a(paramAnonymousy);
      }
    };
  }
  
  public p(q paramq)
  {
    this.f = new s()
    {
      public final void a(y paramAnonymousy)
      {
        p.this.a(paramAnonymousy);
      }
    };
    this.a = new WeakReference(paramq);
  }
  
  public abstract void a(y paramy);
  
  public final boolean a()
  {
    if (this.a == null) {
      return true;
    }
    return (this.a.get() != null) && (((q)this.a.get()).z_());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */