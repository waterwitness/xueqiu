package com.xueqiu.android.trade.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;

public class d
  extends ListView
{
  public boolean a = false;
  public boolean b = true;
  private ViewGroup c;
  private TextView d;
  private View e;
  
  public d(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = new FrameLayout(paramContext);
    this.c = ((ViewGroup)LayoutInflater.from(paramContext).inflate(2130903580, null));
    this.d = ((TextView)this.c.findViewById(2131625835));
    this.e = this.c.findViewById(2131625836);
    this.d.setText(2131165710);
    paramAttributeSet.addView(this.c);
    addFooterView(paramAttributeSet);
    paramAttributeSet.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
  }
  
  public final void a(String paramString)
  {
    this.b = false;
    if (TextUtils.isEmpty(paramString))
    {
      this.c.setVisibility(8);
      return;
    }
    this.e.setVisibility(8);
    this.d.setText(paramString);
  }
  
  public final boolean a()
  {
    if ((!this.a) && (this.b) && (getCount() != 0))
    {
      this.a = true;
      this.d.setText(2131166201);
      this.e.setVisibility(0);
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */