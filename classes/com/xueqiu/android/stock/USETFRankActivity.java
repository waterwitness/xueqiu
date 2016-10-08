package com.xueqiu.android.stock;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.i;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.model.USETFCategory;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class USETFRankActivity
  extends com.xueqiu.android.common.b
{
  private i[] j = null;
  private ArrayList<String> k = new ArrayList();
  private ArrayList<USETFCategory> p = new ArrayList();
  private SwitchSwipeEnableViewPager q = null;
  private TabPageIndicator r = null;
  
  private void j()
  {
    int m = this.p.size();
    this.j = new i[m];
    int i = 0;
    while (i < m)
    {
      this.j[i] = com.xueqiu.android.stock.c.aa.a((USETFCategory)this.p.get(i));
      i += 1;
    }
    final Object localObject = new r(this, c());
    this.q = ((SwitchSwipeEnableViewPager)findViewById(2131624310));
    this.q.setAdapter((bd)localObject);
    this.q.setOffscreenPageLimit(this.j.length);
    this.r = ((TabPageIndicator)findViewById(2131624326));
    this.r.setViewPager(this.q);
    localObject = findViewById(2131624327);
    this.r.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener()
    {
      public final void onScrollChanged()
      {
        boolean bool = USETFRankActivity.c(USETFRankActivity.this).canScrollHorizontally(1);
        if ((localObject.getVisibility() == 0) && (!bool)) {
          localObject.setVisibility(4);
        }
        while ((localObject.getVisibility() != 4) || (!bool)) {
          return;
        }
        localObject.setVisibility(0);
      }
    });
    this.r.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        ((l)USETFRankActivity.a(USETFRankActivity.this)[paramAnonymousInt]).C_();
        ((com.xueqiu.android.stock.c.aa)USETFRankActivity.a(USETFRankActivity.this)[paramAnonymousInt]).a = true;
      }
    });
    ((com.xueqiu.android.stock.c.aa)this.j[0]).a = true;
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903121);
    setTitle("ETF");
    paramBundle = PreferenceManager.getDefaultSharedPreferences(this).getString("us_etf_category", "");
    for (;;)
    {
      try
      {
        paramBundle = new JSONObject(paramBundle).getJSONObject("US").getJSONArray("ETF");
        int i = 0;
        if (i >= paramBundle.length()) {
          break;
        }
        JSONObject localJSONObject = paramBundle.getJSONObject(i);
        Iterator localIterator = localJSONObject.keys();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          this.k.add(str);
          JSONArray localJSONArray = localJSONObject.getJSONArray(str);
          int n = localJSONArray.length();
          String[] arrayOfString = new String[n];
          int m = 0;
          if (m < n)
          {
            arrayOfString[m] = localJSONArray.getString(m);
            m += 1;
          }
          else
          {
            this.p.add(new USETFCategory(str, arrayOfString));
          }
        }
        else
        {
          i += 1;
        }
      }
      catch (Exception paramBundle)
      {
        com.xueqiu.android.base.util.aa.a(paramBundle);
        return;
      }
    }
    j();
  }
  
  protected final Boolean w_()
  {
    if (this.q.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\USETFRankActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */