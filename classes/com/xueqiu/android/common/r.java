package com.xueqiu.android.common;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.community.model.HomeTimelineStatusGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;

public class r<T>
{
  public SNBPullToRefreshListView a = null;
  t<T> b = null;
  public d<T> c = null;
  public boolean d = true;
  int e = 0;
  public int f = 20;
  private Context g = null;
  private n<ArrayList<T>> h = null;
  private boolean i = true;
  private h j = new h()
  {
    public final void a()
    {
      r.a(r.this, false);
      r.this.a.e();
    }
  };
  private View.OnClickListener k = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      r.a(r.this, true);
    }
  };
  
  public r(SNBPullToRefreshListView paramSNBPullToRefreshListView, t<T> paramt)
  {
    this.b = paramt;
    this.g = paramSNBPullToRefreshListView.getContext();
    this.a = paramSNBPullToRefreshListView;
    boolean bool = DefaultPrefs.getBoolean(com.xueqiu.android.base.r.d(2131165658), false, this.g);
    ((ListView)this.a.getRefreshableView()).setFastScrollEnabled(bool);
    this.a.setOnRefreshListener(this.j);
    this.a.setOnMoreClickListener(this.k);
  }
  
  public final void a(int paramInt)
  {
    this.a.setEmptyViewImage(paramInt);
  }
  
  public final void a(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.a.setOnScrollListener(paramOnScrollListener);
  }
  
  public final void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    d().setOnItemClickListener(paramOnItemClickListener);
  }
  
  public final void a(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    d().setOnItemLongClickListener(paramOnItemLongClickListener);
  }
  
  public final void a(d<T> paramd)
  {
    this.c = paramd;
    this.c.registerDataSetObserver(new s(new WeakReference(this)));
    if (this.c.getCount() > 0) {
      b();
    }
    this.a.setAdapter(this.c);
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    this.a.setEmptyViewDesc(paramCharSequence);
  }
  
  public final void a(ArrayList<T> paramArrayList)
  {
    this.c.a(paramArrayList);
  }
  
  public void a(ArrayList<T> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    this.b.a(paramArrayList, paramThrowable, paramBoolean);
    if (paramArrayList == null) {
      paramArrayList = new ArrayList();
    }
    for (;;)
    {
      ListView localListView = d();
      ArrayList localArrayList = this.c.a();
      if (paramThrowable != null)
      {
        if ((localArrayList == null) || (localArrayList.size() == 0)) {
          this.a.a(paramThrowable);
        }
        this.a.f();
        return;
      }
      if (this.a.getMode() == 1) {
        if (paramBoolean) {
          localArrayList.addAll(paramArrayList);
        }
      }
      for (;;)
      {
        this.c.notifyDataSetChanged();
        this.a.f();
        if ((this.c.getCount() != 0) || (!this.d)) {
          break;
        }
        this.a.d();
        return;
        localArrayList.addAll(0, paramArrayList);
        continue;
        if (this.a.getMode() == 2)
        {
          Collections.reverse(paramArrayList);
          if (paramBoolean) {
            localArrayList.addAll(0, paramArrayList);
          } else {
            localArrayList.addAll(paramArrayList);
          }
        }
      }
      int m;
      boolean bool;
      if (((ListView)this.a.a).findViewById(2131624257) != null)
      {
        m = 1;
        if (m != 0) {
          this.a.e();
        }
        if (!(paramArrayList instanceof PagedGroup)) {
          break label290;
        }
        bool = ((PagedGroup)paramArrayList).hasMore();
      }
      for (;;)
      {
        label233:
        if ((bool) && (this.i))
        {
          this.a.a();
          label252:
          if (this.a.getMode() == 2)
          {
            if (!paramBoolean) {
              break label380;
            }
            localListView.setSelection(paramArrayList.size());
          }
        }
        for (;;)
        {
          v.a("SBListView", "request data complete");
          return;
          m = 0;
          break;
          label290:
          if ((paramArrayList instanceof HomeTimelineStatusGroup))
          {
            bool = ((HomeTimelineStatusGroup)paramArrayList).hasMore();
            break label233;
          }
          if (((paramBoolean) || ((localArrayList != null) && (localArrayList.size() < this.f))) && (this.e < this.f))
          {
            bool = false;
            break label233;
          }
          if (!this.i) {
            break label395;
          }
          bool = true;
          break label233;
          if (!this.a.c()) {
            break label252;
          }
          this.a.b();
          break label252;
          label380:
          localListView.setSelection(this.c.getCount());
        }
        label395:
        bool = true;
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.setRefreshing(true);
      return;
    }
    this.a.k();
  }
  
  public final boolean a()
  {
    this.a.f();
    if ((this.h != null) && (!this.h.h))
    {
      this.h.h = true;
      return true;
    }
    return false;
  }
  
  final void b()
  {
    if (this.c == null) {
      return;
    }
    if ((this.i) && (this.c.getCount() > 0)) {
      this.a.a();
    }
    while ((this.c.getCount() == 0) && (this.d))
    {
      this.a.d();
      return;
      this.a.b();
    }
    this.a.e();
  }
  
  public final void b(boolean paramBoolean)
  {
    this.i = paramBoolean;
    b();
  }
  
  public final void c()
  {
    if ((this.c != null) && (this.c.a() != null)) {
      this.c.a().clear();
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    this.a.setPullToRefreshEnabled(paramBoolean);
  }
  
  public final ListView d()
  {
    return (ListView)this.a.getRefreshableView();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */