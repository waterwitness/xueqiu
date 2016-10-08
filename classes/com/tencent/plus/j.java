package com.tencent.plus;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;

final class j
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  j(ImageActivity paramImageActivity) {}
  
  public final void onGlobalLayout()
  {
    this.a.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    ImageActivity.a(this.a, ImageActivity.a(this.a).a());
    ImageActivity.c(this.a).a(ImageActivity.b(this.a));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */