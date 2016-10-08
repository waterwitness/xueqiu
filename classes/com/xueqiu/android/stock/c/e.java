package com.xueqiu.android.stock.c;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.model.F10Table;
import com.xueqiu.android.stock.view.TableFixHeaders;
import java.util.ArrayList;
import java.util.Comparator;

public final class e
  extends b
  implements l
{
  private String a;
  private ArrayList<JsonObject> ak = new ArrayList();
  private int al;
  private String am;
  private boolean an;
  private boolean ao = false;
  private String[] ap = { "每股收益", "每股净资产", "每股现金流", "净利润", "营业收入", "总资产" };
  private String[] aq = { "basiceps", "naps", "opercashpershare", "netprofit", "mainbusiincome", "totalassets" };
  private int[] ar;
  private String as = "order_desc";
  private String at = this.aq[0];
  private String b;
  private ViewGroup c;
  private TableFixHeaders d;
  private F10Table e;
  private JsonObject f;
  private int g;
  private ArrayList<JsonObject> h = new ArrayList();
  
  private void C()
  {
    if ((this.an) || (x() == null)) {
      return;
    }
    ai localai = x();
    String str = this.a;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        e.this.z();
        aa.a(paramAnonymousy, true);
      }
    };
    localai.i.i(str, local1);
  }
  
  public static e b(String paramString)
  {
    e locale = new e();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_symbol", paramString);
    locale.e(localBundle);
    return locale;
  }
  
  public final void C_()
  {
    C();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.c = ((ViewGroup)paramLayoutInflater.inflate(2130903362, paramViewGroup, false));
    this.c.requestDisallowInterceptTouchEvent(true);
    this.d = ((TableFixHeaders)this.c.findViewById(2131624340));
    this.d.setVisibility(8);
    if (this.ao)
    {
      y();
      C();
    }
    return this.c;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = this.r.getString("arg_symbol");
  }
  
  public final void u()
  {
    this.ao = true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */