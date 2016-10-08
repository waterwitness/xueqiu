package com.xueqiu.android.stock.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.a.u;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stock.model.USETFCategory;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONArray;

public final class aa
  extends c
  implements l
{
  public boolean a = false;
  private USETFCategory b;
  private u c;
  private ArrayList<ArrayList<OldPortFolio>> d;
  private int e = 0;
  private int f = 0;
  private boolean g = false;
  
  public static aa a(USETFCategory paramUSETFCategory)
  {
    aa localaa = new aa();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg_etf_category", paramUSETFCategory);
    localaa.e(localBundle);
    return localaa;
  }
  
  private void u()
  {
    if ((this.g) || (x() == null)) {}
    for (;;)
    {
      return;
      String str1 = this.b.getTitle();
      String[] arrayOfString = this.b.getTypes();
      this.f = arrayOfString.length;
      this.d = new ArrayList(this.f);
      final int i = 0;
      while (i < this.f)
      {
        this.d.add(null);
        String str2 = arrayOfString[i];
        str2 = String.format(Locale.CHINA, "%s-%s", new Object[] { str1, str2 });
        p local1 = new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(aa.this);
            com.xueqiu.android.base.util.aa.a(paramAnonymousy);
            if (aa.b(aa.this) == aa.c(aa.this)) {
              aa.d(aa.this);
            }
          }
        };
        x().a(local1, "US", "ETF", str2, "desc", "percent", 5, 1, new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        });
        i += 1;
      }
    }
  }
  
  public final void C_()
  {
    u();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903474, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.b = ((USETFCategory)this.r.getParcelable("arg_etf_category"));
    }
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    paramView = (SNBPullToRefreshListView)c(2131625547);
    paramView.setVerticalScrollBarEnabled(false);
    this.c = new u(f());
    paramView.setAdapter(this.c);
    if (this.a) {
      u();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */