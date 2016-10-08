package com.xueqiu.android.community.c;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.ManageGroupInfoActivity;
import com.xueqiu.android.common.e;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.UserGroupParser;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.search.USearchActivity;
import com.xueqiu.android.community.RichTextActivity;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.UserGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class c
  extends e
  implements com.xueqiu.android.common.d
{
  private boolean ak = false;
  private boolean al;
  private boolean am;
  private int an;
  private LinearLayout ao;
  private LinearLayout ap;
  private LinearLayout aq;
  private LinearLayout ar;
  private RelativeLayout as;
  private View at;
  private Handler au = new Handler();
  private View av;
  private View.OnClickListener aw = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView.getId() == 2131623943) {
        if (UserPrefs.paidMentionAvailable())
        {
          c.j(c.this);
          if (!c.l(c.this))
          {
            c.m(c.this);
            c.n(c.this).findViewById(2131625130).setVisibility(8);
            com.xueqiu.android.base.b.a();
            UserPrefs.setBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in_write", c.l(c.this));
          }
        }
      }
      label338:
      do
      {
        do
        {
          return;
          c.k(c.this);
          break;
          if (paramAnonymousView.getId() == 2131625133)
          {
            c.k(c.this);
            return;
          }
          if (paramAnonymousView.getId() == 2131625135)
          {
            if (u.a().d)
            {
              t.a(c.this.g(), false);
              return;
            }
            paramAnonymousView = new Intent(c.this.g(), WriteStatusActivity.class);
            paramAnonymousView.putExtra("extra_write_type", 5);
            paramAnonymousView.putExtra("to_pick_user", true);
            c.this.a(paramAnonymousView);
            if (!c.o(c.this))
            {
              c.p(c.this);
              c.q(c.this);
              com.xueqiu.android.base.b.a();
              UserPrefs.setBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in", c.o(c.this));
            }
            paramAnonymousView = new SNBEvent(1300, 23);
            paramAnonymousView.addProperty("name", "提问");
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
          }
          if (paramAnonymousView.getId() == 2131625131)
          {
            c.r(c.this);
            return;
          }
          if (paramAnonymousView.getId() == 2131623956)
          {
            c.this.a(new Intent(c.this.f(), USearchActivity.class), 2130968592, 2130968584);
            return;
          }
          if (paramAnonymousView.getId() != 2131625128) {
            break label338;
          }
        } while (!(c.this.g() instanceof MainActivity));
        ((MainActivity)c.this.g()).k();
        return;
      } while (paramAnonymousView.getId() != 2131625138);
      if (u.a().d)
      {
        t.a(c.this.g(), false);
        return;
      }
      paramAnonymousView = new Intent(c.this.g(), RichTextActivity.class);
      c.this.a(paramAnonymousView);
      com.xueqiu.android.base.b.a();
      UserPrefs.setBoolean(com.xueqiu.android.base.b.d(), "post_long_status_tag", true);
      paramAnonymousView = new SNBEvent(1300, 23);
      paramAnonymousView.addProperty("name", "长文");
      com.xueqiu.android.base.i.a().a(paramAnonymousView);
    }
  };
  private TabPageIndicator b = null;
  private ViewPager c = null;
  private View d = null;
  private ArrayList<UserGroup> e = null;
  private d[] f = null;
  private f g = null;
  private int h = -1;
  
  private void C()
  {
    UserGroup localUserGroup1 = new UserGroup();
    localUserGroup1.setGroupId(1L);
    localUserGroup1.setName(a(2131165227));
    UserGroup localUserGroup2 = new UserGroup();
    localUserGroup2.setGroupId(2L);
    localUserGroup2.setName(a(2131166128));
    UserGroup localUserGroup3 = new UserGroup();
    localUserGroup3.setGroupId(6L);
    localUserGroup3.setName(a(2131166137));
    UserGroup localUserGroup4 = new UserGroup();
    localUserGroup4.setGroupId(3L);
    localUserGroup4.setName(a(2131166129));
    UserGroup localUserGroup5 = new UserGroup();
    localUserGroup5.setGroupId(4L);
    localUserGroup5.setName(a(2131166130));
    UserGroup localUserGroup6 = new UserGroup();
    localUserGroup6.setGroupId(13L);
    localUserGroup6.setName(a(2131166136));
    this.e = new ArrayList();
    this.e.add(localUserGroup1);
    this.e.add(localUserGroup2);
    this.e.add(localUserGroup3);
    this.e.add(localUserGroup4);
    this.e.add(localUserGroup5);
    this.e.add(localUserGroup6);
    this.e.addAll(D());
  }
  
  private ArrayList<UserGroup> D()
  {
    Object localObject = UserPrefs.getString(f(), "key_friendship_groups", null);
    if (localObject != null) {
      try
      {
        localObject = new GroupParser(new UserGroupParser()).parse(new JSONArray((String)localObject));
        Iterator localIterator = ((ArrayList)localObject).iterator();
        while (localIterator.hasNext())
        {
          UserGroup localUserGroup = (UserGroup)localIterator.next();
          if ((localUserGroup.getGroupId() == 1L) || (localUserGroup.getGroupId() == 0L))
          {
            localIterator.remove();
            continue;
            return new ArrayList();
          }
        }
      }
      catch (JSONException localJSONException)
      {
        aa.a(localJSONException);
      }
    }
    return localJSONException;
  }
  
  private void E()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1.0F);
    localTranslateAnimation.setDuration(200L);
    this.ap.startAnimation(localTranslateAnimation);
    this.au.postDelayed(new Runnable()
    {
      public final void run()
      {
        c.s(c.this).setVisibility(8);
        c.t(c.this).setVisibility(8);
      }
    }, 200L);
  }
  
  private void u()
  {
    if ((this.ak) && (j()))
    {
      UserGroup localUserGroup = d.a(this.f[this.c.getCurrentItem()]);
      C();
      Object localObject2;
      if ((this.f != null) && (this.f.length > 0))
      {
        localObject1 = i().a();
        localObject2 = this.f;
        int j = localObject2.length;
        i = 0;
        while (i < j)
        {
          android.support.v4.a.i locali = localObject2[i];
          if (locali != null) {
            ((ac)localObject1).b(locali);
          }
          i += 1;
        }
        ((ac)localObject1).e();
      }
      this.f = new d[this.e.size()];
      this.c.getAdapter().d();
      this.b.a();
      Object localObject1 = this.e.iterator();
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = (UserGroup)((Iterator)localObject1).next();
      } while (localUserGroup.getGroupId() != ((UserGroup)localObject2).getGroupId());
    }
    for (int i = 0;; i = 1)
    {
      if (i != 0) {
        this.c.setCurrentItem(0);
      }
      this.ak = false;
      return;
    }
  }
  
  public final void B_()
  {
    if ((this.f == null) || (this.f.length == 0) || (this.c == null)) {}
    d locald;
    do
    {
      return;
      locald = this.f[this.c.getCurrentItem()];
    } while ((locald == null) || (!locald.j()));
    locald.B_();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e_(true);
    if (this.av == null)
    {
      this.av = paramLayoutInflater.inflate(2130903339, paramViewGroup, false);
      b(this.a);
      this.at = this.av.findViewById(2131624076);
      this.ao = ((LinearLayout)this.av.findViewById(2131625131));
      this.ao.setOnClickListener(this.aw);
      this.ap = ((LinearLayout)this.av.findViewById(2131625132));
      this.aq = ((LinearLayout)this.av.findViewById(2131625133));
      this.aq.setOnClickListener(this.aw);
      this.ar = ((LinearLayout)this.av.findViewById(2131625135));
      this.ar.setOnClickListener(this.aw);
      this.as = ((RelativeLayout)this.av.findViewById(2131625138));
      this.as.setOnClickListener(this.aw);
      this.b = ((TabPageIndicator)this.av.findViewById(2131624326));
      this.c = ((ViewPager)this.av.findViewById(2131624310));
      this.d = this.av.findViewById(2131624327);
      this.b.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener()
      {
        public final void onScrollChanged()
        {
          boolean bool = c.d(c.this).canScrollHorizontally(1);
          if ((c.e(c.this).getVisibility() == 0) && (!bool)) {
            c.e(c.this).setVisibility(4);
          }
          while ((c.e(c.this).getVisibility() != 4) || (!bool)) {
            return;
          }
          c.e(c.this).setVisibility(0);
        }
      });
      this.av.findViewById(2131625859).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(c.this.g(), ManageGroupInfoActivity.class);
          paramAnonymousView.putExtra("extra_group_type", 1);
          c.this.a(paramAnonymousView);
          paramAnonymousView = new SNBEvent(1300, 3);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      if (this.e == null) {
        this.e = new ArrayList();
      }
      this.f = new d[this.e.size()];
      if (i().d() != null)
      {
        paramLayoutInflater = (d[])i().d().toArray(new d[0]);
        int i = 0;
        while (i < this.e.size())
        {
          paramViewGroup = (UserGroup)this.e.get(i);
          int k = paramLayoutInflater.length;
          int j = 0;
          while (j < k)
          {
            paramBundle = paramLayoutInflater[j];
            if (paramViewGroup.getGroupId() == d.a(paramBundle).getGroupId()) {
              this.f[i] = paramBundle;
            }
            j += 1;
          }
          i += 1;
        }
      }
      if (this.g == null) {
        this.g = new f(this, i());
      }
      this.c.setAdapter(this.g);
      this.c.a(new cp()
      {
        public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
        
        public final void b(int paramAnonymousInt) {}
        
        public final void b_(int paramAnonymousInt)
        {
          c.a(c.this, paramAnonymousInt);
          if (c.f(c.this)[paramAnonymousInt] == null) {
            c.f(c.this)[paramAnonymousInt] = ((d)c.g(c.this).a(paramAnonymousInt));
          }
          c.f(c.this)[paramAnonymousInt].C_();
          UserGroup localUserGroup = (UserGroup)c.h(c.this).get(paramAnonymousInt);
          c.f(c.this)[paramAnonymousInt].b(c.i(c.this));
          if (localUserGroup != null)
          {
            SNBEvent localSNBEvent = new SNBEvent(1300, 2);
            localSNBEvent.addProperty("group_name", localUserGroup.getName());
            com.xueqiu.android.base.i.a().a(localSNBEvent);
          }
        }
      });
      this.b.setViewPager(this.c);
      this.c.setOffscreenPageLimit(this.e.size());
      if ((this.h != -1) && (this.e.size() > this.h))
      {
        this.c.setCurrentItem(this.h);
        this.h = -1;
      }
      this.av.findViewById(2131625128).setOnClickListener(this.aw);
      this.av.findViewById(2131623943).setOnClickListener(this.aw);
      this.av.findViewById(2131623956).setOnClickListener(this.aw);
    }
    for (;;)
    {
      return this.av;
      if (this.av.getParent() != null) {
        ((ViewGroup)this.av.getParent()).removeView(this.av);
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 5)
    {
      d locald = this.f[this.an];
      Status localStatus1 = (Status)paramIntent.getParcelableExtra("back_status");
      if ((locald != null) && (locald.k()))
      {
        Iterator localIterator = locald.a.c.a().iterator();
        while (localIterator.hasNext())
        {
          Status localStatus2 = (Status)localIterator.next();
          if (localStatus2.getStatusId() == localStatus1.getStatusId())
          {
            localStatus2.setRetweetsCount(localStatus1.getRetweetsCount());
            localStatus2.setCommentsCount(localStatus1.getCommentsCount());
            localStatus2.setRewardUserCount(localStatus1.getRewardUserCount());
            locald.a.c.notifyDataSetChanged();
          }
        }
      }
    }
    super.a(paramInt1, paramInt2, paramIntent);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "timeline";
    C();
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.USER_GROUP_UPDATED")).c(new rx.c.b() {}));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.intent.action.USER_OFFLINE")).c(new rx.c.b() {}));
    this.h = UserPrefs.getInt(f(), "key_selected_timeline_group", 0);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    c(((MainActivity)g()).j());
  }
  
  protected final void b(String paramString)
  {
    super.b(paramString);
    if (TextUtils.isEmpty(this.a)) {}
    d locald;
    do
    {
      do
      {
        return;
      } while ((!this.a.equals(paramString)) || (this.c == null) || (this.f == null) || (this.c.getCurrentItem() < 0) || (this.c.getCurrentItem() >= this.f.length));
      locald = this.f[this.c.getCurrentItem()];
    } while ((locald == null) || (!locald.j()));
    locald.b(paramString);
  }
  
  public final void c(String paramString)
  {
    ay.a(paramString, (ImageView)c(2131624523));
  }
  
  public final void o()
  {
    v.a("HomeFragment", "onResume");
    super.o();
    u();
    com.xueqiu.android.base.b.a();
    this.al = UserPrefs.getBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in", false);
    com.xueqiu.android.base.b.a();
    this.am = UserPrefs.getBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in_write", false);
    if ((this.am) || (this.al)) {
      this.av.findViewById(2131625130).setVisibility(8);
    }
    for (;;)
    {
      com.xueqiu.android.base.b.a();
      if (!UserPrefs.getBoolean(com.xueqiu.android.base.b.d(), "post_long_status_tag", false)) {
        break;
      }
      this.av.findViewById(2131625141).setVisibility(8);
      return;
      this.av.findViewById(2131625130).setVisibility(0);
    }
    this.av.findViewById(2131625141).setVisibility(0);
  }
  
  public final void p()
  {
    super.p();
    E();
  }
  
  public final void q()
  {
    if (this.c != null) {
      this.c.a();
    }
    super.q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */