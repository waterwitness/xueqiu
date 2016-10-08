package com.xueqiu.android.stock.c;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.view.TableFixHeaders;
import java.util.ArrayList;

public final class c
  extends com.xueqiu.android.common.c
  implements l
{
  public boolean a = false;
  private ArrayList<String> ak = new ArrayList();
  private TableFixHeaders al;
  private JsonArray am;
  private View an;
  private boolean ao = false;
  private String b;
  private String c = "";
  private String d;
  private boolean e;
  private String f;
  private JsonObject g;
  private ArrayList<String> h = new ArrayList();
  
  private p<JsonObject> C()
  {
    new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    };
  }
  
  public static c a(String paramString1, String paramString2, boolean paramBoolean)
  {
    c localc = new c();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_symbol", paramString1);
    localBundle.putString("arg_page_type", paramString2);
    localBundle.putBoolean("arg_is_year", paramBoolean);
    localc.e(localBundle);
    return localc;
  }
  
  private void u()
  {
    if ((this.ao) || (x() == null)) {}
    do
    {
      return;
      if (this.d.equals("ZCFZB"))
      {
        localai = x();
        str = this.b;
        bool = this.e;
        localp = C();
        localai.i.a(str, bool, localp);
        return;
      }
      if (this.d.equals("XJLLB"))
      {
        localai = x();
        str = this.b;
        bool = this.e;
        localp = C();
        localai.i.c(str, bool, localp);
        return;
      }
    } while (!this.d.equals("GSLRB"));
    ai localai = x();
    String str = this.b;
    boolean bool = this.e;
    p localp = C();
    localai.i.b(str, bool, localp);
  }
  
  public final void C_()
  {
    u();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.an = paramLayoutInflater.inflate(2130903356, paramViewGroup, false);
    this.al = ((TableFixHeaders)this.an.findViewById(2131624340));
    this.al.setVisibility(8);
    if (this.a) {
      u();
    }
    return this.an;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.b = this.r.getString("arg_symbol");
    this.d = this.r.getString("arg_page_type");
    this.e = this.r.getBoolean("arg_is_year");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */