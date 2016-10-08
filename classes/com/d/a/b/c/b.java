package com.d.a.b.c;

import android.graphics.Bitmap;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import com.d.a.b.a.g;

public final class b
  implements a
{
  private final int a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  
  public static void a(View paramView, int paramInt)
  {
    if (paramView != null)
    {
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setDuration(paramInt);
      localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
      paramView.startAnimation(localAlphaAnimation);
    }
  }
  
  public final void display(Bitmap paramBitmap, com.d.a.b.e.a parama, g paramg)
  {
    parama.a(paramBitmap);
    if (((this.b) && (paramg == g.a)) || ((this.c) && (paramg == g.b)) || ((this.d) && (paramg == g.c))) {
      a(parama.d(), this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */