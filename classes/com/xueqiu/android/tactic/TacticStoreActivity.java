package com.xueqiu.android.tactic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.k;
import android.view.Menu;
import android.view.MenuItem;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.al;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.tactic.d.g;
import java.util.ArrayList;
import java.util.List;

public class TacticStoreActivity
  extends b
{
  final int j = 1;
  private RecyclerView k;
  private com.xueqiu.android.tactic.a.h p;
  private k q;
  private List<g> r;
  private int s = 0;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903516);
    setTitle(getString(2131166192));
    this.s = getIntent().getIntExtra("extra_category", 0);
    this.r = new ArrayList();
    this.q = new k(1);
    this.k = ((RecyclerView)findViewById(2131625637));
    this.k.setLayoutManager(this.q);
    this.p = new com.xueqiu.android.tactic.a.h(this.r, this);
    this.k.setAdapter(this.p);
    paramBundle = com.xueqiu.android.base.q.a().b();
    int i = this.s;
    p local1 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    };
    paramBundle.n.a(i, local1);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.add(0, 1, 0, "特权管理");
    localMenuItem.setIcon(2130838556);
    ak.a(localMenuItem, 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      i.a().a(new SNBEvent(2300, 2));
      startActivity(new Intent(this, TacticSubscribeActivity.class));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\TacticStoreActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */