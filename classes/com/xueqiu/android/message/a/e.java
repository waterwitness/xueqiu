package com.xueqiu.android.message.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.common.q;
import com.xueqiu.android.message.ChatActivity;
import org.json.JSONObject;

public final class e
{
  View a;
  TextView b;
  ImageView c;
  TextView d;
  ProgressBar e;
  com.d.a.b.d f;
  
  public e(d paramd, View paramView)
  {
    paramd = n.a();
    paramd.b = 2130838154;
    paramd.c = 2130838154;
    paramd.a = 2130838154;
    this.f = paramd.b();
    this.a = paramView;
    this.b = ((TextView)paramView.findViewById(2131624097));
    this.c = ((ImageView)paramView.findViewById(2131624093));
    this.d = ((TextView)paramView.findViewById(2131624688));
    this.e = ((ProgressBar)paramView.findViewById(2131624311));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */