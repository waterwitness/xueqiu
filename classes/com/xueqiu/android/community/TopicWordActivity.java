package com.xueqiu.android.community;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.PagedGroup;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.model.HotEvent;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.widget.TransparentHeader;
import com.xueqiu.android.community.widget.j;
import com.xueqiu.android.community.widget.k;
import java.util.ArrayList;
import java.util.Iterator;
import rx.i;

public class TopicWordActivity
  extends b
  implements h
{
  j A;
  private int B;
  private View C;
  private Context D;
  private TransparentHeader E;
  private ImageButton F;
  private LinearLayout G;
  private Drawable H;
  LinearLayout j;
  LinearLayout k;
  ListView p;
  PullToRefreshListView q;
  FrameLayout r;
  long s = 1L;
  String t;
  String u;
  TextView v;
  ak w;
  String x = "hot";
  boolean y = true;
  FrameLayout z;
  
  static void a(LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    TextView localTextView = (TextView)paramLinearLayout.getChildAt(0);
    paramLinearLayout = paramLinearLayout.getChildAt(1);
    if (paramBoolean)
    {
      paramLinearLayout.setVisibility(0);
      localTextView.getPaint().setFakeBoldText(true);
    }
    for (;;)
    {
      localTextView.invalidate();
      return;
      localTextView.getPaint().setFakeBoldText(false);
      paramLinearLayout.setVisibility(4);
    }
  }
  
  private LinearLayout b(boolean paramBoolean)
  {
    Object localObject2 = k();
    Object localObject1 = k();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(r.c(2131230964), r.c(2131230963));
    localLayoutParams.gravity = 1;
    LinearLayout localLinearLayout1 = new LinearLayout(this.D);
    localLinearLayout1.setOrientation(0);
    localLinearLayout1.setBackgroundColor(-1);
    LinearLayout localLinearLayout2 = new LinearLayout(this.D);
    localLinearLayout2.setOrientation(1);
    ((TextView)localObject2).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        TopicWordActivity.this.x = "hot";
        TopicWordActivity.b(TopicWordActivity.this);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.j.getChildAt(0), true);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.j.getChildAt(1), false);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.k.getChildAt(0), true);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.k.getChildAt(1), false);
      }
    });
    ((TextView)localObject2).setText("热门话题");
    localLinearLayout2.addView((View)localObject2, new ViewGroup.LayoutParams(-1, r.c(2131230962)));
    localLinearLayout2.addView(l(), localLayoutParams);
    if (paramBoolean) {
      localLinearLayout2.addView(m(), new LinearLayout.LayoutParams(-1, 1));
    }
    localObject2 = new LinearLayout(this.D);
    ((LinearLayout)localObject2).setOrientation(1);
    ((TextView)localObject1).setText("最新话题");
    ((TextView)localObject1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        TopicWordActivity.this.x = "time";
        TopicWordActivity.b(TopicWordActivity.this);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.j.getChildAt(0), false);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.j.getChildAt(1), true);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.k.getChildAt(0), false);
        TopicWordActivity.a((LinearLayout)TopicWordActivity.this.k.getChildAt(1), true);
      }
    });
    ((LinearLayout)localObject2).addView((View)localObject1, new ViewGroup.LayoutParams(-1, r.c(2131230962)));
    localObject1 = l();
    ((View)localObject1).setVisibility(4);
    ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
    if (paramBoolean) {
      ((LinearLayout)localObject2).addView(m(), new LinearLayout.LayoutParams(-1, 1));
    }
    localLinearLayout1.addView(localLinearLayout2, new LinearLayout.LayoutParams(-2, -2, 1.0F));
    localLinearLayout1.addView((View)localObject2, new LinearLayout.LayoutParams(-2, -2, 1.0F));
    return localLinearLayout1;
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 1)
    {
      if (this.G == null)
      {
        this.G = new LinearLayout(this.D);
        this.G.setOrientation(1);
        localObject = new TextView(this.D);
        ((TextView)localObject).setGravity(17);
        ((TextView)localObject).setText(r.d(2131165710));
        ((TextView)localObject).setTextColor(r.a(2131558566));
        ((TextView)localObject).setTextSize(0, r.b(2131230965));
        this.G.addView((View)localObject, new LinearLayout.LayoutParams(-1, r.c(2131230962)));
        this.G.addView(m(), new LinearLayout.LayoutParams(-1, 1));
      }
      if (this.G.getParent() == null) {
        this.p.addHeaderView(this.G);
      }
      if (this.j.getVisibility() == 0) {
        this.p.setSelection(0);
      }
    }
    Object localObject = m.a();
    String str1 = this.x;
    String str2 = this.t;
    n local8 = new n()
    {
      public final void a(y paramAnonymousy)
      {
        v.a("solory", "sendRefreshRequest  erro  " + paramAnonymousy);
        TopicWordActivity.this.q.f();
        TopicWordActivity.c(TopicWordActivity.this);
      }
      
      public final void a(PagedGroup<Status> paramAnonymousPagedGroup)
      {
        TopicWordActivity.this.w.a(paramAnonymousPagedGroup);
        TopicWordActivity.this.w.notifyDataSetChanged();
        TopicWordActivity.this.q.f();
        TopicWordActivity.c(TopicWordActivity.this);
        TopicWordActivity localTopicWordActivity;
        if ((TextUtils.isEmpty(TopicWordActivity.this.u)) && (!TextUtils.isEmpty(paramAnonymousPagedGroup.mContent)))
        {
          paramAnonymousPagedGroup = (JsonObject)com.xueqiu.android.base.util.m.a().fromJson(paramAnonymousPagedGroup.mContent, JsonObject.class);
          localTopicWordActivity = TopicWordActivity.this;
          if (!paramAnonymousPagedGroup.has("content")) {
            break label124;
          }
        }
        label124:
        for (paramAnonymousPagedGroup = paramAnonymousPagedGroup.get("content").getAsString();; paramAnonymousPagedGroup = "")
        {
          localTopicWordActivity.u = paramAnonymousPagedGroup;
          TopicWordActivity.this.v.setText(TopicWordActivity.this.u);
          return;
        }
      }
    };
    q.a().b().a(str2, paramInt, str1, new m.1((m)localObject, local8, str1, str2));
  }
  
  private int j()
  {
    if (this.C == null) {
      return 0;
    }
    return -this.C.getTop();
  }
  
  private TextView k()
  {
    TextView localTextView = new TextView(this.D);
    localTextView.setTextSize(0, r.c(2131230965));
    localTextView.setTextColor(r.a(2131558668));
    localTextView.setGravity(17);
    return localTextView;
  }
  
  private View l()
  {
    View localView = new View(this.D);
    localView.setBackgroundColor(r.a(2131558566));
    return localView;
  }
  
  private View m()
  {
    View localView = new View(this.D);
    localView.setBackgroundColor(r.a(2131558587));
    return localView;
  }
  
  private void n()
  {
    if (this.z.getParent() != null) {
      ((ViewGroup)this.z.getParent()).removeView(this.z);
    }
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.r.getWindowToken(), 2);
  }
  
  public final void a()
  {
    PagedGroup localPagedGroup;
    if ((this.w.a() instanceof PagedGroup))
    {
      localPagedGroup = (PagedGroup)this.w.a();
      if (localPagedGroup.getMaxPage() <= localPagedGroup.getCurrentPage()) {
        this.q.f();
      }
    }
    else
    {
      return;
    }
    b(localPagedGroup.getCurrentPage() + 1);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Iterator localIterator;
    Status localStatus;
    if ((paramInt1 == 1) && (paramInt2 == 2))
    {
      long l = paramIntent.getLongExtra("delete_status_id", 0L);
      paramIntent = this.w.a();
      localIterator = paramIntent.iterator();
      while (localIterator.hasNext())
      {
        localStatus = (Status)localIterator.next();
        if (localStatus.getStatusId() == l) {
          paramIntent.remove(localStatus);
        }
      }
      this.w.notifyDataSetChanged();
    }
    do
    {
      do
      {
        return;
        while ((paramInt1 != 1) || (paramInt2 != 5)) {}
        paramIntent = (Status)paramIntent.getParcelableExtra("back_status");
        localIterator = this.w.a().iterator();
      } while (!localIterator.hasNext());
      localStatus = (Status)localIterator.next();
    } while (localStatus.getStatusId() != paramIntent.getStatusId());
    localStatus.setRetweetsCount(paramIntent.getRetweetsCount());
    localStatus.setCommentsCount(paramIntent.getCommentsCount());
    this.w.notifyDataSetChanged();
  }
  
  public void onBackPressed()
  {
    if ((this.z != null) && (this.z.getParent() != null)) {
      n();
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.D = this;
    paramBundle = getIntent().getExtras();
    if (paramBundle == null) {
      return;
    }
    switch (paramBundle.getInt("topic_bg", 0))
    {
    default: 
      this.H = r.h(2130837989);
    }
    for (;;)
    {
      paramBundle = (HotEvent)paramBundle.getParcelable("topic_data");
      this.t = paramBundle.getTag();
      this.u = paramBundle.getContent();
      this.s = paramBundle.getId();
      this.r = ((FrameLayout)View.inflate(this.D, 2130903183, null));
      this.q = ((PullToRefreshListView)this.r.findViewById(2131624554));
      this.q.setOnRefreshListener(this);
      this.p = ((ListView)((PullToRefreshListView)this.r.findViewById(2131624554)).getRefreshableView());
      this.p.setDividerHeight(0);
      this.p.setSelector(r.h(2130838625));
      this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Status)TopicWordActivity.this.p.getAdapter().getItem(paramAnonymousInt);
          paramAnonymousView = new Intent(TopicWordActivity.this, StatusDetailActivity.class);
          paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
          TopicWordActivity.this.startActivityForResult(paramAnonymousView, 1);
        }
      });
      paramBundle = new LinearLayout(this.D);
      paramBundle.setClickable(false);
      paramBundle.setOrientation(1);
      Object localObject = new TextView(this.D);
      com.xueqiu.android.base.util.a.a(paramBundle, this.H);
      ((TextView)localObject).setText(this.t);
      ((TextView)localObject).setPadding(0, (int)ay.a(100.0F), 0, (int)ay.a(2.0F));
      ((TextView)localObject).setGravity(81);
      ((TextView)localObject).setTextColor(-1);
      ((TextView)localObject).setTextSize(0, r.c(2131230970));
      paramBundle.addView((View)localObject, new LinearLayout.LayoutParams(-1, -2));
      this.v = new TextView(this.D);
      int i = r.c(2131230966);
      int m = r.c(2131230968);
      this.v.setPadding(i, m, i, 0);
      this.v.setGravity(49);
      this.v.setText(this.u);
      this.v.setBackgroundResource(2130838624);
      this.v.setTextSize(0, r.c(2131230967));
      this.v.setTextColor(-1);
      paramBundle.addView(this.v, new LinearLayout.LayoutParams(-1, -2));
      paramBundle.setLayoutParams(new AbsListView.LayoutParams(-1, r.c(2131230969)));
      this.C = paramBundle;
      this.k = b(false);
      this.p.addHeaderView(this.C);
      this.p.addHeaderView(this.k);
      this.j = b(true);
      this.j.setVisibility(8);
      this.w = new ak(this);
      this.p.setAdapter(this.w);
      paramBundle = new FrameLayout.LayoutParams(-1, -2);
      paramBundle.gravity = 48;
      paramBundle.topMargin = TransparentHeader.a;
      this.r.addView(this.j, paramBundle);
      b(1);
      this.p.setOnScrollListener(new AbsListView.OnScrollListener()
      {
        public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          TopicWordActivity.a(TopicWordActivity.this, paramAnonymousInt1);
          TopicWordActivity.b(TopicWordActivity.this, paramAnonymousInt1);
        }
        
        public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
      });
      paramBundle = View.inflate(this.D, 2130903226, null);
      localObject = new FrameLayout.LayoutParams(-1, -2, 80);
      ((TextView)paramBundle.findViewById(2131624695)).setHint(this.t);
      paramBundle.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          TopicWordActivity.a(TopicWordActivity.this);
        }
      });
      this.r.addView(paramBundle, (ViewGroup.LayoutParams)localObject);
      a((LinearLayout)this.j.getChildAt(0), true);
      a((LinearLayout)this.j.getChildAt(1), false);
      a((LinearLayout)this.k.getChildAt(0), true);
      a((LinearLayout)this.k.getChildAt(1), false);
      setContentView(this.r);
      this.i.b().d();
      this.E = ((TransparentHeader)findViewById(2131624217));
      this.F = this.E.getBackButton();
      this.F.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          TopicWordActivity.this.finish();
        }
      });
      this.E.setHeaderBackground(((BitmapDrawable)this.H).getBitmap());
      this.E.setTitle(this.t);
      return;
      this.H = r.h(2130837989);
      continue;
      this.H = r.h(2130837990);
      continue;
      this.H = r.h(2130837991);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    m localm = m.a();
    localm.a = null;
    localm.b = null;
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    long l;
    if ((paramBoolean) && (this.C != null))
    {
      this.B = this.C.getHeight();
      if (this.y)
      {
        this.y = false;
        localObject = m.a();
        String str = this.t;
        l = ("hot" + str).hashCode();
        if (!"time".equals("hot")) {
          break label166;
        }
        if (((m)localObject).a == null) {
          ((m)localObject).a = m.a(l);
        }
        if ((((m)localObject).a != null) && (((m)localObject).a.mID != l)) {
          ((m)localObject).a = null;
        }
      }
    }
    for (Object localObject = ((m)localObject).a;; localObject = ((m)localObject).b)
    {
      if ((localObject != null) && ((this.w.a() == null) || (this.w.a().size() == 0))) {
        this.w.a((ArrayList)localObject);
      }
      return;
      label166:
      if (((m)localObject).b == null) {
        ((m)localObject).b = m.a(l);
      }
      if ((((m)localObject).b != null) && (((m)localObject).b.mID != l)) {
        ((m)localObject).b = null;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\TopicWordActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */