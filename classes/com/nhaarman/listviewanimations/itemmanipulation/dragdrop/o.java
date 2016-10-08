package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.support.annotation.NonNull;
import android.view.View;

public final class o
  implements k
{
  private final int a = 2131625545;
  
  public final boolean a(@NonNull View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = false;
    paramView = paramView.findViewById(this.a);
    boolean bool1 = bool2;
    int i;
    if (paramView != null)
    {
      if ((paramView.getLeft() > paramFloat1) || (paramView.getRight() < paramFloat1)) {
        break label90;
      }
      i = 1;
      if ((paramView.getTop() > paramFloat2) || (paramView.getBottom() < paramFloat2)) {
        break label96;
      }
    }
    label90:
    label96:
    for (int j = 1;; j = 0)
    {
      bool1 = bool2;
      if (i != 0)
      {
        bool1 = bool2;
        if (j != 0) {
          bool1 = true;
        }
      }
      return bool1;
      i = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */