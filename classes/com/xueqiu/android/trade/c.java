package com.xueqiu.android.trade;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.q;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.model.TradeTokenExpiresTime;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public final class c
{
  com.xueqiu.android.common.b a = null;
  TradeAccount b;
  d c;
  com.xueqiu.android.trade.c.c d = null;
  private String e;
  private com.xueqiu.android.trade.c.b f;
  
  private c(String paramString, TradeAccount paramTradeAccount, com.xueqiu.android.common.b paramb)
  {
    this.a = paramb;
    this.e = paramString;
    this.b = paramTradeAccount;
  }
  
  public static final c a(String paramString, TradeAccount paramTradeAccount, com.xueqiu.android.common.b paramb, d paramd)
  {
    return a(paramString, paramTradeAccount, paramb, paramd, null);
  }
  
  public static final c a(String paramString, TradeAccount paramTradeAccount, com.xueqiu.android.common.b paramb, d paramd, com.xueqiu.android.trade.c.c paramc)
  {
    paramString = new c(paramString, paramTradeAccount, paramb);
    paramString.c = paramd;
    if (paramc != null) {
      paramString.d = paramc;
    }
    return paramString;
  }
  
  public static void a(final Context paramContext, final Intent paramIntent, TradeAccount paramTradeAccount, final ArrayList<TradeAccount> paramArrayList, final boolean paramBoolean)
  {
    a(paramContext, paramTradeAccount, new rx.c.b() {});
  }
  
  public static void a(Context paramContext, final TradeAccount paramTradeAccount, rx.c.b<Boolean> paramb)
  {
    rx.a.a(new rx.b() {}).a(paramb, new rx.c.b() {});
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    paramString = u.a().a(paramString);
    if ((paramString == null) || (TextUtils.isEmpty(paramString.getWriteToken()))) {}
    do
    {
      int i;
      double d1;
      do
      {
        do
        {
          return true;
          i = UserPrefs.getInt(paramContext, "trade_write_token_expires", TradeTokenExpiresTime.ALL_DAY.value());
        } while (TradeTokenExpiresTime.fromValue(i) == TradeTokenExpiresTime.EVERY_TIME);
        d1 = (System.currentTimeMillis() - paramString.getCreateTime().getTime()) / 60000L;
      } while (((TradeTokenExpiresTime.fromValue(i) == TradeTokenExpiresTime.THREE) && (d1 >= 3.0D)) || ((TradeTokenExpiresTime.fromValue(i) == TradeTokenExpiresTime.FIFTEEN) && (d1 >= 15.0D)));
      if (TradeTokenExpiresTime.fromValue(i) != TradeTokenExpiresTime.ALL_DAY) {
        break;
      }
      paramContext = Calendar.getInstance(as.k);
      paramContext.setTime(paramString.getCreateTime());
      paramString = Calendar.getInstance(as.k);
      paramString.setTime(new Date(System.currentTimeMillis()));
    } while ((paramContext.get(1) != paramString.get(1)) || (paramContext.get(6) != paramString.get(6)));
    return false;
  }
  
  public static boolean a(String paramString)
  {
    return ("70005".equals(paramString)) || ("70006".equals(paramString)) || ("70015".equals(paramString));
  }
  
  private void b(final TradeAccount paramTradeAccount)
  {
    new AlertDialog.Builder(this.a).setNegativeButton(2131165361, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        g.a(paramTradeAccount, c.this.a, null, 2);
        c.this.a.a(rx.a.b.a.b(c.this.a, new IntentFilter("com.xueqiu.android.action.updateBrokerTokenSuccess")).c(new rx.c.b() {}));
      }
    }).setMessage(2131166331).create().show();
  }
  
  public final void a()
  {
    if (this.b == null) {}
    while ((!"70015".equals(this.e)) && (!"70005".equals(this.e))) {
      return;
    }
    if (this.b.getTradeBroker().getPageType() == 1)
    {
      a(this.b);
      return;
    }
    if ("70006".equals(this.e))
    {
      b(this.b);
      return;
    }
    a(this.b, false, null);
  }
  
  public final void a(com.xueqiu.android.base.a.a parama)
  {
    if ("70005".equals(parama.errorCode)) {
      a();
    }
    while (!"70015".equals(parama.errorCode)) {
      return;
    }
    f.a(this.a, new com.xueqiu.android.common.widget.g()
    {
      public final void a(f paramAnonymousf, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        default: 
          return;
        }
        c.this.a();
      }
    }).a("提示").b(parama.getMessage()).c(this.a.getResources().getString(2131165296)).d(this.a.getResources().getString(2131165361)).show();
  }
  
  final void a(TradeAccount paramTradeAccount)
  {
    try
    {
      String str = paramTradeAccount.getRefreshUrl();
      paramTradeAccount = str;
      if (str != null)
      {
        paramTradeAccount = str;
        if (!v.a(str)) {
          paramTradeAccount = v.b("/broker/proxy?url=" + az.b(str));
        }
      }
      q.a(paramTradeAccount, this.a);
    }
    catch (UnsupportedEncodingException paramTradeAccount)
    {
      for (;;)
      {
        aa.a(paramTradeAccount);
      }
    }
    this.a.a(rx.a.b.a.b(this.a, new IntentFilter("com.xueqiu.android.action.updateBrokerTokenSuccess")).c(new rx.c.b() {}));
  }
  
  final void a(TradeAccount paramTradeAccount, boolean paramBoolean, final ArrayList<TradeAccount> paramArrayList)
  {
    this.f = com.xueqiu.android.trade.c.b.a(this.a, paramTradeAccount, paramBoolean);
    if ((paramArrayList != null) && (paramArrayList.size() > 0)) {
      this.f.m = paramArrayList;
    }
    this.f.show();
    this.f.i = new com.xueqiu.android.trade.c.d()
    {
      public final void a()
      {
        if (c.this.c != null) {
          c.this.c.a();
        }
      }
      
      public final void a(TradeAccount paramAnonymousTradeAccount, boolean paramAnonymousBoolean1, com.xueqiu.android.base.a.a paramAnonymousa, boolean paramAnonymousBoolean2)
      {
        c localc = c.this;
        ArrayList localArrayList = paramArrayList;
        paramAnonymousTradeAccount = new AlertDialog.Builder(localc.a).setPositiveButton("重试", new c.9(localc, paramAnonymousa, paramAnonymousTradeAccount, paramAnonymousBoolean1, localArrayList));
        if (paramAnonymousBoolean2)
        {
          paramAnonymousTradeAccount.setNegativeButton("忘记密码", new c.10(localc));
          paramAnonymousTradeAccount.setMessage(2131166416);
        }
        for (;;)
        {
          paramAnonymousTradeAccount.create().show();
          return;
          paramAnonymousTradeAccount.setNegativeButton(2131165296, new c.11(localc));
          paramAnonymousTradeAccount.setMessage(paramAnonymousa.errorDescription);
        }
      }
      
      public final void b()
      {
        if (c.this.c != null) {
          c.this.c.b();
        }
      }
    };
    if (this.d != null) {
      this.f.j = new com.xueqiu.android.trade.c.c()
      {
        public final void a(TradeAccount paramAnonymousTradeAccount)
        {
          c.this.d.a(paramAnonymousTradeAccount);
        }
      };
    }
  }
  
  public final void a(ArrayList<TradeAccount> paramArrayList)
  {
    if (this.b == null) {}
    while ((!"70015".equals(this.e)) && (!"70005".equals(this.e))) {
      return;
    }
    if (this.b.getTradeBroker().getPageType() == 1)
    {
      a(this.b);
      return;
    }
    if ("70006".equals(this.e))
    {
      b(this.b);
      return;
    }
    a(this.b, false, paramArrayList);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */