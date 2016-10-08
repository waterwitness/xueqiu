package com.xueqiu.android.common.setting;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import com.xueqiu.android.base.r;
import com.xueqiu.android.common.c;

public class a
  extends c
{
  private SharedPreferences a;
  private CheckBox b;
  private CheckBox c;
  private EditText d;
  private EditText e;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903358, paramViewGroup, false);
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    d(2131165590);
    this.b = ((CheckBox)paramView.findViewById(2131625175));
    this.c = ((CheckBox)paramView.findViewById(2131625176));
    this.d = ((EditText)paramView.findViewById(2131625177));
    this.e = ((EditText)paramView.findViewById(2131625178));
    this.a = PreferenceManager.getDefaultSharedPreferences(g());
    boolean bool1 = this.a.getBoolean(r.d(2131165660), false);
    boolean bool2 = this.a.getBoolean(r.d(2131165661), false);
    paramView = this.a.getString(r.d(2131165662), "xueqiu.com");
    paramBundle = this.a.getString(r.d(2131165663), "80");
    this.b.setChecked(bool1);
    this.c.setChecked(bool2);
    this.d.setText(paramView);
    this.e.setText(paramBundle);
  }
  
  public final boolean y_()
  {
    SharedPreferences.Editor localEditor = this.a.edit();
    localEditor.putBoolean(r.d(2131165660), this.b.isChecked());
    localEditor.putBoolean(r.d(2131165661), this.c.isChecked());
    localEditor.putString(r.d(2131165662), this.d.getText().toString());
    localEditor.putString(r.d(2131165663), this.e.getText().toString());
    localEditor.apply();
    return super.y_();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\setting\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */