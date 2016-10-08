package com.xueqiu.android.community.c;

import android.content.Intent;
import android.net.Uri;
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
import com.xueqiu.android.base.b.e;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.parser.AbstractParser;
import com.xueqiu.android.stock.InvestmentCalendarActivity;
import com.xueqiu.android.stock.model.InvCalEventsPair;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
  extends c
{
  private StockQuote a = null;
  
  private static boolean a(JSONObject paramJSONObject, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try
    {
      if (AbstractParser.hasKeyAndValueNotNull(paramJSONObject, paramString))
      {
        int i = paramJSONObject.getString(paramString).length();
        bool1 = bool2;
        if (i > 0) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (JSONException paramJSONObject)
    {
      aa.a(paramJSONObject);
    }
    return false;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903452, paramViewGroup, false);
    MobclickAgent.onEvent(v(), "stockDetail_info");
    return paramLayoutInflater;
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.a = ((StockQuote)this.r.getParcelable("extra_stock"));
    paramView = x();
    paramBundle = this.a.getSymbol();
    Object localObject = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramView = paramView.i.d(paramBundle, (p)localObject);
    paramBundle = x();
    localObject = this.a.getSymbol();
    p local2 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle = paramBundle.j.a((String)localObject, local2);
    a(paramView);
    a(paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */