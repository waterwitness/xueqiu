package com.nhaarman.listviewanimations.itemmanipulation.a;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.c.a.x;
import com.c.a.z;

final class c
  implements z
{
  private final View a;
  
  c(View paramView)
  {
    this.a = paramView;
  }
  
  public final void a(x paramx)
  {
    ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
    localLayoutParams.height = ((Integer)paramx.e()).intValue();
    this.a.setLayoutParams(localLayoutParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */