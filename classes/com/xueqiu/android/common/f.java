package com.xueqiu.android.common;

import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;

public final class f
  extends c
  implements View.OnClickListener
{
  TextView a;
  private View b;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.b != null) {
      return this.b;
    }
    this.b = paramLayoutInflater.inflate(2130903124, paramViewGroup, false);
    this.a = ((TextView)this.b.findViewById(2131624368));
    this.a.setOnClickListener(this);
    return this.b;
  }
  
  public final void onClick(View paramView)
  {
    if ((paramView.getId() == 2131624368) && (g() != null)) {
      g().finish();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */