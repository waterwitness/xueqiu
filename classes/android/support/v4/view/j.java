package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.View;

public abstract class j
{
  private final Context a;
  private k b;
  private l c;
  
  public final Context a()
  {
    return this.a;
  }
  
  public final void a(k paramk)
  {
    this.b = paramk;
  }
  
  public final void a(l paraml)
  {
    if ((this.c != null) && (paraml != null)) {
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    }
    this.c = paraml;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (this.b != null) {
      this.b.a(paramBoolean);
    }
  }
  
  public abstract View b();
  
  public final View c()
  {
    return b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */