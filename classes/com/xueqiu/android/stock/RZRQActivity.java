package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.stock.view.TableFixHeaders;

public class RZRQActivity
  extends b
  implements q
{
  private String j;
  private String k = "";
  private TableFixHeaders p;
  private String[] q = { "融资余额", "融资买入额", "融资偿还额", "融券余量", "融券卖出量", "融券偿还量" };
  private String[] r = { "finbalance", "finbuyamt", "finrepayamt", "mrgnresqty", "mrgnsellamt", "mrgnrepayamt" };
  private JsonArray s;
  private boolean t = false;
  
  public final void j()
  {
    this.t = true;
  }
  
  public final void k()
  {
    this.t = false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = getIntent().getStringExtra("extra_symbol");
    setTitle("融资融券");
    setContentView(2130903114);
    this.p = ((TableFixHeaders)findViewById(2131624340));
    this.p.setTouchListener(this);
    this.p.setVisibility(8);
    paramBundle = new SNBEvent(1601, 4);
    paramBundle.addProperty("symbol", this.j);
    i.a().a(paramBundle);
    paramBundle = com.xueqiu.android.base.q.a().b();
    String str = this.j;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    };
    paramBundle.i.h(str, local1);
  }
  
  protected final Boolean w_()
  {
    if (this.t) {
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\RZRQActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */