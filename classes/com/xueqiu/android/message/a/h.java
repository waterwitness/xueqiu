package com.xueqiu.android.message.a;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.xueqiu.android.message.model.Message;

public final class h
  implements View.OnLongClickListener
{
  private Message b;
  
  public h(d paramd, Message paramMessage)
  {
    this.b = paramMessage;
  }
  
  public final boolean onLongClick(View paramView)
  {
    return this.a.a(paramView, this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */