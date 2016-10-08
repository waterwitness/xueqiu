package com.xueqiu.android.community.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.android.volley.y;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.c;
import com.xueqiu.android.stock.model.StockQuote;
import org.json.JSONObject;

public final class b
  extends c
{
  private StockQuote a = null;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903454, paramViewGroup, false);
    MobclickAgent.onEvent(v(), "stockDetail_finance");
    return paramLayoutInflater;
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.a = ((StockQuote)this.r.getParcelable("extra_stock"));
    paramView = x();
    paramBundle = this.a.getSymbol();
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    a(paramView.i.e(paramBundle, local1));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */