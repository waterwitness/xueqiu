package com.xueqiu.android.tactic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ak;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.xueqiu.android.base.j;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.tactic.b.c;
import java.util.ArrayList;

public class MyPushListActivity
  extends j<com.xueqiu.android.tactic.e.a>
  implements c
{
  final int p = 1;
  private SNBPullToRefreshListView q;
  private View r;
  private View s;
  private long t = 0L;
  private long u = 0L;
  private com.xueqiu.android.tactic.a.a v;
  
  public final void a(ArrayList<com.xueqiu.android.tactic.d.h> paramArrayList)
  {
    this.v.a().addAll(paramArrayList);
    this.v.notifyDataSetChanged();
    this.q.f();
  }
  
  public final void b(boolean paramBoolean)
  {
    View localView = this.s;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public final void j()
  {
    this.q.f();
    this.s.setVisibility(0);
  }
  
  public final void k()
  {
    this.q.setEmptyView(this.r);
    this.v.notifyDataSetChanged();
    this.q.f();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903510);
    setTitle(getString(2131166185));
    this.r = LayoutInflater.from(this).inflate(2130903511, null, false);
    this.r.setVisibility(0);
    this.q = ((SNBPullToRefreshListView)findViewById(2131624309));
    this.s = LayoutInflater.from(this).inflate(2130903580, null, false);
    this.s.setVisibility(8);
    ((ListView)this.q.getRefreshableView()).addFooterView(this.s);
    this.v = new com.xueqiu.android.tactic.a.a(this);
    this.q.setAdapter(this.v);
    this.q.setOnMoreClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.tactic.e.a)MyPushListActivity.a(MyPushListActivity.this)).a(true);
      }
    });
    this.q.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
    {
      public final void a()
      {
        ((com.xueqiu.android.tactic.e.a)MyPushListActivity.b(MyPushListActivity.this)).a(false);
      }
    });
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
      startActivity(new Intent(this, TacticSubscribeActivity.class));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void refresh(ArrayList<com.xueqiu.android.tactic.d.h> paramArrayList, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.v.a().clear();
      this.v.a().addAll(paramArrayList);
    }
    for (;;)
    {
      this.v.notifyDataSetChanged();
      this.q.f();
      return;
      this.v.a().addAll(0, paramArrayList);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\MyPushListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */