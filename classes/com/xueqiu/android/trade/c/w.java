package com.xueqiu.android.trade.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.i;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.q;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.trade.b.n;
import com.xueqiu.android.trade.b.o;
import com.xueqiu.android.trade.model.TradeNotification;
import java.util.ArrayList;
import java.util.List;

public class w
  extends com.xueqiu.android.base.k<n>
  implements o
{
  private PullToRefreshListView b = null;
  private com.xueqiu.android.trade.a.k c;
  private long d;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903387, paramViewGroup, false);
  }
  
  public final void a()
  {
    this.b.setPullToRefreshEnabled(false);
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    d(2131166311);
  }
  
  public final void a(final View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.b = ((PullToRefreshListView)paramView.findViewById(2131625278));
    this.b.setPullLabel("加载中...");
    this.b.setReleaseLabel("加载中...");
    this.b.setDisableScrollingWhileRefreshing(true);
    this.b.setPullToRefreshEnabled(true);
    this.b.setOnRefreshListener(new h()
    {
      public final void a()
      {
        if (w.a(w.this) > 0L)
        {
          ((n)w.b(w.this)).a(w.a(w.this));
          return;
        }
        ((n)w.c(w.this)).c();
      }
    });
    this.c = new com.xueqiu.android.trade.a.k(f());
    paramView = (ListView)this.b.getRefreshableView();
    paramView.setAdapter(this.c);
    paramView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (TradeNotification)w.d(w.this).a().get(paramAnonymousInt - paramView.getHeaderViewsCount());
        if (!TextUtils.isEmpty(paramAnonymousAdapterView.getUrl())) {
          q.a(paramAnonymousAdapterView.getUrl(), w.this.f());
        }
      }
    });
    paramView = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView.getId() == 2131625279) {
          q.a(v.b("/broker/open/pingan?from=imfootbar"), w.this.f());
        }
        do
        {
          return;
          if (paramAnonymousView.getId() == 2131625280)
          {
            q.a(v.b("/broker/open/dyzq?from=imfootbar"), w.this.f());
            return;
          }
        } while (paramAnonymousView.getId() != 2131625281);
        q.a(v.b("/broker/trade/qa"), w.this.f());
      }
    };
    this.T.findViewById(2131625279).setOnClickListener(paramView);
    this.T.findViewById(2131625280).setOnClickListener(paramView);
    this.T.findViewById(2131625281).setOnClickListener(paramView);
    ((n)this.a).c();
    com.xueqiu.android.message.client.c.l.a(Integer.valueOf(0));
  }
  
  public final void a(ArrayList<TradeNotification> paramArrayList)
  {
    if (paramArrayList.size() > 0) {
      this.d = ((TradeNotification)paramArrayList.get(paramArrayList.size() - 1)).getId();
    }
    this.c.a().addAll(paramArrayList);
    this.c.notifyDataSetChanged();
    ((ListView)this.b.getRefreshableView()).setSelectionFromTop(paramArrayList.size() + 1, (int)ay.a(f(), 50.0F));
    this.b.f();
  }
  
  public final void c()
  {
    this.b.f();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */