package com.xueqiu.android.stock;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.widget.SwitchButton;

public class StockSettingActivity
  extends b
  implements View.OnClickListener
{
  private View j;
  private TextView k;
  private StockSettingActivity p;
  private SharedPreferences q;
  private View r;
  private SwitchButton s;
  
  public void changeStockColor(View paramView)
  {
    String str = this.q.getString(r.d(2131165678), "1");
    paramView = new AlertDialog.Builder(paramView.getContext(), 2131361925);
    paramView.setTitle(2131166144);
    paramView.setSingleChoiceItems(2131492871, Integer.parseInt(str), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        StockSettingActivity localStockSettingActivity = StockSettingActivity.this;
        String str = String.valueOf(paramAnonymousInt);
        localStockSettingActivity.h();
        com.xueqiu.android.base.q.a().b().b(Integer.parseInt(str), new StockSettingActivity.4(localStockSettingActivity, str));
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramView.show();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131624357: 
      changeStockColor(paramView);
      return;
    }
    com.xueqiu.android.common.q.a(v.b("/setting/mobile/stock-alert"), this.p);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().a("自选设置");
    setContentView(2130903119);
    this.p = this;
    this.q = PreferenceManager.getDefaultSharedPreferences(this.p);
    int i = Integer.parseInt(this.q.getString(r.d(2131165678), "1"));
    this.j = findViewById(2131624357);
    this.j.setOnClickListener(this);
    this.k = ((TextView)findViewById(2131624265));
    this.k.setText(r.g(2131492871)[i]);
    this.r = findViewById(2131624356);
    this.r.setOnClickListener(this);
    this.s = ((SwitchButton)findViewById(2131624358));
    paramBundle = this.q.getString(r.d(2131166409), "0");
    this.s.setChecked(TextUtils.equals("1", paramBundle));
    this.s.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        StockSettingActivity.a(StockSettingActivity.this, paramAnonymousBoolean);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockSettingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */