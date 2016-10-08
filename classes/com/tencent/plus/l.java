package com.tencent.plus;

import android.widget.Button;
import android.widget.ProgressBar;

final class l
  implements Runnable
{
  l(h paramh) {}
  
  public final void run()
  {
    ImageActivity.e(this.a.a).setEnabled(true);
    ImageActivity.e(this.a.a).setTextColor(-1);
    ImageActivity.f(this.a.a).setEnabled(true);
    ImageActivity.f(this.a.a).setTextColor(-1);
    ImageActivity.f(this.a.a).setText("重试");
    ImageActivity.d(this.a.a).setVisibility(8);
    ImageActivity.a(this.a.a, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */