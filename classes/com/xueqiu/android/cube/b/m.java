package com.xueqiu.android.cube.b;

import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public final class m
  extends i
{
  View a;
  private String b;
  private int c;
  private String d;
  private ImageView e;
  private TextView f;
  private TextView g;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903318, paramViewGroup, false);
    return this.a;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.b = this.r.getString("extra_message");
    this.d = this.r.getString("extra_title");
    this.c = this.r.getInt("extra_url");
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.a == null)
    {
      g().finish();
      return;
    }
    this.e = ((ImageView)this.a.findViewById(2131625049));
    this.f = ((TextView)this.a.findViewById(2131625050));
    this.g = ((TextView)this.a.findViewById(2131624997));
    if (this.b != null) {
      this.f.setText(this.b);
    }
    if (this.d != null) {
      this.g.setText(this.d);
    }
    paramView = this.e;
    int i;
    switch (this.c)
    {
    default: 
      i = 2130838596;
    }
    for (;;)
    {
      paramView.setImageResource(i);
      return;
      i = 2130838596;
      continue;
      i = 2130838598;
      continue;
      i = 2130838597;
      continue;
      i = 2130838595;
      continue;
      i = 2130838594;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */