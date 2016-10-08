package com.xueqiu.android.common.setting;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.h;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.widget.ac;
import com.xueqiu.android.view.wheel.WheelView;
import com.xueqiu.android.view.wheel.a.c;

public class SettingsPushActivity
  extends com.xueqiu.android.common.b
{
  private static final String[] A = { "0:00", "1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00" };
  private static final String[] B = { "1:00", "2:00", "3:00", "4:00", "5:00", "6:00", "7:00", "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00", "24:00" };
  private WheelView C = null;
  private WheelView D = null;
  private View E;
  protected CheckBox j;
  protected CheckBox k;
  protected CheckBox p;
  protected CheckBox q;
  protected CheckBox r;
  protected CheckBox s;
  protected CheckBox t;
  protected CheckBox u;
  protected CheckBox v;
  protected CheckBox w;
  protected TextView x;
  protected SharedPreferences y;
  protected ac z;
  
  private void b(String paramString)
  {
    paramString = paramString.split(",");
    int i = Integer.parseInt(paramString[0]);
    int m = Integer.parseInt(paramString[1]);
    this.x.setText(String.format("%s-%s", new Object[] { A[(i % A.length)], B[((m - 1) % B.length)] }));
  }
  
  public void changeReceivePeriod(View paramView)
  {
    View localView = getLayoutInflater().inflate(2130903257, null);
    this.C = ((WheelView)localView.findViewById(2131624795));
    this.D = ((WheelView)localView.findViewById(2131624797));
    Object localObject = new b(this, this);
    ((b)localObject).a = A;
    this.C.setViewAdapter((c)localObject);
    localObject = new b(this, this);
    ((b)localObject).a = B;
    this.D.setViewAdapter((c)localObject);
    this.C.setVisibleItems(3);
    this.D.setVisibleItems(3);
    localObject = this.y.getString(getString(2131165675), getString(2131165916)).split(",");
    int i = Integer.parseInt(localObject[0]);
    int m = Integer.parseInt(localObject[1]);
    if ((i == 24) || (i == 0))
    {
      this.C.setCurrentItem(0);
      if ((m != 24) && (m != 0)) {
        break label249;
      }
      this.D.setCurrentItem(23);
    }
    for (;;)
    {
      new AlertDialog.Builder(paramView.getContext()).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      }).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousInt = SettingsPushActivity.b(SettingsPushActivity.this).getCurrentItem();
          int i = SettingsPushActivity.c(SettingsPushActivity.this).getCurrentItem();
          paramAnonymousDialogInterface = String.valueOf(paramAnonymousInt) + "," + String.valueOf(i + 1);
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165675), paramAnonymousDialogInterface);
        }
      }).setView(localView).show();
      return;
      this.C.setCurrentItem(i);
      break;
      label249:
      this.D.setCurrentItem(m - 1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().b(2131165865);
    this.y = PreferenceManager.getDefaultSharedPreferences(this);
    this.z = ac.u();
    setContentView(2130903267);
    this.E = findViewById(2131624818);
    this.j = ((CheckBox)findViewById(2131624817));
    this.k = ((CheckBox)findViewById(2131624821));
    this.p = ((CheckBox)findViewById(2131624822));
    this.q = ((CheckBox)findViewById(2131624823));
    this.r = ((CheckBox)findViewById(2131624824));
    this.s = ((CheckBox)findViewById(2131624825));
    this.t = ((CheckBox)findViewById(2131624827));
    this.u = ((CheckBox)findViewById(2131624829));
    this.v = ((CheckBox)findViewById(2131624830));
    this.w = ((CheckBox)findViewById(2131624828));
    this.x = ((TextView)findViewById(2131624820));
    this.j.setChecked(this.y.getBoolean(getString(2131165669), true));
    this.j.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165669), String.valueOf(paramAnonymousBoolean));
        if (paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this).setVisibility(0);
          return;
        }
        SettingsPushActivity.a(SettingsPushActivity.this).setVisibility(8);
      }
    });
    if (this.y.getBoolean(getString(2131165669), true)) {
      this.E.setVisibility(0);
    }
    for (;;)
    {
      this.k.setChecked(this.y.getBoolean(getString(2131165666), true));
      this.k.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          paramAnonymousCompoundButton = SettingsPushActivity.this.getString(2131165666);
          SettingsPushActivity.this.y.edit().putBoolean(paramAnonymousCompoundButton, paramAnonymousBoolean).apply();
        }
      });
      this.p.setChecked(this.y.getBoolean(getString(2131165671), true));
      this.p.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165671), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.q.setChecked(this.y.getBoolean(getString(2131165674), true));
      this.q.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165674), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.r.setChecked(this.y.getBoolean(getString(2131165667), true));
      this.r.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165667), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.s.setChecked(this.y.getBoolean(getString(2131165672), true));
      this.s.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165672), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.t.setChecked(this.y.getBoolean(getString(2131165673), true));
      this.t.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165673), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.u.setChecked(this.y.getBoolean(getString(2131165676), true));
      this.u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165676), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.v.setChecked(this.y.getBoolean(getString(2131165670), true));
      this.v.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165670), String.valueOf(paramAnonymousBoolean));
        }
      });
      this.w.setChecked(this.y.getBoolean(getString(2131165668), true));
      this.w.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          SettingsPushActivity.a(SettingsPushActivity.this, SettingsPushActivity.this.getString(2131165668), String.valueOf(paramAnonymousBoolean));
        }
      });
      b(this.y.getString(getString(2131165675), getString(2131165916)));
      return;
      this.E.setVisibility(8);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\setting\SettingsPushActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */