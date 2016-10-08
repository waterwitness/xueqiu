package com.xueqiu.android.message.a;

import android.content.Intent;
import android.support.v4.content.r;
import android.view.View;
import android.view.View.OnClickListener;

public final class g
  implements View.OnClickListener
{
  protected g(d paramd) {}
  
  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("com.xueqiu.android.chat.hideKeyboard");
    r.a(paramView.getContext()).a(localIntent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */