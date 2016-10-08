package com.xueqiu.android.community.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.a.k;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.c.c;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.MyActivity;
import com.xueqiu.android.common.model.EnterButton;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.USearchActivity;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.model.PublicTimeline;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Editorial;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.c.b;

public class o
  extends com.xueqiu.android.common.e
  implements com.xueqiu.android.common.d
{
  private int aA;
  private long aB;
  private long aC;
  private TextView ak;
  private List<PublicTimeline> al = new ArrayList();
  private com.d.a.b.d am;
  private f an;
  private com.xueqiu.android.base.util.o ao;
  private long ap;
  private long aq;
  private BroadcastReceiver ar;
  private BroadcastReceiver as;
  private BroadcastReceiver at;
  private View au;
  private int av;
  private int aw;
  private int ax;
  private int ay;
  private boolean az;
  private SNBPullToRefreshListView b;
  private ViewPager c;
  private CirclePageIndicator d;
  private View e;
  private com.xueqiu.android.community.a.o f;
  private LinearLayout g;
  private LinearLayout h;
  
  public o()
  {
    com.d.a.b.e locale = n.a();
    locale.c = 2130837879;
    locale.b = 2130837879;
    locale.a = 2130837879;
    this.am = locale.b();
    this.an = f.a();
    this.ao = new com.xueqiu.android.base.util.o();
    this.ar = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        o.a(o.this);
      }
    };
    this.as = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        o.b(o.this);
      }
    };
    this.at = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if ((paramAnonymousIntent == null) || (o.c(o.this) == null)) {
          return;
        }
        boolean bool = paramAnonymousIntent.getBooleanExtra("extra_search_text_exist", false);
        paramAnonymousContext = paramAnonymousIntent.getStringExtra("extra_search_text");
        if (Boolean.valueOf(bool).booleanValue())
        {
          o.c(o.this).setText(paramAnonymousContext);
          return;
        }
        o.c(o.this).setText(o.this.a(2131166028));
      }
    };
    this.av = 0;
    this.aw = 0;
    this.ax = 0;
    this.ay = 0;
    this.az = true;
    this.aA = 0;
    this.aB = -1L;
    this.aC = 0L;
  }
  
  private View C()
  {
    int i = (int)ay.a(12.0F);
    View localView = new View(f());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(1, -1);
    localLayoutParams.setMargins(0, i, 0, i);
    localView.setLayoutParams(localLayoutParams);
    localView.setBackgroundResource(f().getTheme().obtainStyledAttributes(new int[] { 2130772270 }).getResourceId(0, 2131558698));
    return localView;
  }
  
  private void D()
  {
    ImageView localImageView = (ImageView)this.au.findViewById(2131624430);
    Object localObject1 = n.a();
    ((com.d.a.b.e)localObject1).c = 2130838024;
    ((com.d.a.b.e)localObject1).b = 2130838024;
    ((com.d.a.b.e)localObject1).a = 2130838024;
    ((com.d.a.b.e)localObject1).q = new c((int)ay.a(35.0F));
    com.d.a.b.d locald = ((com.d.a.b.e)localObject1).b();
    Object localObject2 = null;
    localObject1 = localObject2;
    if (!u.a().d)
    {
      localObject1 = DBManager.getInstance();
      u.a();
      localObject1 = ((DBManager)localObject1).queryUserByUserId(UserLogonDataPrefs.getLogonUserId());
      if (localObject1 == null) {
        break label112;
      }
    }
    for (localObject1 = ((User)localObject1).getProfileImageUrl();; localObject1 = localObject2)
    {
      this.an.a((String)localObject1, localImageView, locald, this.ao);
      return;
      label112:
      localObject1 = x();
      u.a();
      ((ai)localObject1).g(UserLogonDataPrefs.getLogonUserId(), new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
    }
  }
  
  private void E()
  {
    if (this.b != null)
    {
      boolean bool = DefaultPrefs.getBoolean(com.xueqiu.android.base.r.d(2131165658), false, f());
      ((ListView)this.b.getRefreshableView()).setFastScrollEnabled(bool);
    }
  }
  
  private void a(long paramLong1, long paramLong2, final boolean paramBoolean)
  {
    Object localObject;
    if (!paramBoolean)
    {
      long l = System.currentTimeMillis();
      UserPrefs.setLong(f(), "last_refresh_time", l);
      if (this.aB < paramLong1)
      {
        this.aB = paramLong1;
        localObject = new SNBEvent(1100, 30);
        i.a().a((SNBEvent)localObject);
      }
    }
    for (;;)
    {
      localObject = x();
      p local11 = new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy, true);
          o.f(o.this).f();
          o.n(o.this).setVisibility(0);
          o.b(o.this, o.l(o.this) - 1);
          o.a(o.this, o.k(o.this) - 1);
          o.c(o.this, o.o(o.this) - 1L);
        }
      };
      ((ai)localObject).g.c(paramLong1, paramLong2, local11);
      return;
      this.b.f();
      return;
      this.e.findViewById(2131625836).setVisibility(0);
      localObject = new SNBEvent(1100, 29);
      i.a().a((SNBEvent)localObject);
    }
  }
  
  private void a(final EnterButton paramEnterButton, View paramView)
  {
    ((TextView)paramView.findViewById(2131624415)).setText(paramEnterButton.getButtonName());
    ImageView localImageView = (ImageView)paramView.findViewById(2131624414);
    String str = paramEnterButton.getImageLink_3x();
    this.an.a(str, localImageView, this.am, this.ao);
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        com.xueqiu.android.common.q.a(paramEnterButton.getTargetUrl(), o.this.f());
        paramAnonymousView = new SNBEvent(1100, 4);
        paramAnonymousView.addProperty("nav_name", paramEnterButton.getButtonName());
        i.a().a(paramAnonymousView);
      }
    });
  }
  
  private void a(final List<Editorial> paramList)
  {
    if (f() == null) {
      return;
    }
    this.d.setOnPageChangeListener(null);
    this.c.setAdapter(new com.xueqiu.android.cube.a.m(g(), paramList));
    this.d.setViewPager(this.c);
    this.d.setCurrentItem(this.aA);
    this.d.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        o.b(o.this, SystemClock.uptimeMillis());
        o.e(o.this, paramAnonymousInt);
        SNBEvent localSNBEvent = new SNBEvent(1100, 2);
        localSNBEvent.addProperty("ad_id", String.valueOf(((Editorial)paramList.get(paramAnonymousInt)).getId()));
        localSNBEvent.addProperty("pos", String.valueOf(paramAnonymousInt + 1));
        i.a().a(localSNBEvent);
      }
    });
  }
  
  private void refresh()
  {
    x().d(1, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    a(this.ap, 0L, false);
  }
  
  private void u()
  {
    int j = 4;
    Object localObject = DefaultPrefs.getString("enter_button_config", null, f());
    if ((this.g == null) || (this.h == null)) {}
    for (;;)
    {
      return;
      if ((g() == null) || (this.b == null) || (localObject == null))
      {
        this.g.setVisibility(8);
        this.h.setVisibility(8);
        return;
      }
      this.g.removeAllViews();
      this.g.setVisibility(0);
      this.h.removeAllViews();
      this.h.setVisibility(0);
      localObject = (ArrayList)com.xueqiu.android.base.util.m.a().fromJson((String)localObject, new TypeToken() {}.getType());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0F);
      int k = ((ArrayList)localObject).size();
      int m = Math.min(k, 4);
      int i = 0;
      View localView;
      while (i < m)
      {
        localView = LayoutInflater.from(f()).inflate(2130903142, null);
        localView.setLayoutParams(localLayoutParams);
        a((EnterButton)((ArrayList)localObject).get(i), localView);
        this.g.addView(localView);
        i += 1;
      }
      i = j;
      if (k < 4)
      {
        this.h.setVisibility(8);
        return;
      }
      while (i < k)
      {
        localView = LayoutInflater.from(f()).inflate(2130903143, null);
        localView.setLayoutParams(localLayoutParams);
        a((EnterButton)((ArrayList)localObject).get(i), localView);
        this.h.addView(localView);
        if (i != k - 1)
        {
          C();
          this.h.addView(C());
        }
        i += 1;
      }
    }
  }
  
  public final void B_()
  {
    if ((this.b == null) || (this.b.j())) {
      return;
    }
    this.b.m();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    int i;
    if (this.au == null)
    {
      this.au = paramLayoutInflater.inflate(2130903343, paramViewGroup, false);
      this.au.findViewById(2131625162).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (u.a().d) {
            t.a(o.this.g(), false);
          }
          for (;;)
          {
            paramAnonymousView = new SNBEvent(1100, 1);
            i.a().a(paramAnonymousView);
            return;
            paramAnonymousView = new Intent(o.this.f(), MyActivity.class);
            o.this.a(paramAnonymousView);
          }
        }
      });
      this.au.findViewById(2131625160).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          o.this.a(new Intent(o.this.f(), USearchActivity.class), 2130968592, 2130968584);
        }
      });
      this.au.findViewById(2131625128).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((o.this.g() instanceof MainActivity)) {
            ((MainActivity)o.this.g()).k();
          }
        }
      });
      D();
      paramLayoutInflater = this.au;
      this.ak = ((TextView)paramLayoutInflater.findViewById(2131625161));
      if (this.ak != null)
      {
        com.xueqiu.android.base.a.a();
        if (com.xueqiu.android.base.a.j())
        {
          paramViewGroup = this.ak;
          com.xueqiu.android.base.a.a();
          paramViewGroup.setText(com.xueqiu.android.base.util.r.a(com.xueqiu.android.base.a.k(), "title", null));
        }
      }
      else
      {
        this.b = ((SNBPullToRefreshListView)paramLayoutInflater.findViewById(2131624309));
        this.b.setShowDividers(2);
        b(this.a);
        paramLayoutInflater = LayoutInflater.from(f()).inflate(2130903144, (ViewGroup)this.b.getRefreshableView(), false);
        paramViewGroup = LayoutInflater.from(f()).inflate(2130903146, (ViewGroup)this.b.getRefreshableView(), false);
        paramBundle = paramViewGroup.findViewById(2131624310);
        double d1 = UserPrefs.getDouble(f(), "discover_header_img_height", 0.0D);
        if (d1 <= 0.0D) {
          break label668;
        }
        i = (int)d1;
        label267:
        paramBundle.setLayoutParams(new FrameLayout.LayoutParams(-1, i));
        this.c = ((ViewPager)paramViewGroup.findViewById(2131624310));
        this.d = ((CirclePageIndicator)paramViewGroup.findViewById(2131624326));
        this.d.setRadius(6.0F);
        this.c.setOnTouchListener(new View.OnTouchListener()
        {
          public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
          {
            o.f(o.this).requestDisallowInterceptTouchEvent(true);
            return false;
          }
        });
        this.g = ((LinearLayout)paramLayoutInflater.findViewById(2131624416));
        this.h = ((LinearLayout)paramLayoutInflater.findViewById(2131624417));
        this.e = LayoutInflater.from(f()).inflate(2130903580, (ViewGroup)this.b.getRefreshableView(), false);
        this.e.setVisibility(8);
        ((ListView)this.b.getRefreshableView()).addHeaderView(paramViewGroup);
        ((ListView)this.b.getRefreshableView()).addHeaderView(paramLayoutInflater);
        ((ListView)this.b.getRefreshableView()).addFooterView(this.e);
        ((ListView)this.b.getRefreshableView()).setDividerHeight(0);
        this.f = new com.xueqiu.android.community.a.o(this);
        this.b.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
        {
          public final void a()
          {
            o.g(o.this);
            SNBEvent localSNBEvent = new SNBEvent(1100, 30);
            i.a().a(localSNBEvent);
          }
        });
        this.b.setAdapter(this.f);
        this.b.setOnScrollListener(new AbsListView.OnScrollListener()
        {
          public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
          {
            if ((paramAnonymousInt2 > 0) && (paramAnonymousInt1 + paramAnonymousInt2 == paramAnonymousInt3))
            {
              v.a("scroll", "lastSavedFirstVisibleItem: " + o.k(o.this) + "firstVisibleItem: " + paramAnonymousInt1 + "visibleItemCount: " + paramAnonymousInt2 + "totalItemCount: " + paramAnonymousInt3);
              if ((paramAnonymousInt1 != o.k(o.this)) && (o.l(o.this) != paramAnonymousInt3) && (o.m(o.this) > 0L))
              {
                o.a(o.this, paramAnonymousInt1);
                o.b(o.this, paramAnonymousInt3);
                o.a(o.this, o.m(o.this));
              }
            }
            o.c(o.this, paramAnonymousInt1);
            o.d(o.this, paramAnonymousInt2);
          }
          
          public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
          {
            v.a("", "scrollState: " + paramAnonymousInt);
            if (paramAnonymousInt == 0)
            {
              int j = o.h(o.this) - ((ListView)o.f(o.this).getRefreshableView()).getHeaderViewsCount();
              int i = o.h(o.this) + o.i(o.this);
              paramAnonymousInt = j;
              if (j < 0) {
                paramAnonymousInt = 0;
              }
              if (i >= o.j(o.this).getCount()) {
                i = o.j(o.this).getCount() - 1;
              }
              while (paramAnonymousInt < i)
              {
                paramAnonymousAbsListView = (PublicTimeline)o.j(o.this).getItem(paramAnonymousInt);
                JsonObject localJsonObject = (JsonObject)com.xueqiu.android.base.util.m.a().fromJson(paramAnonymousAbsListView.getData(), JsonObject.class);
                if (paramAnonymousAbsListView.getCategory() == 9)
                {
                  o.j(o.this).d(paramAnonymousInt);
                  if ("STOCK".equals(localJsonObject.get("type").getAsString())) {
                    o.j(o.this).c(paramAnonymousInt);
                  }
                }
                paramAnonymousInt += 1;
              }
            }
          }
        });
        this.e.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            o.a(o.this, o.m(o.this));
          }
        });
        E();
        paramLayoutInflater = UserPrefs.getString(f(), "cached_editorials", "");
        paramViewGroup = UserPrefs.getString(f(), "cached_timeline", "");
        if ((paramLayoutInflater != null) && (paramLayoutInflater.length() > 0)) {
          a((List)com.xueqiu.android.base.util.m.a().fromJson(paramLayoutInflater, new TypeToken() {}.getType()));
        }
        if ((paramViewGroup != null) && (paramViewGroup.length() > 0))
        {
          paramLayoutInflater = (ArrayList)com.xueqiu.android.base.util.m.a().fromJson(paramViewGroup, new TypeToken() {}.getType());
          this.f.a(paramLayoutInflater);
          this.f.notifyDataSetChanged();
        }
        u();
      }
    }
    for (;;)
    {
      return this.au;
      this.ak.setText(a(2131166028));
      break;
      label668:
      i = Math.round(g().getWindowManager().getDefaultDisplay().getWidth() * 0.33F);
      break label267;
      if (this.au.getParent() != null) {
        ((ViewGroup)this.au.getParent()).removeView(this.au);
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    label20:
    PublicTimeline localPublicTimeline;
    JsonObject localJsonObject;
    do
    {
      do
      {
        Iterator localIterator;
        do
        {
          do
          {
            ;;
            break label20;
            while ((paramInt2 != 5) || (paramIntent == null)) {}
            paramIntent = (Status)paramIntent.getParcelableExtra("back_status");
          } while ((paramIntent == null) || (paramIntent == null) || (this.f == null));
          localIterator = this.f.a().iterator();
        } while (!localIterator.hasNext());
        localPublicTimeline = (PublicTimeline)localIterator.next();
      } while (!com.xueqiu.android.community.a.o.b(com.xueqiu.android.community.a.o.a(localPublicTimeline.getCategory())));
      localJsonObject = (JsonObject)com.xueqiu.android.base.util.m.a().fromJson(localPublicTimeline.getData(), JsonObject.class);
    } while (localJsonObject.get("id").getAsLong() != paramIntent.getStatusId());
    localJsonObject.addProperty("reply_count", Integer.valueOf(paramIntent.getCommentsCount()));
    localJsonObject.addProperty("retweet_count", Integer.valueOf(paramIntent.getRetweetsCount()));
    localPublicTimeline.setData(com.xueqiu.android.base.util.m.a().toJson(localJsonObject));
    this.f.notifyDataSetChanged();
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "index";
    e_(true);
    a(ag.d.a(new rx.c.a()
    {
      public final void a()
      {
        o.d(o.this);
      }
    }, 3L, 3L, TimeUnit.SECONDS));
    this.aq = UserPrefs.getLong(f(), "cached_max_id", 0L);
    this.ap = UserPrefs.getLong(f(), "cached_since_id", 0L);
    paramBundle = new IntentFilter("intent_action_enter_button_config_updated");
    IntentFilter localIntentFilter = new IntentFilter("com.xueqiu.android.user.UPDATE_USER_INFO");
    android.support.v4.content.r.a(v()).a(this.ar, paramBundle);
    android.support.v4.content.r.a(v()).a(this.as, localIntentFilter);
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.fastScrollChanged")).c(new b() {}));
    paramBundle = new IntentFilter("action_search_text_status_changed");
    android.support.v4.content.r.a(v()).a(this.at, paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.az)
    {
      refresh();
      this.az = false;
    }
    long l = UserPrefs.getLong(f(), "last_refresh_time", 0L);
    if (System.currentTimeMillis() - l > 900000L) {
      this.b.k();
    }
    c(((MainActivity)g()).j());
  }
  
  protected final void b(String paramString)
  {
    super.b(paramString);
    if (TextUtils.isEmpty(this.a)) {}
    while ((!this.a.equals(paramString)) || (this.b == null)) {
      return;
    }
    com.xueqiu.android.base.a.a();
    paramString = com.xueqiu.android.base.a.a(paramString);
    SNBPullToRefreshListView localSNBPullToRefreshListView = this.b;
    com.xueqiu.android.base.a.a();
    localSNBPullToRefreshListView.a(com.xueqiu.android.base.a.a(paramString, g()));
  }
  
  public final void c(String paramString)
  {
    ay.a(paramString, (ImageView)c(2131624523));
  }
  
  public final void d()
  {
    int i = 10;
    super.d();
    Object localObject;
    if (this.f.getCount() > 0)
    {
      localObject = this.f.a();
      if (this.f.getCount() <= 10) {
        break label115;
      }
    }
    for (;;)
    {
      localObject = ((ArrayList)localObject).subList(0, i);
      UserPrefs.setString(f(), "cached_timeline", com.xueqiu.android.base.util.m.a().toJson(localObject));
      UserPrefs.setLong(f(), "cached_max_id", ((PublicTimeline)((List)localObject).get(((List)localObject).size() - 1)).getTimelineId());
      UserPrefs.setLong(f(), "cached_since_id", ((PublicTimeline)((List)localObject).get(0)).getTimelineId());
      return;
      label115:
      i = this.f.getCount();
    }
  }
  
  public final void o()
  {
    super.o();
  }
  
  public final void q()
  {
    android.support.v4.content.r.a(v()).a(this.ar);
    android.support.v4.content.r.a(v()).a(this.as);
    android.support.v4.content.r.a(v()).a(this.at);
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */