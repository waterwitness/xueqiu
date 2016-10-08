package com.xueqiu.android.trade.c;

import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.c;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.model.TradeBroker.OauthConfig;

public final class a
  extends c
{
  private TradeAccount a;
  private String ak;
  private int al = 1;
  private EditText b;
  private EditText c;
  private EditText d;
  private View e;
  private ImageView f;
  private ImageView g;
  private Button h;
  
  public static a a(TradeAccount paramTradeAccount, int paramInt)
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_broker", paramTradeAccount);
    localBundle.putInt("arg_intent_type", paramInt);
    locala.e(localBundle);
    return locala;
  }
  
  private void u()
  {
    this.e.setVisibility(0);
    this.T.findViewById(2131625262).setVisibility(0);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903382, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    d(2131166300);
    this.a = ((TradeAccount)this.r.getParcelable("arg_broker"));
    this.al = this.r.getInt("arg_intent_type");
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.b = ((EditText)this.T.findViewById(2131625260));
    this.c = ((EditText)this.T.findViewById(2131625261));
    this.e = this.T.findViewById(2131625263);
    this.d = ((EditText)this.T.findViewById(2131624177));
    this.f = ((ImageView)this.T.findViewById(2131625264));
    this.g = ((ImageView)this.T.findViewById(2131624861));
    this.h = ((Button)this.T.findViewById(2131624116));
    paramView = this.T.findViewById(2131625265);
    paramBundle = this.T.findViewById(2131625266);
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        com.xueqiu.android.common.q.a(String.format("%s/broker/open?tid=%s", new Object[] { "https://xueqiu.com", a.a(a.this).getTid() }), a.this.f());
      }
    });
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        com.xueqiu.android.common.q.a(v.b("/6123409880/48394788"), a.this.f());
      }
    });
    ((TextView)this.T.findViewById(2131624860)).setText(this.a.getTradeBroker().getTraderName());
    ((TextView)this.T.findViewById(2131625259)).setText(this.a.getTradeBroker().getOauthConfig().getAccountLabel());
    this.b.setHint(a(2131165593, new Object[] { this.a.getTradeBroker().getOauthConfig().getAccountLabel() }));
    this.h.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (TextUtils.isEmpty(a.b(a.this).getText().toString()))
        {
          aa.a(a.this.a(2131166413, new Object[] { a.a(a.this).getTradeBroker().getOauthConfig().getAccountLabel() }));
          return;
        }
        if (TextUtils.isEmpty(a.c(a.this).getText().toString()))
        {
          aa.a(2131166415);
          return;
        }
        if ((a.d(a.this).getVisibility() == 0) && (TextUtils.isEmpty(a.e(a.this).getText().toString())))
        {
          aa.a(2131166417);
          return;
        }
        a.f(a.this);
      }
    });
    this.f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.g(a.this);
      }
    });
    this.b.postDelayed(new Runnable()
    {
      public final void run()
      {
        a.b(a.this).requestFocus();
        ((InputMethodManager)a.this.g().getSystemService("input_method")).showSoftInput(a.b(a.this), 1);
      }
    }, 200L);
    paramView = n.a().b();
    paramBundle = new o();
    f.a().a(this.a.getTradeBroker().getTraderLogo(), this.g, paramView, paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */