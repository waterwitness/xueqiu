package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.cube.model.HistoryValue;
import java.util.ArrayList;
import java.util.List;

public class FundNvHistoryActivity
  extends b
{
  private PullToRefreshListView j;
  private List<HistoryValue> k = new ArrayList();
  private c p;
  private String q;
  private double r = 0.0D;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903103);
    this.q = getIntent().getStringExtra("extra_fund_symbol");
    if (this.q == null)
    {
      finish();
      return;
    }
    setTitle(getString(2131165554));
    this.j = ((PullToRefreshListView)findViewById(2131624309));
    this.p = new c(this);
    ((ListView)this.j.getRefreshableView()).setAdapter(this.p);
    paramBundle = com.xueqiu.android.base.q.a().b();
    String str = this.q;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.i.b(str, "all", local1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\FundNvHistoryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */