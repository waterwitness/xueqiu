package com.xueqiu.android.community.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.c;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public final class n
  extends c
{
  List<Map<String, Object>> a = null;
  private StockQuote b = null;
  
  private void u()
  {
    LinearLayout localLinearLayout = (LinearLayout)c(2131625476);
    if ((this.a != null) && (this.a.size() > 0))
    {
      localLinearLayout.setVisibility(0);
      int j = this.a.size();
      int i = 0;
      if (i < j)
      {
        Object localObject1 = (Map)this.a.get(i);
        View localView = View.inflate(g(), 2130903457, null);
        TextView localTextView2 = (TextView)localView.findViewById(2131625458);
        TextView localTextView1 = (TextView)localView.findViewById(2131625460);
        Object localObject2 = g().getTheme().obtainStyledAttributes(new int[] { 2130772051, 2130772056 });
        int k = g().getResources().getColor(((TypedArray)localObject2).getResourceId(0, 0));
        localTextView2.setTextColor(k);
        localTextView1.setTextColor(k);
        k = g().getResources().getColor(((TypedArray)localObject2).getResourceId(1, 0));
        localView.findViewById(2131625461).setBackgroundColor(k);
        localView.findViewById(2131625459).setBackgroundColor(k);
        Object localObject3 = ((Map)localObject1).entrySet().iterator();
        localObject2 = null;
        localObject1 = null;
        while (((Iterator)localObject3).hasNext())
        {
          localObject2 = (Map.Entry)((Iterator)localObject3).next();
          localObject1 = (String)((Map.Entry)localObject2).getKey();
          localObject2 = ((Map.Entry)localObject2).getValue();
        }
        if (!a(2131166010).equals(localObject1))
        {
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = "";
          }
          localTextView2.setText((CharSequence)localObject3);
          if (localObject2 != null) {
            break label345;
          }
        }
        label345:
        for (localObject1 = "";; localObject1 = String.valueOf(localObject2))
        {
          localTextView1.setText((CharSequence)localObject1);
          localView.setOnClickListener(null);
          localLinearLayout.addView(localView);
          if (i == j - 1) {
            localView.findViewById(2131625461).setVisibility(8);
          }
          i += 1;
          break;
        }
      }
    }
    else
    {
      localLinearLayout.setVisibility(8);
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903479, paramViewGroup, false);
    MobclickAgent.onEvent(v(), "stockDetail_quote");
    return paramLayoutInflater;
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.b = ((StockQuote)this.r.getParcelable("extra_stock"));
    paramView = PreferenceManager.getDefaultSharedPreferences(g()).getString("quote_type_filed_map_config", "");
    try
    {
      paramView = new JSONObject(paramView);
      if (paramView.has(String.valueOf(this.b.getType()))) {
        paramView = paramView.getJSONObject(String.valueOf(this.b.getType()));
      }
      for (this.a = as.a(f(), this.b, paramView);; this.a = as.a(f(), this.b))
      {
        u();
        return;
        if (!as.e(Integer.valueOf(this.b.getType()).intValue())) {
          break;
        }
      }
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        aa.a(paramView);
        continue;
        if (g() != null) {
          g().runOnUiThread(new Runnable()
          {
            public final void run()
            {
              new AlertDialog.Builder(n.this.g()).setTitle(n.this.a(2131166217)).setPositiveButton(n.this.a(2131165361), new DialogInterface.OnClickListener()
              {
                public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  n.this.g().finish();
                }
              }).setMessage(n.this.a(2131166155)).create().show();
            }
          });
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */