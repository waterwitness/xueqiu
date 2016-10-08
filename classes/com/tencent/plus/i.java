package com.tencent.plus;

import android.graphics.Color;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;

final class i
  implements View.OnClickListener
{
  i(ImageActivity paramImageActivity) {}
  
  public final void onClick(View paramView)
  {
    ImageActivity.d(this.a).setVisibility(0);
    ImageActivity.e(this.a).setEnabled(false);
    ImageActivity.e(this.a).setTextColor(Color.rgb(21, 21, 21));
    ImageActivity.f(this.a).setEnabled(false);
    ImageActivity.f(this.a).setTextColor(Color.rgb(36, 94, 134));
    new Thread(new k(this)).start();
    if (ImageActivity.h(this.a)) {
      this.a.a("10657", 0L);
    }
    do
    {
      return;
      long l1 = System.currentTimeMillis();
      long l2 = ImageActivity.i(this.a);
      this.a.a("10655", l1 - l2);
    } while (!ImageActivity.c(this.a).b);
    this.a.a("10654", 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */