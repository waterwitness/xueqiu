package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

public final class f
  implements u
{
  private final Executor a;
  
  public f(final Handler paramHandler)
  {
    this.a = new Executor()
    {
      public final void execute(Runnable paramAnonymousRunnable)
      {
        paramHandler.post(paramAnonymousRunnable);
      }
    };
  }
  
  public final void a(n<?> paramn, r<?> paramr)
  {
    a(paramn, paramr, null);
  }
  
  public final void a(n<?> paramn, r<?> paramr, Runnable paramRunnable)
  {
    paramn.i = true;
    paramn.a("post-response");
    this.a.execute(new g(this, paramn, paramr, paramRunnable));
  }
  
  public final void a(n<?> paramn, y paramy)
  {
    paramn.a("post-error");
    paramy = r.a(paramy);
    this.a.execute(new g(this, paramn, paramy, null));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */