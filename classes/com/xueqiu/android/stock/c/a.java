package com.xueqiu.android.stock.c;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.a.u;
import com.xueqiu.android.stock.m;
import com.xueqiu.android.stock.model.OldPortFolio;
import java.util.ArrayList;
import org.json.JSONArray;

public final class a
  extends c
  implements l
{
  private u a = null;
  
  public static m C()
  {
    String[] arrayOfString = r.d(2131165328).split(",");
    m localm = new m();
    localm.g = 44;
    localm.c = arrayOfString[0];
    localm.d = arrayOfString[1];
    localm.e = arrayOfString[2];
    return localm;
  }
  
  public static a u()
  {
    return new a();
  }
  
  public final void C_() {}
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    return paramLayoutInflater.inflate(2130903474, paramViewGroup, false);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    paramView = (SNBPullToRefreshListView)this.T.findViewById(2131625547);
    paramView.setVerticalScrollBarEnabled(false);
    this.a = new u(f());
    paramView.setAdapter(this.a);
    if ((this.a == null) || (this.a.getCount() == 0))
    {
      paramView = com.xueqiu.android.base.b.ak.h[3];
      paramBundle = new Parser()
      {
        public final ArrayList parse(JSONArray paramAnonymousJSONArray)
        {
          return null;
        }
      };
      a(x().a(new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      }, "CN", "", paramView, "desc", "percent", 100, 1, paramBundle));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */