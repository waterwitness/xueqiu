package com.xueqiu.android.stock.a;

import android.view.View;
import android.widget.TextView;

final class w
{
  public TextView a;
  public TextView b;
  public TextView c;
  public TextView d;
  public TextView e;
  
  public static w a(View paramView, boolean paramBoolean)
  {
    w localw = new w();
    localw.a = ((TextView)paramView.findViewById(2131624240));
    localw.b = ((TextView)paramView.findViewById(2131625585));
    localw.c = ((TextView)paramView.findViewById(2131625586));
    localw.d = ((TextView)paramView.findViewById(2131625587));
    if (paramBoolean) {
      localw.e = ((TextView)paramView.findViewById(2131625589));
    }
    return localw;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */