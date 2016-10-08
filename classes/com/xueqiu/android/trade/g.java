package com.xueqiu.android.trade;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.snowballfinance.message.a.a;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.r;
import com.xueqiu.android.base.h5.H5Activity;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.d;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.v;
import com.xueqiu.android.cube.CubeFlyOrderActivity;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.util.Map;

public final class g
{
  public static TradeAccount a(JsonObject paramJsonObject)
  {
    TradeAccount localTradeAccount = (TradeAccount)m.a().fromJson(paramJsonObject, TradeAccount.class);
    localTradeAccount.setTradeBroker((TradeBroker)m.a().fromJson(paramJsonObject, TradeBroker.class));
    return localTradeAccount;
  }
  
  public static String a(String paramString)
  {
    com.xueqiu.android.base.b.a();
    Object localObject = UserPrefs.getString(com.xueqiu.android.base.b.d(), "trade_key", "");
    String str = d.a().a(Base64.decode((String)localObject, 0));
    localObject = str;
    if (c.a(str)) {
      localObject = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgXhQP/OpFzyf5bduIHcG2dLol\nLu6h75feTqI1U9oPrKx85R9Wb4LBlpo183rmJnrt2vAyo7+QK5iwke9Ii/CBfIG/\n8GSgTNwzLHM0voaZygmJi66JoaZ1jlsO5CZSEzoXkF1Zxq62KcO40zE4yPFExvjR\nO3uCTSNCS11h7gEISQIDAQAB\n";
    }
    localObject = com.snowballfinance.message.a.b.a(Base64.decode((String)localObject, 0));
    return Base64.encodeToString(a.a(paramString.getBytes("UTF-8"), (Key)localObject, 1024), 8);
  }
  
  public static void a(Context paramContext, long paramLong, String paramString)
  {
    Intent localIntent = new Intent(paramContext, CubeFlyOrderActivity.class);
    localIntent.putExtra("take_order_id", paramLong);
    localIntent.putExtra("take_order_name", paramString);
    paramContext.startActivity(localIntent);
  }
  
  static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    StockQuote localStockQuote = new StockQuote();
    localStockQuote.setSymbol(paramString);
    if (paramBoolean) {}
    for (Object localObject = "SELL";; localObject = "BUY")
    {
      localObject = OrderFullActivity.a(paramContext, localStockQuote, (String)localObject, null, null, 0);
      com.xueqiu.android.base.q.a().b().h(null, paramString, new c.2(paramContext, (Intent)localObject));
      return;
    }
  }
  
  public static void a(final Context paramContext, final String paramString, final boolean paramBoolean, int paramInt)
  {
    if (paramInt >= 0)
    {
      if ((paramInt != 17) && (as.g(paramInt)))
      {
        a(paramContext, paramString, paramBoolean);
        return;
      }
      b(paramContext, paramString, paramBoolean);
      return;
    }
    com.xueqiu.android.base.q.a().b().a(paramString, new p((com.xueqiu.android.common.b)paramContext)new r
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    }, new r());
  }
  
  public static void a(TradeAccount paramTradeAccount, Activity paramActivity, com.xueqiu.android.base.h5.b paramb, int paramInt)
  {
    if (paramTradeAccount.getTradeBroker().getPageType() == 1)
    {
      if (paramInt == 1) {}
      for (;;)
      {
        try
        {
          paramTradeAccount = paramTradeAccount.getBindUrl();
          paramb = paramTradeAccount;
          if (!v.a(paramTradeAccount)) {
            paramb = v.b("/broker/proxy?url=" + az.b(paramTradeAccount));
          }
          com.xueqiu.android.common.q.a(paramb, paramActivity);
          return;
        }
        catch (UnsupportedEncodingException paramTradeAccount)
        {
          aa.a(paramTradeAccount);
          return;
        }
        paramTradeAccount = paramTradeAccount.getRefreshUrl();
      }
    }
    Intent localIntent = new Intent(paramActivity, BindBrokerActivity.class);
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra_intent_type", paramInt);
    localBundle.putParcelable("extra_broker", paramTradeAccount);
    if (paramb != null)
    {
      localBundle.putParcelable("extra_event", paramb);
      localIntent.putExtras(localBundle);
      paramActivity.startActivityForResult(localIntent, paramb.a);
      return;
    }
    localIntent.putExtras(localBundle);
    paramActivity.startActivityForResult(localIntent, 1);
  }
  
  static void b(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (Object localObject = "SELL";; localObject = "BUY")
    {
      paramString = String.format("broker/trade?scode=%s&action=%s", new Object[] { paramString, localObject });
      localObject = new Intent(paramContext, H5Activity.class);
      ((Intent)localObject).putExtra("extra_url", paramString);
      paramContext.startActivity((Intent)localObject);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */