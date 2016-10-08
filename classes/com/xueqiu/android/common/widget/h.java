package com.xueqiu.android.common.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

final class h
  extends ArrayAdapter<String>
{
  private LayoutInflater b;
  
  public h(EmailAutoTextView paramEmailAutoTextView, Context paramContext, String[] paramArrayOfString)
  {
    super(paramContext, 2130903448, paramArrayOfString);
    this.b = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    String str = String.format("%s%s", new Object[] { this.a.getText().toString().trim().split("@")[0], getItem(paramInt) });
    View localView = paramView;
    if (paramView == null) {
      localView = this.b.inflate(2130903448, paramViewGroup, false);
    }
    ((TextView)localView.findViewById(2131624240)).setText(str);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */