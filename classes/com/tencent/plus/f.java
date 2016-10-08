package com.tencent.plus;

import android.view.View;
import android.view.View.OnClickListener;

final class f
  implements View.OnClickListener
{
  f(ImageActivity paramImageActivity) {}
  
  public final void onClick(View paramView)
  {
    long l1 = System.currentTimeMillis();
    long l2 = ImageActivity.i(this.a);
    this.a.a("10656", l1 - l2);
    this.a.setResult(0);
    ImageActivity.j(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */