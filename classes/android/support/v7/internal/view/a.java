package android.support.v7.internal.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v7.b.c;
import android.support.v7.b.d;
import android.support.v7.b.e;
import android.support.v7.b.k;

public final class a
{
  public Context a;
  
  private a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public static a a(Context paramContext)
  {
    return new a(paramContext);
  }
  
  public final boolean a()
  {
    return this.a.getResources().getBoolean(d.abc_action_bar_embed_tabs_pre_jb);
  }
  
  public final int b()
  {
    TypedArray localTypedArray = this.a.obtainStyledAttributes(null, k.ActionBar, c.actionBarStyle, 0);
    int j = localTypedArray.getLayoutDimension(0, 0);
    Resources localResources = this.a.getResources();
    int i = j;
    if (!a()) {
      i = Math.min(j, localResources.getDimensionPixelSize(e.abc_action_bar_stacked_max_height));
    }
    localTypedArray.recycle();
    return i;
  }
  
  public final int c()
  {
    return this.a.getResources().getDimensionPixelSize(e.abc_action_bar_stacked_tab_max_width);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */