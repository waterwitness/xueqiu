package com.xueqiu.android.trade;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import com.xueqiu.android.trade.model.TradeTokenExpiresTime;
import com.xueqiu.android.trade.patternlock.d;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class TradeSecuritySettingActivity
  extends com.xueqiu.android.common.b
{
  private CheckBox j;
  private CheckBox k;
  private Button p;
  private View q;
  private TextView r;
  private e s = null;
  
  private void b(int paramInt)
  {
    String str = TradeTokenExpiresTime.getlable(paramInt);
    if (au.a(str))
    {
      this.r.setText(TradeTokenExpiresTime.fromValue(paramInt).lableResId());
      return;
    }
    this.r.setText(str);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    boolean bool = true;
    if (paramInt1 == 2)
    {
      paramIntent = this.j;
      if (paramInt2 == -1) {
        paramIntent.setChecked(bool);
      }
    }
    while (paramInt1 != 4) {
      for (;;)
      {
        return;
        bool = false;
      }
    }
    if (paramInt2 == -1) {}
    for (paramInt1 = 1; paramInt1 != 0; paramInt1 = 0)
    {
      this.j.setChecked(false);
      DefaultPrefs.remove("pref_key_pattern_sha1", this);
      u.a().g = false;
      return;
    }
    this.j.setChecked(true);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().b(2131166408);
    setContentView(2130903120);
    this.j = ((CheckBox)findViewById(2131624361));
    this.k = ((CheckBox)findViewById(2131624363));
    this.p = ((Button)findViewById(2131624362));
    this.q = findViewById(2131624359);
    this.r = ((TextView)findViewById(2131624360));
    this.j.setChecked(UserPrefs.getBoolean(this, getString(2131165665), false));
    this.k.setChecked(UserPrefs.getBoolean(this, getString(2131165680), false));
    this.p.setEnabled(this.j.isChecked());
    this.j.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (TradeSecuritySettingActivity.a(TradeSecuritySettingActivity.this).isChecked())
        {
          d.a(TradeSecuritySettingActivity.this, 2);
          com.xueqiu.android.base.util.b.a(TradeSecuritySettingActivity.this, 2131166524);
          return;
        }
        if (d.b(TradeSecuritySettingActivity.this))
        {
          paramAnonymousView = TradeSecuritySettingActivity.this;
          Intent localIntent = new Intent(paramAnonymousView, ConfirmPatternActivity.class);
          localIntent.putExtra("extra_request_code", 4);
          paramAnonymousView.startActivityForResult(localIntent, 4);
        }
        com.xueqiu.android.base.util.b.a(TradeSecuritySettingActivity.this, 2131166523);
      }
    });
    this.j.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        UserPrefs.setBoolean(TradeSecuritySettingActivity.this, TradeSecuritySettingActivity.this.getString(2131165665), paramAnonymousBoolean);
        TradeSecuritySettingActivity.b(TradeSecuritySettingActivity.this).setEnabled(paramAnonymousBoolean);
      }
    });
    this.k.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        UserPrefs.setBoolean(TradeSecuritySettingActivity.this, TradeSecuritySettingActivity.this.getString(2131165680), paramAnonymousBoolean);
      }
    });
    this.p.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        d.a(TradeSecuritySettingActivity.this, 3);
      }
    });
    b(UserPrefs.getInt(this, "trade_write_token_expires", TradeTokenExpiresTime.ALL_DAY.value()));
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((TradeSecuritySettingActivity.c(TradeSecuritySettingActivity.this) == null) || (!TradeSecuritySettingActivity.c(TradeSecuritySettingActivity.this).b()))
        {
          TradeSecuritySettingActivity.a(TradeSecuritySettingActivity.this, new e(TradeSecuritySettingActivity.this));
          TradeSecuritySettingActivity.c(TradeSecuritySettingActivity.this).c = new f()
          {
            public final void a(int paramAnonymous2Int)
            {
              t localt = u.a();
              Iterator localIterator = localt.b.entrySet().iterator();
              while (localIterator.hasNext()) {
                ((BrokerAccountToken)((Map.Entry)localIterator.next()).getValue()).setCreateTime(new Date(0L));
              }
              localt.c();
              TradeSecuritySettingActivity.a(TradeSecuritySettingActivity.this, paramAnonymous2Int);
            }
          };
          TradeSecuritySettingActivity.c(TradeSecuritySettingActivity.this).a();
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\TradeSecuritySettingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */