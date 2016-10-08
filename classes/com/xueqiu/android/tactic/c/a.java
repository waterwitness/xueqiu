package com.xueqiu.android.tactic.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.common.c;

public class a
  extends c
{
  private String a;
  private String b;
  private String c;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903501, paramViewGroup, false);
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    a("策略介绍");
    this.a = this.r.getString("tactic_des_detail");
    this.b = this.r.getString("tactic_des_content");
    this.c = this.r.getString("tactic_des_push_time");
    if ((this.a == null) || (this.b == null) || (this.c == null)) {
      g().finish();
    }
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    ((TextView)c(2131625607)).setText(this.a);
    ((TextView)c(2131624688)).setText(this.b);
    ((TextView)c(2131625608)).setText(this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */