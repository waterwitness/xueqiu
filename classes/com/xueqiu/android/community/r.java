package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class r
  implements View.OnClickListener
{
  String a;
  
  public r(p paramp, String paramString)
  {
    this.a = paramString;
  }
  
  public final void onClick(View paramView)
  {
    UpdateUserInfoActivity.j(this.b.c, this.a);
    this.b.c.k.cancel();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */