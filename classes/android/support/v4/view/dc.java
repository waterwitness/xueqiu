package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import java.lang.ref.WeakReference;

public final class dc
{
  static final dl a = new dd();
  private WeakReference<View> b;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new dk();
      return;
    }
    if (i >= 19)
    {
      a = new dj();
      return;
    }
    if (i >= 18)
    {
      a = new dh();
      return;
    }
    if (i >= 16)
    {
      a = new di();
      return;
    }
    if (i >= 14)
    {
      a = new df();
      return;
    }
  }
  
  dc(View paramView)
  {
    this.b = new WeakReference(paramView);
  }
  
  public final dc a(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public final dc a(long paramLong)
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.a(localView, paramLong);
    }
    return this;
  }
  
  public final dc a(do paramdo)
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.a(this, localView, paramdo);
    }
    return this;
  }
  
  public final void a()
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.a(this, localView);
    }
  }
  
  public final dc b(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.b(this, localView, paramFloat);
    }
    return this;
  }
  
  public final void b()
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.b(this, localView);
    }
  }
  
  public final dc c(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null) {
      a.c(this, localView, paramFloat);
    }
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\dc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */