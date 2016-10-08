package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLayoutChangeListener;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.j;
import com.android.volley.x;
import com.d.a.b.f;
import com.d.a.b.f.c;
import com.xueqiu.android.base.b;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;

public class SNBPullToRefreshListView
  extends PullToRefreshListView
{
  private View.OnClickListener d = null;
  private AbsListView.OnScrollListener e = null;
  private int f;
  private CharSequence g;
  private View h = null;
  private AbsListView.OnScrollListener i = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if ((SNBPullToRefreshListView.this.c()) && (SNBPullToRefreshListView.this.i()) && (paramAnonymousInt == 0) && (SNBPullToRefreshListView.c(SNBPullToRefreshListView.this) != null) && (SNBPullToRefreshListView.this.getMode() == 1))
      {
        SNBPullToRefreshListView.c(SNBPullToRefreshListView.this).onClick(null);
        SNBPullToRefreshListView.this.invalidate();
      }
    }
  };
  
  public SNBPullToRefreshListView(Context paramContext)
  {
    super(paramContext);
    n();
  }
  
  public SNBPullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    n();
  }
  
  private void n()
  {
    this.e = new c(f.a(), false, true, this.i);
    super.setOnScrollListener(this.e);
    this.g = getResources().getString(2131165495);
    b.a();
    if (b.i())
    {
      this.f = 2130837915;
      return;
    }
    this.f = 2130837914;
  }
  
  private void setLoadMoreProgressVisibility(int paramInt)
  {
    View localView = findViewById(2131625836);
    if (localView != null) {
      localView.setVisibility(paramInt);
    }
  }
  
  public final void a()
  {
    View localView;
    if (findViewById(2131625834) == null)
    {
      localView = LayoutInflater.from(getContext()).inflate(2130903580, null);
      if ((getMode() != 2) || (((ListView)getRefreshableView()).getAdapter() != null)) {
        break label68;
      }
      ((ListView)getRefreshableView()).addHeaderView(localView);
    }
    for (;;)
    {
      localView.setOnClickListener(this.d);
      invalidate();
      return;
      label68:
      if (getMode() == 1) {
        ((ListView)getRefreshableView()).addFooterView(localView);
      }
    }
  }
  
  public final void a(final CharSequence paramCharSequence, final int paramInt)
  {
    b();
    ListView localListView = (ListView)getRefreshableView();
    if (localListView.getHeight() == 0)
    {
      localListView.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          SNBPullToRefreshListView.this.a(paramCharSequence, paramInt);
          ((ListView)SNBPullToRefreshListView.this.getRefreshableView()).removeOnLayoutChangeListener(this);
        }
      });
      return;
    }
    Object localObject2 = findViewById(2131624257);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      if (this.h == null) {
        break label187;
      }
      localObject1 = this.h;
      if ((localListView.getHeaderViewsCount() <= 1) || (localListView.getChildCount() < localListView.getHeaderViewsCount())) {
        break label204;
      }
    }
    label187:
    label204:
    for (int j = Math.max(getResources().getDimensionPixelSize(2131230804), localListView.getHeight() - localListView.getChildAt(localListView.getHeaderViewsCount() - 1).getBottom());; j = localListView.getHeight())
    {
      ((View)localObject1).setLayoutParams(new AbsListView.LayoutParams(-1, j));
      localListView.addFooterView((View)localObject1, null, false);
      localListView.setHeaderDividersEnabled(false);
      invalidate();
      localObject2 = (TextView)((View)localObject1).findViewById(2131624334);
      localObject1 = (ImageView)((View)localObject1).findViewById(2131624093);
      ((TextView)localObject2).setText(paramCharSequence);
      ((ImageView)localObject1).setImageResource(paramInt);
      return;
      localObject1 = LayoutInflater.from(getContext()).inflate(2130903575, null);
      break;
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (((paramThrowable instanceof SocketTimeoutException)) || ((paramThrowable instanceof x))) {
      paramThrowable = "请求服务端超时，请重试!";
    }
    for (;;)
    {
      a(paramThrowable, 2130837916);
      return;
      if ((paramThrowable instanceof SocketException)) {
        paramThrowable = "请求没有响应，请检查网络连接是否正常";
      } else if (((paramThrowable instanceof IOException)) || ((paramThrowable instanceof j))) {
        paramThrowable = "网络不可用，请检查网络连接是否正常";
      } else {
        paramThrowable = getContext().getString(2131165945);
      }
    }
  }
  
  public final void b()
  {
    View localView = findViewById(2131625834);
    if ((localView != null) && (((ListView)getRefreshableView()).getAdapter() != null))
    {
      if (getMode() == 2) {
        ((ListView)this.a).removeHeaderView(localView);
      }
    }
    else {
      return;
    }
    ((ListView)this.a).removeFooterView(localView);
  }
  
  public final boolean c()
  {
    return findViewById(2131625834) != null;
  }
  
  public final void d()
  {
    a(this.g, this.f);
  }
  
  public final void e()
  {
    View localView = findViewById(2131624257);
    if (localView != null) {
      ((ListView)this.a).removeFooterView(localView);
    }
  }
  
  public final void f()
  {
    int k = 0;
    super.f();
    View localView = findViewById(2131625836);
    int j = k;
    if (localView != null)
    {
      j = k;
      if (localView.getVisibility() == 0) {
        j = 1;
      }
    }
    if (j != 0) {
      setLoadMoreProgressVisibility(4);
    }
  }
  
  public View getCustomerEmptyView()
  {
    return this.h;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
  }
  
  public boolean performClick()
  {
    if (!j()) {
      return super.performClick();
    }
    return false;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    ((ListView)getRefreshableView()).setAdapter(paramListAdapter);
  }
  
  public void setCustomerEmptyView(View paramView)
  {
    this.h = paramView;
  }
  
  public void setEmptyViewDesc(CharSequence paramCharSequence)
  {
    this.g = paramCharSequence;
  }
  
  public void setEmptyViewImage(int paramInt)
  {
    this.f = paramInt;
  }
  
  public void setOnMoreClickListener(final View.OnClickListener paramOnClickListener)
  {
    this.d = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        SNBPullToRefreshListView.a(SNBPullToRefreshListView.this);
        paramOnClickListener.onClick(paramAnonymousView);
      }
    };
  }
  
  public void setOnScrollListener(final AbsListView.OnScrollListener paramOnScrollListener)
  {
    super.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (SNBPullToRefreshListView.b(SNBPullToRefreshListView.this) != null) {
          SNBPullToRefreshListView.b(SNBPullToRefreshListView.this).onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
        }
        if (paramOnScrollListener != null) {
          paramOnScrollListener.onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if (SNBPullToRefreshListView.b(SNBPullToRefreshListView.this) != null) {
          SNBPullToRefreshListView.b(SNBPullToRefreshListView.this).onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
        }
        if (paramOnScrollListener != null) {
          paramOnScrollListener.onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SNBPullToRefreshListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */