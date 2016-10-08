package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.d.a.b.e;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ar;
import com.xueqiu.android.community.b.l;
import com.xueqiu.android.community.model.TopicInfo;
import java.util.ArrayList;

public class TopicFeaturedListActivity
  extends j<com.xueqiu.android.community.d.d>
  implements l
{
  private SNBPullToRefreshListView p;
  private LinearLayout q;
  private View r;
  private ar s;
  private View t;
  private View u;
  private com.d.a.b.f v = com.d.a.b.f.a();
  private o w = new o();
  private com.d.a.b.d x;
  
  public TopicFeaturedListActivity()
  {
    e locale = n.a();
    locale.c = 2130837879;
    locale.b = 2130837879;
    locale.a = 2130837879;
    this.x = locale.b();
  }
  
  public final void a(ArrayList<TopicInfo> paramArrayList)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
    int i = 0;
    while (i < paramArrayList.size())
    {
      View localView = LayoutInflater.from(this).inflate(2130903148, null);
      localView.setLayoutParams(localLayoutParams);
      final TopicInfo localTopicInfo = (TopicInfo)paramArrayList.get(i);
      ((TextView)localView.findViewById(2131624415)).setText(localTopicInfo.getTopicTitle());
      ImageView localImageView = (ImageView)localView.findViewById(2131624414);
      String str = localTopicInfo.getTopicPicHeader();
      this.v.a(str, localImageView, this.x, this.w);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          long l = localTopicInfo.getTopicId();
          paramAnonymousView = new Intent(TopicFeaturedListActivity.this, TopicDetailActivity.class);
          paramAnonymousView.putExtra("topic_id", l);
          TopicFeaturedListActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2000, 1);
          paramAnonymousView.addProperty("special_id", String.valueOf(l));
          i.a().a(paramAnonymousView);
        }
      });
      this.q.addView(localView);
      i += 1;
    }
    ((ListView)this.p.getRefreshableView()).addHeaderView(this.r);
  }
  
  public final void a(boolean paramBoolean, ArrayList<TopicInfo> paramArrayList)
  {
    this.p.f();
    if (paramBoolean) {
      this.s.a().addAll(paramArrayList);
    }
    for (;;)
    {
      this.s.notifyDataSetChanged();
      return;
      this.s.a().clear();
      this.s.a().addAll(paramArrayList);
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    View localView = this.t;
    if (paramBoolean) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  protected final void e()
  {
    b.a();
    if (b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public final void j()
  {
    this.u.setVisibility(8);
  }
  
  public final void k()
  {
    i();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903227);
    this.i.b().a("专题");
    this.r = View.inflate(this, 2130903147, null);
    this.q = ((LinearLayout)this.r.findViewById(2131624419));
    this.s = new ar(this);
    this.p = ((SNBPullToRefreshListView)findViewById(2131624309));
    this.t = View.inflate(this, 2130903575, null);
    this.u = View.inflate(this, 2130903580, null);
    ((ListView)this.p.getRefreshableView()).setDivider(null);
    this.p.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
    {
      public final void a()
      {
        ((com.xueqiu.android.community.d.d)TopicFeaturedListActivity.a(TopicFeaturedListActivity.this)).a(false);
      }
    });
    this.p.setOnMoreClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ((com.xueqiu.android.community.d.d)TopicFeaturedListActivity.b(TopicFeaturedListActivity.this)).a(true);
      }
    });
    ((ListView)this.p.getRefreshableView()).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt > 0)
        {
          paramAnonymousAdapterView = (TopicInfo)TopicFeaturedListActivity.c(TopicFeaturedListActivity.this).a().get(paramAnonymousInt - 2);
          paramAnonymousView = new Intent(TopicFeaturedListActivity.this, TopicDetailActivity.class);
          paramAnonymousView.putExtra("topic_id", paramAnonymousAdapterView.getTopicId());
          TopicFeaturedListActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2000, 2);
          paramAnonymousView.addProperty("special_id", String.valueOf(paramAnonymousAdapterView.getTopicId()));
          i.a().a(paramAnonymousView);
        }
      }
    });
    this.p.setAdapter(this.s);
    ((ListView)this.p.getRefreshableView()).addFooterView(this.u);
    addContentView(this.t, new ViewGroup.LayoutParams(-1, -1));
    b(true);
    h();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\TopicFeaturedListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */