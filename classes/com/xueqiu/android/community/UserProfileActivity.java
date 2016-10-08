package com.xueqiu.android.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.a.g;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.c.c;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.ba;
import com.xueqiu.android.base.util.l;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.ImageActivity;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.UserStatusSearchActivity;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.ak;
import com.xueqiu.android.community.a.m;
import com.xueqiu.android.community.a.w;
import com.xueqiu.android.community.b.o;
import com.xueqiu.android.community.d.e.2;
import com.xueqiu.android.community.d.e.6;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import com.xueqiu.android.cube.CubeListActivity;
import com.xueqiu.android.stock.PortfolioCategoryActivity;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Locale;

public class UserProfileActivity
  extends j<com.xueqiu.android.community.d.e>
  implements o
{
  private Context A;
  private boolean B = false;
  private boolean C = false;
  private boolean D = false;
  private boolean E = false;
  private String F;
  private View G;
  private boolean H;
  private com.d.a.b.d I;
  private BroadcastReceiver J;
  User p;
  private com.xueqiu.android.community.widget.i q;
  private ListView r;
  private ViewGroup s;
  private ak t;
  private Drawable u;
  private com.d.a.b.f v = com.d.a.b.f.a();
  private int w = 0;
  private ViewGroup x;
  private int y = 0;
  private View z;
  
  public UserProfileActivity()
  {
    com.d.a.b.e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(36.0F));
    this.I = locale.b();
    this.J = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (com.xueqiu.android.community.d.e)UserProfileActivity.a(UserProfileActivity.this);
        paramAnonymousContext.c().c(new e.2(paramAnonymousContext));
      }
    };
  }
  
  public static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "all";
    case 0: 
      return "all";
    case 1: 
      return "original";
    }
    return "question";
  }
  
  private void l()
  {
    a((ViewGroup)((ViewGroup)findViewById(2131624216)).getChildAt(0));
  }
  
  public final void a(final ViewGroup paramViewGroup)
  {
    View.OnClickListener local25 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (paramAnonymousView.isSelected()) {
          return;
        }
        int i = 0;
        while (i < paramViewGroup.getChildCount())
        {
          paramViewGroup.getChildAt(i).setSelected(false);
          i += 1;
        }
        paramAnonymousView.setSelected(true);
        i = paramViewGroup.indexOfChild(paramAnonymousView);
        UserProfileActivity.b(UserProfileActivity.this, i);
        if (i == 0) {
          ((com.xueqiu.android.community.d.e)UserProfileActivity.u(UserProfileActivity.this)).g = com.xueqiu.android.community.d.e.a;
        }
        while (((com.xueqiu.android.community.d.e)UserProfileActivity.x(UserProfileActivity.this)).d().size() > 0)
        {
          UserProfileActivity.this.c(((com.xueqiu.android.community.d.e)UserProfileActivity.y(UserProfileActivity.this)).d());
          return;
          if (i == 1) {
            ((com.xueqiu.android.community.d.e)UserProfileActivity.v(UserProfileActivity.this)).g = com.xueqiu.android.community.d.e.b;
          } else {
            ((com.xueqiu.android.community.d.e)UserProfileActivity.w(UserProfileActivity.this)).g = com.xueqiu.android.community.d.e.c;
          }
        }
        UserProfileActivity.z(UserProfileActivity.this).setVisibility(0);
        paramAnonymousView = (com.xueqiu.android.community.d.e)UserProfileActivity.A(UserProfileActivity.this);
        paramAnonymousView.a(3).c(new e.6(paramAnonymousView));
      }
    };
    int i = 0;
    while (i < paramViewGroup.getChildCount())
    {
      paramViewGroup.getChildAt(i).setSelected(false);
      paramViewGroup.getChildAt(i).setOnClickListener(local25);
      i += 1;
    }
    paramViewGroup.getChildAt(this.w).setSelected(true);
  }
  
  public final void a(PagedList<Question> paramPagedList)
  {
    ArrayList localArrayList = paramPagedList.getList();
    if (localArrayList.size() > 0)
    {
      Object localObject = (ViewGroup)LayoutInflater.from(this).inflate(2130903565, this.r, false);
      this.r.addHeaderView((View)localObject);
      localObject = (TextView)((ViewGroup)localObject).findViewById(2131625798);
      int i = paramPagedList.getTotalCount();
      paramPagedList = new SpannableStringBuilder();
      paramPagedList.append(String.format(Locale.CHINA, getString(2131166572), new Object[] { this.F }));
      int j = paramPagedList.length();
      paramPagedList.append(String.format(Locale.CHINA, " (%d)", new Object[] { Integer.valueOf(i) }));
      paramPagedList.setSpan(new ForegroundColorSpan(Color.parseColor("#aaaaaa")), j, paramPagedList.length(), 17);
      paramPagedList.setSpan(new AbsoluteSizeSpan((int)com.xueqiu.android.stockchart.f.a.a(this.A, 12.0F)), j, paramPagedList.length(), 17);
      paramPagedList.setSpan(new StyleSpan(0), j, paramPagedList.length(), 17);
      ((TextView)localObject).setText(paramPagedList);
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserAnsweredQuestionActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2700, 8);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      paramPagedList = (ViewGroup)findViewById(2131625799);
      localObject = new w(this);
      ((w)localObject).a(localArrayList);
      localObject = (ViewGroup)((w)localObject).getView(0, null, paramPagedList);
      paramPagedList.addView((View)localObject);
      ((ViewGroup)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          com.xueqiu.android.common.q.a(v.b(this.a.getTarget()), UserProfileActivity.i(UserProfileActivity.this));
          paramAnonymousView = new SNBEvent(2700, 9);
          paramAnonymousView.addProperty("status_id", String.valueOf(this.a.getQid()));
          paramAnonymousView.addProperty("status_type", "answer");
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
    }
  }
  
  public final void a(User paramUser, boolean paramBoolean)
  {
    this.p = paramUser;
    long l = this.p.getUserId();
    u.a();
    boolean bool;
    label105:
    Object localObject1;
    if (l == UserLogonDataPrefs.getLogonUserId())
    {
      bool = true;
      this.B = bool;
      this.F = ba.b(this.p);
      if (!paramBoolean)
      {
        paramUser = (ViewGroup)LayoutInflater.from(this).inflate(2130903568, this.r, false);
        this.r.addHeaderView(paramUser);
      }
      if ((this.p == null) || (!this.p.isFemale())) {
        break label814;
      }
      this.u = com.xueqiu.android.base.r.h(2130838667);
      com.xueqiu.android.base.util.a.a(this.s, this.u);
      if (this.B) {
        findViewById(2131623952).setVisibility(8);
      }
      findViewById(2131623940).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          UserProfileActivity.this.finish();
        }
      });
      findViewById(2131623956).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserStatusSearchActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
          UserProfileActivity.this.overridePendingTransition(2130968592, 2130968584);
        }
      });
      findViewById(2131623947).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((com.xueqiu.android.community.d.e)UserProfileActivity.k(UserProfileActivity.this)).e();
        }
      });
      findViewById(2131624371).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((com.xueqiu.android.community.d.e)UserProfileActivity.l(UserProfileActivity.this)).e();
        }
      });
      findViewById(2131623952).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = UserProfileActivity.this;
          PopupMenu localPopupMenu = new PopupMenu(paramAnonymousView, paramAnonymousView.findViewById(2131623952));
          localPopupMenu.inflate(2131689477);
          Menu localMenu = localPopupMenu.getMenu();
          if (paramAnonymousView.p.isBlocking())
          {
            localMenu.findItem(2131625868).setVisible(false);
            localMenu.findItem(2131625869).setVisible(false);
            localMenu.findItem(2131625870).setTitle(paramAnonymousView.getString(2131165298));
          }
          for (;;)
          {
            localPopupMenu.setOnMenuItemClickListener(new UserProfileActivity.2(paramAnonymousView));
            localPopupMenu.show();
            return;
            if (!au.a(paramAnonymousView.p.getRemark())) {
              localMenu.findItem(2131625869).setTitle(paramAnonymousView.getString(2131165934));
            }
            if (!paramAnonymousView.p.isFollowing()) {
              localMenu.findItem(2131625868).setVisible(false);
            }
          }
        }
      });
      findViewById(2131623957).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          UserProfileActivity.m(UserProfileActivity.this);
          paramAnonymousView = new SNBEvent(2700, 3);
          paramAnonymousView.addProperty("target_uid", String.valueOf(UserProfileActivity.d(UserProfileActivity.this).getUserId()));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      localObject1 = findViewById(2131625470);
      paramUser = this.p.getGender();
      if (paramUser != User.Gender.FEMALE) {
        break label827;
      }
      ((View)localObject1).setBackgroundResource(2130838666);
      label272:
      this.v.a(this.p.getProfileLargeImageUrl(), (ImageView)findViewById(2131624399), this.I);
      findViewById(2131624399).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!TextUtils.isEmpty(UserProfileActivity.d(UserProfileActivity.this).getProfileLargeImageUrl()))
          {
            paramAnonymousView = new Intent(UserProfileActivity.this, ImageActivity.class);
            paramAnonymousView.putExtra("url", UserProfileActivity.d(UserProfileActivity.this).getProfileLargeImageUrl());
            UserProfileActivity.this.startActivity(paramAnonymousView);
            UserProfileActivity.this.overridePendingTransition(2130968592, 2130968584);
          }
        }
      });
      localObject1 = (TextView)findViewById(2131624400);
      ((TextView)localObject1).setText(this.p.getScreenName());
      if (!au.a(this.p.getRemark()))
      {
        localObject2 = (TextView)findViewById(2131624474);
        ((TextView)localObject2).setText(this.p.getRemark());
        ((TextView)localObject2).setVisibility(0);
      }
      if (paramUser != User.Gender.MALE) {
        break label837;
      }
      ((TextView)localObject1).setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838144, 0);
      label400:
      if ((!this.p.isVerified()) && (!this.p.isVerifiedRealName())) {
        break label857;
      }
      this.D = true;
      findViewById(2131624587).setVisibility(0);
      paramUser = (ImageView)findViewById(2131625807);
      localObject1 = (ImageView)findViewById(2131625808);
      Object localObject2 = ba.a(this.p);
      if (this.p.getVerifyType() != UserVerifyType.NO_VERIFY)
      {
        paramUser.setImageDrawable((Drawable)localObject2);
        paramUser.setVisibility(0);
      }
      if (this.p.isVerifiedRealName()) {
        ((ImageView)localObject1).setVisibility(0);
      }
      label506:
      paramUser = (TextView)findViewById(2131624457);
      if (TextUtils.isEmpty(this.p.getDescription())) {
        break label872;
      }
      this.E = true;
      paramUser.setText(String.format(Locale.CHINA, "简介：%s", new Object[] { this.p.getDescription() }));
      paramUser.setVisibility(0);
      label567:
      if (this.B) {
        break label881;
      }
      j();
    }
    for (;;)
    {
      findViewById(2131625813).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserListActivity.class);
          paramAnonymousView.putExtra("extra_list_type", 1);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
      ((TextView)findViewById(2131625814)).setText(String.valueOf(this.p.getFriendsCount()));
      findViewById(2131625815).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserListActivity.class);
          paramAnonymousView.putExtra("extra_list_type", 2);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
      ((TextView)findViewById(2131624352)).setText(String.valueOf(this.p.getFollowersCount()));
      findViewById(2131625816).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, PortfolioCategoryActivity.class);
          paramAnonymousView.putExtra("extra_user_id", UserProfileActivity.d(UserProfileActivity.this).getUserId());
          UserProfileActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2700, 5);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      ((TextView)findViewById(2131625817)).setText(String.valueOf(this.p.getStocksCount()));
      findViewById(2131625818).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, CubeListActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2700, 6);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      ((TextView)findViewById(2131625819)).setText(String.valueOf(this.p.getCubeCount()));
      if ((!this.D) && (!this.E)) {
        findViewById(2131625806).setVisibility(8);
      }
      findViewById(2131625806).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserInfoShowActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
      this.r.findViewById(2131625810).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (u.a().d)
          {
            com.xueqiu.android.base.t.a(UserProfileActivity.this, false);
            return;
          }
          l.a(UserProfileActivity.d(UserProfileActivity.this), UserProfileActivity.i(UserProfileActivity.this));
        }
      });
      return;
      bool = false;
      break;
      label814:
      this.u = com.xueqiu.android.base.r.h(2130838669);
      break label105;
      label827:
      ((View)localObject1).setBackgroundResource(2130838668);
      break label272;
      label837:
      if (paramUser != User.Gender.FEMALE) {
        break label400;
      }
      ((TextView)localObject1).setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130838143, 0);
      break label400;
      label857:
      findViewById(2131624587).setVisibility(8);
      break label506;
      label872:
      paramUser.setVisibility(8);
      break label567;
      label881:
      findViewById(2131625809).setVisibility(8);
      findViewById(2131625810).setVisibility(8);
      findViewById(2131624616).setVisibility(8);
      findViewById(2131625812).setVisibility(0);
      this.r.findViewById(2131625812).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.i(UserProfileActivity.this), UpdateUserInfoActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("user", UserProfileActivity.d(UserProfileActivity.this));
          paramAnonymousView.putExtras(localBundle);
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
    }
  }
  
  public final void a(ArrayList<SimpleFund> paramArrayList)
  {
    if (paramArrayList.size() > 0)
    {
      final Object localObject = (ViewGroup)LayoutInflater.from(this).inflate(2130903566, this.r, false);
      this.r.addHeaderView((View)localObject);
      localObject = (TextView)((ViewGroup)localObject).findViewById(2131625800);
      ((TextView)localObject).setText(String.format(Locale.CHINA, getString(2131166574), new Object[] { this.F }));
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserPrivateFundActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
      localObject = (SimpleFund)paramArrayList.get(0);
      ((SimpleFund)localObject).setManager(this.p.getScreenName());
      ViewGroup localViewGroup = (ViewGroup)findViewById(2131625801);
      m localm = new m(this);
      localm.a(paramArrayList);
      localViewGroup.addView(localm.getView(0, null, localViewGroup));
      localViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = com.xueqiu.android.base.util.q.a(UserProfileActivity.this, new StockQuote(localObject.getSymbol()));
          UserProfileActivity.this.startActivity(paramAnonymousView);
        }
      });
    }
  }
  
  public final void b(ArrayList<Status> paramArrayList)
  {
    if (paramArrayList.size() > 0)
    {
      ViewGroup localViewGroup1 = (ViewGroup)LayoutInflater.from(this).inflate(2130903567, this.r, false);
      this.r.addHeaderView(localViewGroup1);
      Object localObject = (TextView)localViewGroup1.findViewById(2131625802);
      ((TextView)localObject).setText(String.format(Locale.CHINA, getString(2131166575), new Object[] { this.F }));
      ((TextView)localObject).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(UserProfileActivity.this, UserHotStatusActivity.class);
          paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
          UserProfileActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2700, 7);
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      localObject = (ViewGroup)findViewById(2131625803);
      ak localak = new ak(this);
      localak.a(paramArrayList);
      if (paramArrayList.size() > 3) {}
      for (int i = 3;; i = paramArrayList.size())
      {
        int j = 0;
        while (j < i)
        {
          ViewGroup localViewGroup2 = (ViewGroup)localak.getView(j, null, (ViewGroup)localObject);
          if (j == 0) {
            localViewGroup2.getChildAt(0).setVisibility(8);
          }
          ((ViewGroup)localObject).addView(localViewGroup2);
          localViewGroup2.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              paramAnonymousView = new Intent(UserProfileActivity.i(UserProfileActivity.this), StatusDetailActivity.class);
              paramAnonymousView.putExtra("status", this.a);
              UserProfileActivity.this.startActivity(paramAnonymousView);
              paramAnonymousView = new SNBEvent(2700, 9);
              paramAnonymousView.addProperty("status_id", String.valueOf(this.a.getStatusId()));
              paramAnonymousView.addProperty("status_type", "hot");
              com.xueqiu.android.base.i.a().a(paramAnonymousView);
            }
          });
          j += 1;
        }
      }
      if (paramArrayList.size() > 3)
      {
        paramArrayList = localViewGroup1.findViewById(2131625804);
        paramArrayList.setVisibility(0);
        paramArrayList.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(UserProfileActivity.this, UserHotStatusActivity.class);
            paramAnonymousView.putExtra("extra_user", UserProfileActivity.d(UserProfileActivity.this));
            UserProfileActivity.this.startActivity(paramAnonymousView);
          }
        });
      }
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    View localView = findViewById(2131625809);
    this.G = localView.findViewById(2131625130);
    b.a();
    this.H = UserPrefs.getBoolean(b.d(), "pay_ask_first_in", false);
    if (!this.H) {
      this.G.setVisibility(0);
    }
    while ((paramBoolean) && (UserPrefs.paidMentionAvailable()) && (!this.B))
    {
      localView.setVisibility(0);
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          boolean bool = false;
          if (!UserProfileActivity.p(UserProfileActivity.this))
          {
            UserProfileActivity.q(UserProfileActivity.this);
            UserProfileActivity.r(UserProfileActivity.this).setVisibility(8);
            b.a();
            UserPrefs.setBoolean(b.d(), "pay_ask_first_in", true);
            bool = true;
          }
          paramAnonymousView = new Intent(UserProfileActivity.this, ReplierProfileActivity.class);
          paramAnonymousView.putExtra("extra_write_type", 5);
          paramAnonymousView.putExtra("user_id", String.valueOf(UserProfileActivity.d(UserProfileActivity.this).getUserId()));
          paramAnonymousView.putExtra("user_name", UserProfileActivity.d(UserProfileActivity.this).getScreenName());
          paramAnonymousView.putExtra("from_user_profile", true);
          paramAnonymousView.putExtra("is_show_hint", bool);
          UserProfileActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2700, 4);
          paramAnonymousView.addProperty("target_uid", String.valueOf(UserProfileActivity.d(UserProfileActivity.this).getUserId()));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      return;
      this.G.setVisibility(8);
    }
    localView.setVisibility(8);
  }
  
  public final void c(ArrayList<Status> paramArrayList)
  {
    this.z.setVisibility(8);
    int j = this.r.getFirstVisiblePosition();
    int i = -1;
    View localView = this.r.getChildAt(0);
    if (localView != null) {
      i = localView.getTop();
    }
    this.t.a(paramArrayList);
    this.t.notifyDataSetChanged();
    if (findViewById(2131624216).getVisibility() == 0)
    {
      j = this.r.getHeaderViewsCount() - 2;
      i = (int)com.xueqiu.android.stockchart.f.a.a(this, 48.0F) - this.y;
    }
    this.r.setSelectionFromTop(j, i);
  }
  
  public final void j()
  {
    View localView = findViewById(2131624616);
    TextView localTextView = (TextView)findViewById(2131625811);
    if (this.p.isBlocking())
    {
      com.xueqiu.android.base.util.a.a(localView, com.xueqiu.android.base.r.h(2130837735));
      localTextView.setText(2131165298);
      localTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      localTextView.setTextColor(com.xueqiu.android.base.r.a(2131558670));
    }
    for (;;)
    {
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (UserProfileActivity.d(UserProfileActivity.this).isBlocking())
          {
            ((com.xueqiu.android.community.d.e)UserProfileActivity.s(UserProfileActivity.this)).f();
            return;
          }
          ((com.xueqiu.android.community.d.e)UserProfileActivity.t(UserProfileActivity.this)).e();
        }
      });
      return;
      if (this.p.isFollowing())
      {
        com.xueqiu.android.base.util.a.a(localView, com.xueqiu.android.base.r.h(2130837735));
        localTextView.setText(2131165230);
        localTextView.setCompoundDrawablesWithIntrinsicBounds(2130837803, 0, 0, 0);
        localTextView.setTextColor(com.xueqiu.android.base.r.a(2131558670));
        if (this.p.isFollowMe())
        {
          localTextView.setText(2131165537);
          localTextView.setCompoundDrawablesWithIntrinsicBounds(2130837806, 0, 0, 0);
        }
      }
      for (;;)
      {
        if (findViewById(2131623952).getVisibility() != 8) {
          break label252;
        }
        findViewById(2131624371).setVisibility(8);
        findViewById(2131623947).setVisibility(8);
        if (!this.p.isFollowing()) {
          break label254;
        }
        findViewById(2131624371).setVisibility(0);
        break;
        com.xueqiu.android.base.util.a.a(localView, com.xueqiu.android.base.r.h(2130837737));
        localTextView.setText("关注");
        localTextView.setCompoundDrawablesWithIntrinsicBounds(2130837805, 0, 0, 0);
        localTextView.setTextColor(com.xueqiu.android.base.r.a(2131558728));
      }
      label252:
      continue;
      label254:
      findViewById(2131623947).setVisibility(0);
    }
  }
  
  public final void k()
  {
    ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(this).inflate(2130903571, this.r, false);
    this.r.addHeaderView(localViewGroup);
    this.x = ((ViewGroup)localViewGroup.getChildAt(0));
    this.z = localViewGroup.findViewById(2131625485);
    a(this.x);
    l();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903127);
    this.A = this;
    this.p = ((User)getIntent().getParcelableExtra("extra_user"));
    this.i.b().d();
    this.s = ((ViewGroup)findViewById(2131624082));
    android.support.v4.content.r.a(this).a(this.J, new IntentFilter("com.xueqiu.android.user.UPDATE_USER_INFO"));
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    android.support.v4.content.r.a(this).a(this.J);
  }
  
  protected void onStart()
  {
    super.onStart();
    if (!this.C)
    {
      this.C = true;
      this.q = new com.xueqiu.android.community.widget.i((SNBPullToRefreshListView)findViewById(2131624370), (com.xueqiu.android.common.t)this.j);
      this.q.c(false);
      this.r = this.q.d();
      this.t = new ak(this);
      this.t.h = true;
      this.q.a(this.t);
      this.q.a(new AbsListView.OnScrollListener()
      {
        public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          float f = UserProfileActivity.b(UserProfileActivity.this);
          if ((!UserProfileActivity.c(UserProfileActivity.this)) && (!UserProfileActivity.d(UserProfileActivity.this).isBlocking()))
          {
            if (f != 1.0F) {
              break label111;
            }
            UserProfileActivity.this.findViewById(2131623952).setVisibility(8);
            if (!UserProfileActivity.d(UserProfileActivity.this).isFollowing()) {
              break label95;
            }
            UserProfileActivity.this.findViewById(2131624371).setVisibility(0);
          }
          for (;;)
          {
            paramAnonymousInt1 = UserProfileActivity.e(UserProfileActivity.this).getFirstVisiblePosition();
            if (paramAnonymousInt1 != 0) {
              break;
            }
            return;
            label95:
            UserProfileActivity.this.findViewById(2131623947).setVisibility(0);
            continue;
            label111:
            UserProfileActivity.this.findViewById(2131623947).setVisibility(8);
            UserProfileActivity.this.findViewById(2131624371).setVisibility(8);
            UserProfileActivity.this.findViewById(2131623952).setVisibility(0);
          }
          paramAnonymousInt2 = UserProfileActivity.e(UserProfileActivity.this).getHeaderViewsCount();
          if (paramAnonymousInt1 > paramAnonymousInt2 - 2)
          {
            UserProfileActivity.this.findViewById(2131624216).setVisibility(0);
            UserProfileActivity.f(UserProfileActivity.this);
            return;
          }
          paramAnonymousAbsListView = UserProfileActivity.e(UserProfileActivity.this).getChildAt(0);
          paramAnonymousInt3 = paramAnonymousAbsListView.getHeight();
          int i = paramAnonymousAbsListView.getTop();
          if ((paramAnonymousInt1 == paramAnonymousInt2 - 2) && (paramAnonymousInt3 + i < com.xueqiu.android.stockchart.f.a.a(UserProfileActivity.this, 48.0F)))
          {
            UserProfileActivity.a(UserProfileActivity.this, paramAnonymousAbsListView.getHeight());
            UserProfileActivity.this.findViewById(2131624216).setVisibility(0);
            UserProfileActivity.f(UserProfileActivity.this);
            return;
          }
          UserProfileActivity.this.findViewById(2131624216).setVisibility(8);
          UserProfileActivity.this.a(UserProfileActivity.g(UserProfileActivity.this));
        }
        
        public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
      });
      this.q.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Status)UserProfileActivity.h(UserProfileActivity.this).c.getItem(paramAnonymousInt - UserProfileActivity.e(UserProfileActivity.this).getHeaderViewsCount());
          if (paramAnonymousAdapterView.getType().equals("normal"))
          {
            paramAnonymousView = new Intent(UserProfileActivity.i(UserProfileActivity.this), StatusDetailActivity.class);
            paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
            UserProfileActivity.this.startActivity(paramAnonymousView);
            paramAnonymousView = new SNBEvent(2700, 9);
            paramAnonymousView.addProperty("status_id", String.valueOf(paramAnonymousAdapterView.getStatusId()));
            paramAnonymousView.addProperty("status_type", UserProfileActivity.b(UserProfileActivity.j(UserProfileActivity.this)));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        }
      });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\UserProfileActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */