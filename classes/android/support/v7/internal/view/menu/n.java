package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public final class n
  implements ad, AdapterView.OnItemClickListener
{
  Context a;
  public LayoutInflater b;
  p c;
  public ExpandedMenuView d;
  int e;
  int f;
  public ae g;
  public o h;
  private int i;
  
  public n(int paramInt1, int paramInt2)
  {
    this.f = paramInt1;
    this.e = paramInt2;
  }
  
  public final ListAdapter a()
  {
    if (this.h == null) {
      this.h = new o(this);
    }
    return this.h;
  }
  
  public final void a(Context paramContext, p paramp)
  {
    if (this.e != 0)
    {
      this.a = new ContextThemeWrapper(paramContext, this.e);
      this.b = LayoutInflater.from(this.a);
    }
    for (;;)
    {
      this.c = paramp;
      if (this.h != null) {
        this.h.notifyDataSetChanged();
      }
      return;
      if (this.a != null)
      {
        this.a = paramContext;
        if (this.b == null) {
          this.b = LayoutInflater.from(this.a);
        }
      }
    }
  }
  
  public final void a(p paramp, boolean paramBoolean)
  {
    if (this.g != null) {
      this.g.a(paramp, paramBoolean);
    }
  }
  
  public final boolean a(aj paramaj)
  {
    if (!paramaj.hasVisibleItems()) {
      return false;
    }
    new s(paramaj).a();
    if (this.g != null) {
      this.g.b(paramaj);
    }
    return true;
  }
  
  public final void b(boolean paramBoolean)
  {
    if (this.h != null) {
      this.h.notifyDataSetChanged();
    }
  }
  
  public final boolean b(t paramt)
  {
    return false;
  }
  
  public final boolean c(t paramt)
  {
    return false;
  }
  
  public final boolean h()
  {
    return false;
  }
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.c.a(this.h.a(paramInt), 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */