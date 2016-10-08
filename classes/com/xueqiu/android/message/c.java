package com.xueqiu.android.message;

import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.content.r;
import android.support.v4.view.ak;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.google.gson.Gson;
import com.snowballfinance.messageplatform.a.d;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.af;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.SingleFragmentActivity;
import com.xueqiu.android.common.e;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.CommentReceiveActivity;
import com.xueqiu.android.community.FindPeopleActivity;
import com.xueqiu.android.community.MentionMeStatusActivity;
import com.xueqiu.android.community.UserListActivity;
import com.xueqiu.android.community.c.l;
import com.xueqiu.android.community.model.Remind;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserNotification;
import com.xueqiu.android.message.a.x;
import com.xueqiu.android.message.a.z;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.message.model.ApplyCount;
import com.xueqiu.android.message.model.Commands;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Read;
import com.xueqiu.android.message.model.Talk;
import com.xueqiu.android.message.model.UserNotificationSession;
import com.xueqiu.android.tactic.MyPushListActivity;
import com.xueqiu.android.trade.c.w;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.j;

public final class c
  extends e
{
  private StickyListHeadersListView ak;
  private View al;
  private com.xueqiu.android.message.a.u am;
  private View an;
  private MenuItem ao;
  private com.d.a.b.f ap;
  private int aq = 0;
  private j ar;
  private int as;
  private int at;
  private int au;
  private int av;
  private int aw;
  private int ax;
  private boolean ay;
  private ServiceConnection az = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      c.a(c.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
      c.b(c.this).a(new rx.c.a()
      {
        public final void a()
        {
          if (c.a(c.this) != null)
          {
            com.snowballfinance.messageplatform.a.h localh = new com.snowballfinance.messageplatform.a.h();
            com.xueqiu.android.base.u.a();
            localh.c = Long.valueOf(UserLogonDataPrefs.getLogonUserId());
            c.a(c.this).a(localh);
          }
        }
      }, 2L, TimeUnit.SECONDS);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      c.a(c.this, null);
    }
  };
  z b;
  r c;
  BroadcastReceiver d;
  MessageService e;
  rx.h f;
  private View g;
  private ListView h;
  
  public static c a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    c localc = new c();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_comment_count", paramInt1);
    localBundle.putInt("arg_mention_count", paramInt2);
    localBundle.putInt("arg_paid_mention_count", paramInt3);
    localBundle.putInt("arg_paid_comment_count", paramInt4);
    localBundle.putInt("arg_new_follower_count", paramInt5);
    localBundle.putInt("arg_trade_notification", paramInt6);
    localc.e(localBundle);
    return localc;
  }
  
  private void a(UserNotification paramUserNotification, int paramInt)
  {
    if (this.b == null) {
      return;
    }
    UserNotificationSession localUserNotificationSession = new UserNotificationSession();
    UserNotification localUserNotification = paramUserNotification;
    if (paramUserNotification == null) {
      localUserNotification = new UserNotification();
    }
    localUserNotificationSession.setType(3);
    localUserNotificationSession.setNotification(localUserNotification);
    localUserNotificationSession.setUnreadCount(localUserNotification.getUnreadCount());
    int i = 0;
    while (i < this.b.c.size())
    {
      int j = this.b.c.keyAt(i);
      if (((UserNotificationSession)this.b.c.get(j)).getType() == 3) {
        this.b.c(j);
      }
      i += 1;
    }
    this.b.a(paramInt, localUserNotificationSession);
  }
  
  private void a(UserNotification paramUserNotification, int paramInt1, int paramInt2)
  {
    if (this.b == null) {
      return;
    }
    UserNotificationSession localUserNotificationSession = new UserNotificationSession();
    UserNotification localUserNotification = paramUserNotification;
    if (paramUserNotification == null) {
      localUserNotification = new UserNotification();
    }
    localUserNotificationSession.setType(4);
    localUserNotificationSession.setNotification(localUserNotification);
    localUserNotificationSession.setUnreadCount(paramInt1);
    paramInt1 = 0;
    while (paramInt1 < this.b.c.size())
    {
      int i = this.b.c.keyAt(paramInt1);
      if (((UserNotificationSession)this.b.c.get(i)).getType() == 4) {
        this.b.c(i);
      }
      paramInt1 += 1;
    }
    this.b.a(paramInt2, localUserNotificationSession);
  }
  
  private void a(final Talk paramTalk)
  {
    Object localObject;
    if ((paramTalk.getName() == null) || (paramTalk.getName().length() == 0))
    {
      if (!paramTalk.isGroup()) {
        break label103;
      }
      localObject = DBManager.getInstance().getIMGroupById(paramTalk.getId());
      if (localObject == null) {
        break label95;
      }
      paramTalk.setName(((IMGroup)localObject).getName());
      paramTalk.setProfileImageUrl(((IMGroup)localObject).getProfileImageUrl());
      paramTalk.setGroupRef((IMGroup)localObject);
      this.f.a(new rx.c.a()
      {
        public final void a()
        {
          DataStore.getInstance(c.this.f()).saveTalk(paramTalk);
        }
      });
    }
    for (;;)
    {
      this.f.a(new rx.c.a()
      {
        public final void a()
        {
          if (paramTalk.getName() != null) {
            paramTalk.setPinyin(af.b(paramTalk.getName()));
          }
        }
      });
      return;
      label95:
      paramTalk.setActive(false);
      continue;
      label103:
      localObject = DBManager.getInstance().queryUserByUserId(paramTalk.getId());
      if (localObject != null)
      {
        if (((User)localObject).getProfileImageUrl() != null) {
          paramTalk.setProfileImageUrl(((User)localObject).getProfileImageUrl().replaceAll("50x50", "100x100"));
        }
        paramTalk.setName(((User)localObject).getScreenName());
        paramTalk.setUserRef((User)localObject);
        this.f.a(new rx.c.a()
        {
          public final void a()
          {
            DataStore.getInstance(c.this.f()).saveTalk(paramTalk);
          }
        });
      }
      else
      {
        paramTalk.setActive(false);
      }
    }
  }
  
  private void b(UserNotification paramUserNotification, int paramInt)
  {
    if (this.b == null) {
      return;
    }
    UserNotificationSession localUserNotificationSession = new UserNotificationSession();
    UserNotification localUserNotification = paramUserNotification;
    if (paramUserNotification == null) {
      localUserNotification = new UserNotification();
    }
    localUserNotificationSession.setType(0);
    localUserNotificationSession.setUnreadCount(paramInt);
    localUserNotificationSession.setNotification(localUserNotification);
    paramInt = 0;
    while (paramInt < this.b.c.size())
    {
      int i = this.b.c.keyAt(paramInt);
      if (((UserNotificationSession)this.b.c.get(i)).getType() == 0) {
        this.b.c(i);
      }
      paramInt += 1;
    }
    this.b.a(0, localUserNotificationSession);
  }
  
  private void b(UserNotification paramUserNotification, int paramInt1, int paramInt2)
  {
    if (this.b == null) {}
    label135:
    for (;;)
    {
      return;
      UserNotificationSession localUserNotificationSession;
      if (paramUserNotification != null)
      {
        localUserNotificationSession = new UserNotificationSession();
        localUserNotificationSession.setType(2);
        localUserNotificationSession.setNotification(paramUserNotification);
        localUserNotificationSession.setUnreadCount(paramInt1);
      }
      for (paramUserNotification = localUserNotificationSession;; paramUserNotification = null)
      {
        if (paramUserNotification == null) {
          break label135;
        }
        int i = 0;
        while (i < this.b.c.size())
        {
          int j = this.b.c.keyAt(i);
          if (((UserNotificationSession)this.b.c.get(j)).getType() == 2) {
            this.b.c(j);
          }
          i += 1;
        }
        if (paramInt1 <= 0) {
          break;
        }
        this.b.a(paramInt2, paramUserNotification);
        return;
      }
    }
  }
  
  private void c(UserNotification paramUserNotification, int paramInt)
  {
    if (this.b == null) {
      return;
    }
    UserNotification localUserNotification = paramUserNotification;
    if (paramUserNotification == null) {
      localUserNotification = new UserNotification();
    }
    paramUserNotification = new UserNotificationSession();
    paramUserNotification.setType(1);
    paramUserNotification.setUnreadCount(paramInt);
    paramUserNotification.setNotification(localUserNotification);
    paramInt = 0;
    while (paramInt < this.b.c.size())
    {
      int i = this.b.c.keyAt(paramInt);
      if (((UserNotificationSession)this.b.c.get(i)).getType() == 1) {
        this.b.c(i);
      }
      paramInt += 1;
    }
    this.b.a(1, paramUserNotification);
  }
  
  private void d(UserNotification paramUserNotification, int paramInt)
  {
    if (this.b == null) {
      return;
    }
    UserNotification localUserNotification = paramUserNotification;
    if (paramUserNotification == null) {
      localUserNotification = new UserNotification();
    }
    paramUserNotification = new UserNotificationSession();
    paramUserNotification.setType(5);
    paramUserNotification.setNotification(localUserNotification);
    paramUserNotification.setUnreadCount(paramInt);
    paramInt = 0;
    while (paramInt < this.b.c.size())
    {
      int i = this.b.c.keyAt(paramInt);
      if (((UserNotificationSession)this.b.c.get(i)).getType() == 5) {
        this.b.c(i);
      }
      paramInt += 1;
    }
    this.b.a(2, paramUserNotification);
  }
  
  public final void F_()
  {
    super.F_();
    if ((this.ar != null) && (!this.ar.c())) {
      this.ar.b();
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e_(true);
    if (this.g == null)
    {
      this.g = paramLayoutInflater.inflate(2130903361, paramViewGroup, false);
      this.h = ((ListView)this.g.findViewById(2131625337));
      this.al = this.g.findViewById(2131624334);
      this.ak = ((StickyListHeadersListView)this.g.findViewById(2131624255));
      this.ak.setAreHeadersSticky(false);
      this.am = new com.xueqiu.android.message.a.u(f(), this.ap);
      this.ak.setAdapter(this.am);
      this.ak.setEmptyView(this.al);
      this.ak.setOnScrollListener(new AbsListView.OnScrollListener()
      {
        public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
        {
          paramAnonymousAbsListView = (EditText)ak.a(c.g(c.this)).findViewById(2131624252);
          if ((paramAnonymousAbsListView != null) && (paramAnonymousAbsListView.isFocused())) {
            ((InputMethodManager)c.this.f().getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousAbsListView.getWindowToken(), 1);
          }
          if (paramAnonymousInt == 2)
          {
            c.h(c.this).f();
            return;
          }
          c.h(c.this).g();
        }
      });
      this.an = this.g.findViewById(2131624257);
      this.ak.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (x)c.i(c.this).getItem(paramAnonymousInt);
          Intent localIntent = new Intent(c.this.f(), ChatActivity.class);
          if ((paramAnonymousAdapterView.d != null) && ((paramAnonymousAdapterView.d instanceof Talk)))
          {
            paramAnonymousAdapterView = (Talk)paramAnonymousAdapterView.d;
            localIntent.putExtra("talk", paramAnonymousAdapterView);
            c.this.f().startActivity(localIntent);
            if (c.g(c.this) != null) {
              ak.c(c.g(c.this));
            }
          }
          do
          {
            return;
            if ((paramAnonymousAdapterView.d != null) && ((paramAnonymousAdapterView.d instanceof User)))
            {
              User localUser = (User)paramAnonymousAdapterView.d;
              paramAnonymousView = DataStore.getInstance(c.this.f()).getTalk(localUser.getUserId(), false);
              paramAnonymousAdapterView = paramAnonymousView;
              if (paramAnonymousView == null)
              {
                paramAnonymousAdapterView = new Talk();
                paramAnonymousAdapterView.setGroup(false);
                paramAnonymousAdapterView.setId(localUser.getUserId());
                paramAnonymousAdapterView.setName(localUser.getScreenName());
                paramAnonymousAdapterView.setProfileImageUrl(localUser.getProfileImageUrl());
              }
              paramAnonymousAdapterView.setCollapsed(false);
              paramAnonymousAdapterView.setActive(true);
              paramAnonymousAdapterView.setLastTime(new Date());
              DataStore.getInstance(c.this.f()).saveTalk(paramAnonymousAdapterView);
              DBManager.getInstance().insertOrUpdateUserByKeepFollowShip(localUser);
              break;
            }
          } while ((paramAnonymousAdapterView.d == null) || (!(paramAnonymousAdapterView.d instanceof IMGroup)));
          paramAnonymousView = (IMGroup)paramAnonymousAdapterView.d;
          paramAnonymousAdapterView = DataStore.getInstance(c.this.f()).getTalk(paramAnonymousView.getId(), true);
          if (paramAnonymousAdapterView == null)
          {
            paramAnonymousAdapterView = new Talk();
            paramAnonymousAdapterView.setGroup(true);
            paramAnonymousAdapterView.setId(paramAnonymousView.getId());
            paramAnonymousAdapterView.setName(paramAnonymousView.getName());
            paramAnonymousAdapterView.setProfileImageUrl(paramAnonymousView.getProfileImageUrl());
            paramAnonymousAdapterView.setCollapsed(false);
          }
          for (;;)
          {
            DataStore.getInstance(c.this.f()).saveTalk(paramAnonymousAdapterView);
            break;
          }
        }
      });
    }
    for (;;)
    {
      this.ak.setVisibility(8);
      this.al.setVisibility(8);
      this.h.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          boolean bool = false;
          if ((c.e(c.this).c()) && (paramAnonymousInt == 0))
          {
            paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), ApplyListActivity.class);
            c.this.a(paramAnonymousAdapterView);
          }
          do
          {
            return;
            if (c.e(c.this).a(paramAnonymousInt))
            {
              paramAnonymousView = c.e(c.this).b(paramAnonymousInt);
              if (paramAnonymousView.getType() == 0)
              {
                paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), CommentReceiveActivity.class);
                c.this.a(paramAnonymousAdapterView);
                return;
              }
              if (paramAnonymousView.getType() == 2)
              {
                paramAnonymousAdapterView = new Intent(c.this.g(), UserListActivity.class);
                paramAnonymousView = new User();
                com.xueqiu.android.base.u.a();
                paramAnonymousView.setUserId(UserLogonDataPrefs.getLogonUserId());
                paramAnonymousAdapterView.putExtra("extra_list_type", 2);
                paramAnonymousAdapterView.putExtra("extra_user", paramAnonymousView);
                c.this.a(paramAnonymousAdapterView);
                com.xueqiu.android.base.util.b.a(c.this.f(), 2131166469);
                return;
              }
              if (paramAnonymousView.getType() == 1)
              {
                paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), MentionMeStatusActivity.class);
                c.this.a(paramAnonymousAdapterView);
                return;
              }
              if (paramAnonymousView.getType() == 4)
              {
                paramAnonymousView.setUnreadCount(0);
                paramAnonymousAdapterView = new Bundle();
                if (!c.j(c.this))
                {
                  c.k(c.this);
                  com.xueqiu.android.base.b.a();
                  UserPrefs.setBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in", true);
                  bool = true;
                }
                paramAnonymousAdapterView.putBoolean("is_show_hint", bool);
                paramAnonymousAdapterView.putInt("question_count", c.l(c.this));
                paramAnonymousAdapterView.putInt("comment_count", c.m(c.this));
                if ((c.l(c.this) <= 0) && (c.m(c.this) > 0)) {
                  paramAnonymousAdapterView.putString("page_type", "comment");
                }
                for (;;)
                {
                  c.this.a(SingleFragmentActivity.a(c.this.f(), l.class, paramAnonymousAdapterView));
                  paramAnonymousAdapterView = paramAnonymousView.getNotification();
                  if (paramAnonymousAdapterView == null) {
                    break;
                  }
                  UserPrefs.setString(c.this.f(), "key_new_paid_mention", m.a().toJson(paramAnonymousAdapterView));
                  return;
                  paramAnonymousAdapterView.putString("page_type", "question");
                }
              }
              if (paramAnonymousView.getType() == 5)
              {
                paramAnonymousAdapterView = SingleFragmentActivity.a(paramAnonymousAdapterView.getContext(), w.class);
                c.this.a(paramAnonymousAdapterView);
                return;
              }
              paramAnonymousView.setUnreadCount(0);
              paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), MyPushListActivity.class);
              c.this.a(paramAnonymousAdapterView);
              paramAnonymousAdapterView = paramAnonymousView.getNotification();
              if (paramAnonymousAdapterView != null) {
                UserPrefs.setString(c.this.f(), "key_new_push", m.a().toJson(paramAnonymousAdapterView));
              }
              paramAnonymousAdapterView = new SNBEvent(1800, 8);
              com.xueqiu.android.base.i.a().a(paramAnonymousAdapterView);
              return;
            }
            paramAnonymousView = (Talk)c.e(c.this).getItem(paramAnonymousInt);
          } while (paramAnonymousView == null);
          if (paramAnonymousView.isCollapsed())
          {
            paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), TalkListActivity.class);
            paramAnonymousAdapterView.putExtra("extra_collapsed_boolean", true);
            c.this.a(paramAnonymousAdapterView);
            return;
          }
          paramAnonymousAdapterView = new Intent(paramAnonymousAdapterView.getContext(), ChatActivity.class);
          paramAnonymousAdapterView.putExtra("talk", (Parcelable)c.e(c.this).getItem(paramAnonymousInt));
          c.this.a(paramAnonymousAdapterView);
        }
      });
      this.h.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
      {
        public final boolean onItemLongClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          if ((c.e(c.this).getItemViewType(paramAnonymousInt) == 0) && (!c.e(c.this).a(paramAnonymousInt)))
          {
            paramAnonymousAdapterView = (Talk)c.e(c.this).getItem(paramAnonymousInt);
            if (paramAnonymousAdapterView == null) {
              return false;
            }
            if (!paramAnonymousAdapterView.isCollapsed())
            {
              paramAnonymousView = new AlertDialog.Builder(paramAnonymousView.getContext()).setTitle(2131165775);
              String str = c.this.a(2131165464);
              paramAnonymousAdapterView = new DialogInterface.OnClickListener()
              {
                public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (paramAnonymous2Int == 0)
                  {
                    paramAnonymous2DialogInterface = c.this;
                    Talk localTalk = paramAnonymousAdapterView;
                    paramAnonymous2DialogInterface.b.a.remove(localTalk);
                    paramAnonymous2DialogInterface.b.notifyDataSetChanged();
                    localTalk.setActive(false);
                    localTalk.setUnread(0);
                    DataStore.getInstance(paramAnonymous2DialogInterface.f()).saveTalk(localTalk);
                    if (paramAnonymous2DialogInterface.e != null) {
                      paramAnonymous2DialogInterface.e.a(Commands.updateMessageSession(localTalk));
                    }
                    rx.a.a(DataStore.getInstance(paramAnonymous2DialogInterface.f()).getTalks(false)).c(new c.19(paramAnonymous2DialogInterface)).a(new c.18(paramAnonymous2DialogInterface)).d(new c.17(paramAnonymous2DialogInterface)).c(new c.16(paramAnonymous2DialogInterface));
                  }
                }
              };
              paramAnonymousView.setItems(new String[] { str }, paramAnonymousAdapterView).show();
              return true;
            }
          }
          return false;
        }
      });
      return this.g;
      if (this.g.getParent() != null) {
        ((ViewGroup)this.g.getParent()).removeView(this.g);
      }
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "im";
    if (this.r != null)
    {
      paramBundle = this.r;
      this.as = paramBundle.getInt("arg_comment_count");
      this.at = paramBundle.getInt("arg_mention_count");
      this.au = paramBundle.getInt("arg_paid_mention_count");
      this.av = paramBundle.getInt("arg_paid_comment_count");
      this.aw = paramBundle.getInt("arg_new_follower_count");
      this.ax = paramBundle.getInt("arg_trade_notification");
    }
    com.xueqiu.android.base.b.a();
    this.ay = UserPrefs.getBoolean(com.xueqiu.android.base.b.d(), "pay_ask_first_in", false);
    this.f = rx.h.p.c().a();
    paramBundle = new Intent(f(), MessageService.class);
    f().bindService(paramBundle, this.az, 1);
    this.f = rx.h.p.a().a();
    this.ap = com.d.a.b.f.a();
    paramBundle = new IntentFilter();
    paramBundle.addAction("com.xueqiu.android.action.refreshGroupApply");
    paramBundle.addAction("com.xueqiu.android.action.deleteTalk");
    paramBundle.addAction("com.xueqiu.android.action.receiveRead");
    this.d = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        do
        {
          try
          {
            paramAnonymousContext = c.c(c.this);
            if (paramAnonymousContext == null) {
              return;
            }
          }
          catch (Exception paramAnonymousContext)
          {
            paramAnonymousContext.printStackTrace();
            return;
          }
          if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.refreshGroupApply"))
          {
            c.d(c.this);
            return;
          }
        } while ((!paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.deleteTalk")) || (c.e(c.this) == null));
        c.e(c.this).a();
      }
    };
    this.c = r.a(f());
    this.c.a(this.d, paramBundle);
    a(com.xueqiu.android.message.client.c.a.a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(com.xueqiu.android.message.client.c.c.a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(com.xueqiu.android.message.client.c.e.a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(com.xueqiu.android.message.client.c.b.a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    a(com.xueqiu.android.message.client.c.n.a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
    if (!com.xueqiu.android.base.u.a().d)
    {
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.g).c(new rx.c.b() {}));
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.j).c(new rx.c.b() {}));
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.i).c(new rx.c.b() {}));
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.h).c(new rx.c.b() {}));
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.k).c(new rx.c.b() {}));
      a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.l).c(new rx.c.b() {}));
    }
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    TypedArray localTypedArray = g().getTheme().obtainStyledAttributes(new int[] { 2130772140, 2130772131, 2130772146, 2130772124 });
    this.ao = paramMenu.add(0, 1, 0, 2131166038);
    this.ao.setIcon(localTypedArray.getResourceId(0, 0));
    ak.a(this.ao, 2);
    SubMenu localSubMenu = paramMenu.addSubMenu(0, 2, 1, "更多").setIcon(localTypedArray.getResourceId(1, 0));
    localSubMenu.add(0, 3, 0, "创建群组").setIcon(localTypedArray.getResourceId(2, 0));
    localSubMenu.add(0, 4, 1, "添加球友").setIcon(localTypedArray.getResourceId(3, 0));
    ak.a(localSubMenu.getItem(), 2);
    localTypedArray.recycle();
    super.a(paramMenu, paramMenuInflater);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    MobclickAgent.onEvent(f(), "IM_home");
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 3)
    {
      if (com.xueqiu.android.base.u.a().d)
      {
        t.a(g(), false);
        return true;
      }
      Intent localIntent = new Intent(f(), SelectUserActivity.class);
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("create_chat", true);
      localIntent.putExtras(localBundle);
      a(localIntent);
      com.xueqiu.android.base.util.b.a(f(), 2131166435);
    }
    for (;;)
    {
      return super.a(paramMenuItem);
      if (paramMenuItem.getItemId() == 4)
      {
        a(new Intent(f(), FindPeopleActivity.class));
        com.xueqiu.android.base.util.b.a(f(), 2131166436);
      }
      else if (paramMenuItem.getItemId() == 1)
      {
        a(new Intent(f(), TalkSearchActivity.class), 2130968592, 2130968584);
      }
    }
  }
  
  public final void o()
  {
    super.o();
    u();
    if (this.ar != null) {
      this.ar.b();
    }
    this.ar = this.f.a(new rx.c.a()
    {
      public final void a()
      {
        c.p(c.this);
      }
    });
  }
  
  public final void q()
  {
    if (this.f != null) {
      this.f.b();
    }
    if ((this.c != null) && (this.d != null)) {
      this.c.a(this.d);
    }
    if (this.b != null) {
      this.b.d();
    }
    if (this.e != null) {
      f().unbindService(this.az);
    }
    super.q();
  }
  
  public final void u()
  {
    if ((Build.VERSION.SDK_INT >= 11) && (!j())) {}
    while (w() == null) {
      return;
    }
    switch (this.aq)
    {
    default: 
      return;
    case -1: 
      w().a("消息(未连接)");
      return;
    case 0: 
      w().a("消息");
      return;
    }
    w().a("消息(连接中...)");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */