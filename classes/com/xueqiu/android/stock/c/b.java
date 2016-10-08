package com.xueqiu.android.stock.c;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.a.d;
import com.xueqiu.android.stock.model.F10Page;

public class b
  extends c
  implements l
{
  private String a;
  private int b;
  private ListView c;
  private View d;
  private d e;
  private boolean f = false;
  private boolean g = false;
  
  private void C()
  {
    if ((this.f) || (x() == null)) {
      return;
    }
    ai localai = x();
    String str = this.a;
    int i = this.b;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    };
    localai.i.b(str, i, local1);
  }
  
  public static b a(String paramString, int paramInt)
  {
    b localb = new b();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_symbol", paramString);
    localBundle.putInt("arg_page", paramInt);
    localb.e(localBundle);
    return localb;
  }
  
  public void C_()
  {
    C();
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    this.d = paramLayoutInflater.inflate(2130903355, paramViewGroup, false);
    this.c = ((ListView)this.d.findViewById(2131625174));
    this.e = new d(f());
    this.c.setAdapter(this.e);
    if (this.g) {
      C();
    }
    return this.d;
  }
  
  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = this.r.getString("arg_symbol");
    this.b = this.r.getInt("arg_page");
  }
  
  public void u()
  {
    this.g = true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */