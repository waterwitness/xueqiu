package com.nhaarman.listviewanimations.itemmanipulation.b;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.c.a.x;
import com.c.a.z;

final class d
  implements z
{
  @NonNull
  private final View a;
  
  d(@NonNull View paramView)
  {
    this.a = paramView;
  }
  
  public final void a(@NonNull x paramx)
  {
    ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
    localLayoutParams.height = ((Integer)paramx.e()).intValue();
    this.a.setLayoutParams(localLayoutParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */