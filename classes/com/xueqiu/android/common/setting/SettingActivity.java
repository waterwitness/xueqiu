package com.xueqiu.android.common.setting;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h5.e;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.bb;
import com.xueqiu.android.base.util.k;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.AboutUsActivity;
import com.xueqiu.android.common.AppRecommendActivity;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.account.UpdatePasswordActivity;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.AccountBindingActivity;
import com.xueqiu.android.community.FeedbackActivity;
import com.xueqiu.android.community.StatusDetailActivity;
import java.io.File;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class SettingActivity
  extends com.xueqiu.android.common.b
{
  protected TextView A;
  protected TextView B;
  protected Button C;
  protected TextView D;
  protected Button E;
  protected Button F;
  protected Button G;
  protected Button H;
  protected Button I;
  protected View J;
  protected TextView K;
  protected Button L;
  protected SharedPreferences M;
  private TextView N;
  private LinearLayout O;
  private com.xueqiu.android.common.account.a P;
  private boolean Q = false;
  private int R = 0;
  private Context S;
  protected View j = null;
  protected TextView k;
  protected Button p;
  protected Button q;
  protected TextView r;
  protected View s;
  protected TextView t;
  protected CheckBox u;
  protected View v;
  protected TextView w;
  protected Button x;
  protected TextView y;
  protected View z;
  
  private static int c(String paramString)
  {
    CharSequence[] arrayOfCharSequence = com.xueqiu.android.base.r.a().getTextArray(2131492870);
    int i = 0;
    while (i < arrayOfCharSequence.length)
    {
      if (arrayOfCharSequence[i].toString().equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  private void j()
  {
    this.J.setVisibility(0);
    this.K = ((TextView)this.j.findViewById(2131624815));
    this.L.setVisibility(0);
    Object localObject = com.xueqiu.android.base.r.g(2131492869)[c(this.M.getString(com.xueqiu.android.base.r.d(2131165657), com.xueqiu.android.base.r.d(2131165517)))].toString();
    this.K.setText((CharSequence)localObject);
    this.J.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SettingActivity.a(SettingActivity.this, paramAnonymousView);
      }
    });
    this.L.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SettingActivity.j(SettingActivity.this);
      }
    });
    this.j.findViewById(2131624281).setVisibility(0);
    this.j.findViewById(2131624281).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        com.xueqiu.android.base.i.a();
        aa.a(com.xueqiu.android.base.h.a());
        com.xueqiu.android.base.i.a();
        com.xueqiu.android.base.h.b();
        com.xueqiu.android.base.i.a().c();
      }
    });
    localObject = this.j.findViewById(2131624282);
    if (localObject != null)
    {
      ((View)localObject).setVisibility(0);
      localObject = (CheckBox)this.j.findViewById(2131624283);
      if (localObject != null)
      {
        ((CheckBox)localObject).setChecked(this.M.getBoolean(com.xueqiu.android.base.r.d(2131165677), false));
        ((CheckBox)localObject).setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
          public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
          {
            SettingActivity.this.M.edit().putBoolean(com.xueqiu.android.base.r.d(2131165677), paramAnonymousBoolean).commit();
          }
        });
      }
    }
  }
  
  public void about(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramView.getContext(), AboutUsActivity.class);
    this.S.startActivity(localIntent);
  }
  
  public void bindAccount(View paramView)
  {
    startActivity(new Intent(paramView.getContext(), AccountBindingActivity.class));
  }
  
  public void canCommentMe(View paramView)
  {
    String str = this.M.getString(com.xueqiu.android.base.r.d(2131165656), "0");
    paramView = new AlertDialog.Builder(paramView.getContext(), 2131361925);
    paramView.setTitle(2131165294);
    paramView.setSingleChoiceItems(2131492874, Integer.parseInt(str), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        Object localObject = SettingActivity.this;
        String str = String.valueOf(paramAnonymousInt);
        ((SettingActivity)localObject).h();
        ai localai = com.xueqiu.android.base.q.a().b();
        paramAnonymousInt = Integer.parseInt(str);
        localObject = new SettingActivity.18((SettingActivity)localObject, str);
        localai.h.d(paramAnonymousInt, (p)localObject);
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramView.show();
  }
  
  public void changeFontSize(View paramView)
  {
    View localView = ((LayoutInflater)paramView.getContext().getSystemService("layout_inflater")).inflate(2130903246, null);
    final TextView localTextView = (TextView)localView.findViewById(2131624770);
    localTextView.setText(paramView.getContext().getString(2131165541));
    final SeekBar localSeekBar = (SeekBar)localView.findViewById(2131624771);
    final Float localFloat = Float.valueOf(15.0F);
    new AlertDialog.Builder(paramView.getContext(), 2131361925).setTitle(2131165539).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    }).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        SettingActivity.this.M.edit().putString(com.xueqiu.android.base.r.d(2131165659), String.valueOf(localSeekBar.getProgress() / 10.0F + localFloat.floatValue())).commit();
        paramAnonymousDialogInterface.dismiss();
      }
    }).setView(localView).show();
    paramView = Float.valueOf(this.M.getString(com.xueqiu.android.base.r.d(2131165659), com.xueqiu.android.base.r.d(2131165540)));
    localTextView.setText(2131165541);
    localTextView.setTextSize(2, paramView.floatValue());
    localSeekBar.setProgress(Math.round((paramView.floatValue() - localFloat.floatValue()) * 10.0F));
    localSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
    {
      public final void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        localTextView.setTextSize(2, paramAnonymousInt / 10 + localFloat.floatValue());
      }
      
      public final void onStartTrackingTouch(SeekBar paramAnonymousSeekBar) {}
      
      public final void onStopTrackingTouch(SeekBar paramAnonymousSeekBar) {}
    });
  }
  
  public void changePassword(View paramView)
  {
    startActivity(new Intent(paramView.getContext(), UpdatePasswordActivity.class));
  }
  
  public void changeStockColor(View paramView)
  {
    String str = this.M.getString(com.xueqiu.android.base.r.d(2131165678), "1");
    paramView = new AlertDialog.Builder(paramView.getContext(), 2131361925);
    paramView.setTitle(2131166144);
    paramView.setSingleChoiceItems(2131492871, Integer.parseInt(str), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        SettingActivity localSettingActivity = SettingActivity.this;
        String str = String.valueOf(paramAnonymousInt);
        localSettingActivity.h();
        com.xueqiu.android.base.q.a().b().b(Integer.parseInt(str), new SettingActivity.17(localSettingActivity, str));
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramView.show();
  }
  
  public void changeTheme(View paramView)
  {
    int i = this.M.getInt(com.xueqiu.android.base.r.d(2131165664), 0);
    paramView = new AlertDialog.Builder(paramView.getContext(), 2131361925);
    paramView.setTitle(2131165305);
    paramView.setSingleChoiceItems(2131492872, i, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        SettingActivity.h(SettingActivity.this);
        SettingActivity.this.M.edit().putInt(com.xueqiu.android.base.r.d(2131165664), paramAnonymousInt).commit();
        SettingActivity.this.w.setText(com.xueqiu.android.base.r.a().getTextArray(2131492872)[paramAnonymousInt]);
        paramAnonymousDialogInterface.dismiss();
        SettingActivity.this.recreate();
      }
    });
    paramView.show();
  }
  
  public void feedback(View paramView)
  {
    if (u.a().d) {
      paramView = new Intent(paramView.getContext(), FeedbackActivity.class);
    }
    for (;;)
    {
      this.S.startActivity(paramView);
      return;
      paramView = new Intent(paramView.getContext(), StatusDetailActivity.class);
      paramView.putExtra("status_id", 21596141L);
    }
  }
  
  public void logout(View paramView)
  {
    new AlertDialog.Builder(this.S, 2131361925).setNegativeButton(com.xueqiu.android.base.r.d(2131165296), null).setPositiveButton(com.xueqiu.android.base.r.d(2131165361), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        u.a().logout();
        u.a();
        paramAnonymousDialogInterface = SettingActivity.this;
        if (com.xueqiu.android.base.util.i.f())
        {
          u.a();
          String str = w.a(String.valueOf(UserLogonDataPrefs.getLogonUserId()));
          com.xiaomi.mipush.sdk.b.d(paramAnonymousDialogInterface, str, "extra message");
          v.a("unSetMiUserAccount", str);
        }
        SettingActivity.i(SettingActivity.this).h = true;
        SettingActivity.i(SettingActivity.this).a();
      }
    }).setMessage(com.xueqiu.android.base.r.d(2131165370)).create().show();
  }
  
  public void onBackPressed()
  {
    if (this.Q)
    {
      Intent localIntent = new Intent(this.S, MainActivity.class);
      localIntent.setFlags(67108864);
      this.S.startActivity(localIntent);
      overridePendingTransition(2130968596, 2130968599);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.S = this;
    this.i.b().a(getResources().getString(2131165749));
    this.M = PreferenceManager.getDefaultSharedPreferences(this.S);
    View.OnClickListener local7;
    if (u.a().d)
    {
      this.j = LayoutInflater.from(this.S).inflate(2130903089, null, false);
      this.P = new com.xueqiu.android.common.account.a(this, 2);
      this.k = ((TextView)this.j.findViewById(2131624258));
      this.p = ((Button)this.j.findViewById(2131624259));
      this.q = ((Button)this.j.findViewById(2131624260));
      this.r = ((TextView)this.j.findViewById(2131624263));
      this.s = this.j.findViewById(2131624264);
      this.t = ((TextView)this.j.findViewById(2131624265));
      this.v = this.j.findViewById(2131624269);
      this.w = ((TextView)this.j.findViewById(2131624270));
      this.u = ((CheckBox)this.j.findViewById(2131624268));
      this.x = ((Button)this.j.findViewById(2131624271));
      this.y = ((TextView)this.j.findViewById(2131624272));
      this.z = this.j.findViewById(2131624273);
      this.A = ((TextView)this.j.findViewById(2131624274));
      this.B = ((TextView)this.j.findViewById(2131624275));
      this.C = ((Button)this.j.findViewById(2131624276));
      this.D = ((TextView)this.j.findViewById(2131624277));
      this.E = ((Button)this.j.findViewById(2131624278));
      this.G = ((Button)this.j.findViewById(2131624279));
      this.F = ((Button)this.j.findViewById(2131624280));
      this.H = ((Button)this.j.findViewById(2131624284));
      this.I = ((Button)this.j.findViewById(2131624285));
      this.J = this.j.findViewById(2131624814);
      this.L = ((Button)this.j.findViewById(2131624816));
      this.O = ((LinearLayout)this.j.findViewById(2131624261));
      this.N = ((TextView)this.j.findViewById(2131624262));
      if (this.p != null) {
        this.p.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.bindAccount(paramAnonymousView);
          }
        });
      }
      if (this.q != null) {
        this.q.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.changePassword(paramAnonymousView);
          }
        });
      }
      int i;
      if (this.s != null)
      {
        i = Integer.parseInt(this.M.getString(com.xueqiu.android.base.r.d(2131165678), "1"));
        this.t.setText(com.xueqiu.android.base.r.g(2131492871)[i]);
        this.s.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.changeStockColor(paramAnonymousView);
          }
        });
      }
      if (this.x != null) {
        this.x.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.changeFontSize(paramAnonymousView);
          }
        });
      }
      if (this.z != null)
      {
        i = Integer.parseInt(this.M.getString(com.xueqiu.android.base.r.d(2131165656), "0"));
        this.A.setText(com.xueqiu.android.base.r.g(2131492874)[i]);
        this.z.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.canCommentMe(paramAnonymousView);
          }
        });
      }
      if (this.C != null) {
        this.C.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.toPushSettings(paramAnonymousView);
          }
        });
      }
      if (this.E != null) {
        this.E.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.feedback(paramAnonymousView);
            MobclickAgent.onEvent(SettingActivity.a(SettingActivity.this), "feedback");
          }
        });
      }
      if (this.G != null)
      {
        this.G.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.base.h5.f.a().a().c(new rx.c.b() {});
          }
        });
        this.G.setOnLongClickListener(new View.OnLongClickListener()
        {
          public final boolean onLongClick(View paramAnonymousView)
          {
            paramAnonymousView = new File(SettingActivity.this.getFilesDir(), "com.xueqiu.android.h5");
            if (!paramAnonymousView.exists())
            {
              aa.a("config文件不存在, path=" + paramAnonymousView.getPath());
              return true;
            }
            paramAnonymousView = new File(paramAnonymousView, "modules" + File.separator + "config.json");
            if (!paramAnonymousView.exists())
            {
              aa.a("config文件不存在, path=" + paramAnonymousView.getPath());
              return true;
            }
            paramAnonymousView = k.a(paramAnonymousView);
            Object localObject = new GsonBuilder().setPrettyPrinting().create().toJson(new JsonParser().parse(paramAnonymousView).getAsJsonObject());
            paramAnonymousView = new TextView(SettingActivity.this);
            paramAnonymousView.setText(SettingActivity.b((String)localObject));
            paramAnonymousView.setTextSize(10.0F);
            paramAnonymousView.setBackgroundColor(com.xueqiu.android.base.r.a(2131558728));
            localObject = com.xueqiu.android.common.widget.f.a(SettingActivity.this, new com.xueqiu.android.common.widget.g()
            {
              public final void a(com.xueqiu.android.common.widget.f paramAnonymous2f, int paramAnonymous2Int)
              {
                switch (paramAnonymous2Int)
                {
                default: 
                  return;
                }
                paramAnonymous2f.dismiss();
              }
            });
            ((com.xueqiu.android.common.widget.f)localObject).a(paramAnonymousView);
            ((com.xueqiu.android.common.widget.f)localObject).setCancelable(true);
            ((com.xueqiu.android.common.widget.f)localObject).c(SettingActivity.this.getString(2131165361));
            ((com.xueqiu.android.common.widget.f)localObject).show();
            return true;
          }
        });
      }
      if (this.F != null) {
        this.F.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.b(SettingActivity.this);
          }
        });
      }
      if (this.H != null) {
        this.H.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.about(paramAnonymousView);
          }
        });
      }
      if (this.I != null) {
        this.I.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.logout(paramAnonymousView);
          }
        });
      }
      if (this.u != null)
      {
        this.u.setChecked(this.M.getBoolean(com.xueqiu.android.base.r.d(2131165658), false));
        this.u.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
        {
          public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
          {
            SettingActivity.this.M.edit().putBoolean(com.xueqiu.android.base.r.d(2131165658), paramAnonymousBoolean).apply();
            android.support.v4.content.r.a(SettingActivity.a(SettingActivity.this)).a(new Intent("com.xueqiu.android.action.fastScrollChanged"));
          }
        });
      }
      if (this.v != null)
      {
        i = this.M.getInt(com.xueqiu.android.base.r.d(2131165664), 0);
        this.w.setText(com.xueqiu.android.base.r.g(2131492872)[i]);
        this.v.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.this.changeTheme(paramAnonymousView);
          }
        });
      }
      if (com.xueqiu.android.base.g.a().b) {
        j();
      }
      if ("release".equalsIgnoreCase("rc"))
      {
        local7 = new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            int i;
            if (SettingActivity.c(SettingActivity.this) >= 5)
            {
              i = 1;
              if (i != 0)
              {
                paramAnonymousView = com.xueqiu.android.base.g.a();
                Context localContext = SettingActivity.a(SettingActivity.this);
                paramAnonymousView.b = true;
                DefaultPrefs.putBoolean("developer_mode", true, localContext);
                SettingActivity.d(SettingActivity.this);
              }
              if ((SettingActivity.e(SettingActivity.this) < 2) || (SettingActivity.e(SettingActivity.this) >= 5)) {
                break label103;
              }
              aa.a(String.format("再按%s次", new Object[] { Integer.valueOf(5 - SettingActivity.e(SettingActivity.this)) }));
            }
            label103:
            while (SettingActivity.e(SettingActivity.this) != 5)
            {
              return;
              i = 0;
              break;
            }
            aa.a("已开启");
          }
        };
        if ((!u.a().d) || (this.r == null)) {
          break label1078;
        }
        this.r.setOnClickListener(local7);
      }
    }
    for (;;)
    {
      setContentView(this.j);
      if (paramBundle != null) {
        this.Q = paramBundle.getBoolean("com.xueqiu.android.intent.action.CHANGE_THEME", false);
      }
      if (this.N != null) {
        com.xueqiu.android.base.q.a().b().b(new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        });
      }
      if (this.O != null) {
        this.O.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SettingActivity.g(SettingActivity.this);
          }
        });
      }
      return;
      this.j = LayoutInflater.from(this.S).inflate(2130903088, null, false);
      break;
      label1078:
      if (this.k != null) {
        this.k.setOnClickListener(local7);
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (this.P != null) {
      this.P.b();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("com.xueqiu.android.intent.action.CHANGE_THEME", this.Q);
  }
  
  public void recommend(View paramView)
  {
    paramView = new Intent(paramView.getContext(), AppRecommendActivity.class);
    this.S.startActivity(paramView);
  }
  
  public void toPushSettings(View paramView)
  {
    this.S.startActivity(new Intent(paramView.getContext(), SettingsPushActivity.class));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\setting\SettingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */