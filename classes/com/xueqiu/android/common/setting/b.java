package com.xueqiu.android.common.setting;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

final class b
  extends com.xueqiu.android.view.wheel.a.b
{
  String[] a = null;
  
  protected b(SettingsPushActivity paramSettingsPushActivity, Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public final int a()
  {
    return this.a.length;
  }
  
  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return super.a(paramInt, paramView, paramViewGroup);
  }
  
  protected final CharSequence a(int paramInt)
  {
    return this.a[paramInt];
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\setting\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */