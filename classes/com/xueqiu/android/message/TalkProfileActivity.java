package com.xueqiu.android.message;

import android.app.AlertDialog;
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
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.content.r;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.snowballfinance.messageplatform.a.z;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.message.model.BatchResult;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.List;
import rx.a;

public class TalkProfileActivity
  extends com.xueqiu.android.common.b
{
  private CheckBox A;
  private CheckBox B;
  private CheckBox C;
  private Button D;
  private Button E;
  private DBManager F;
  private boolean G;
  private IMGroup H;
  private MessageService I;
  private ServiceConnection J = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      TalkProfileActivity.a(TalkProfileActivity.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      TalkProfileActivity.a(TalkProfileActivity.this, null);
    }
  };
  private BroadcastReceiver K = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.updateIMGroup"))
      {
        paramAnonymousContext = (IMGroup)paramAnonymousIntent.getParcelableExtra("extra_imgroup");
        if ((paramAnonymousContext != null) && (TalkProfileActivity.e(TalkProfileActivity.this) != null) && (paramAnonymousContext.getId() == TalkProfileActivity.e(TalkProfileActivity.this).getId())) {
          TalkProfileActivity.this.a(paramAnonymousContext);
        }
      }
    }
  };
  private CompoundButton.OnCheckedChangeListener L;
  public View j;
  public View k;
  public View p;
  private Talk q;
  private TextView r;
  private TextView s;
  private TextView t;
  private Button u;
  private Button v;
  private Button w;
  private Button x;
  private ViewGroup y;
  private CheckBox z;
  
  protected final void a(final IMGroup paramIMGroup)
  {
    getApplication();
    com.xueqiu.android.base.q.a().b().q(this.q.getId(), new p(this)
    {
      public final void a(com.android.volley.y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    if (paramIMGroup == null)
    {
      aa.a("群组不存在或者已经被删除！");
      return;
    }
    this.H = paramIMGroup;
    this.H.setMaster(this.F.queryUserByUserId(paramIMGroup.getMasterId()));
    this.r.setText(String.format("%s(%d/%d)", new Object[] { getString(2131165621), Integer.valueOf(paramIMGroup.getCount()), Integer.valueOf(paramIMGroup.getLimitCount()) }));
    this.u.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(paramAnonymousView.getContext(), UserProfileActivity.class);
        paramAnonymousView.putExtra("extra_user", paramIMGroup.getMaster());
        TalkProfileActivity.this.startActivity(paramAnonymousView);
      }
    });
    Object localObject2;
    label184:
    boolean bool;
    label236:
    int i;
    label363:
    int m;
    int n;
    int i1;
    if (this.H.getMaster() != null)
    {
      this.u.setText(String.format("群主：%s", new Object[] { this.H.getMaster().getScreenName() }));
      localObject2 = this.v;
      if (!paramIMGroup.isEmptyName()) {
        break label568;
      }
      localObject1 = "未命名";
      ((Button)localObject2).setText(String.format("群名：%s", new Object[] { localObject1 }));
      this.v.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          long l = paramIMGroup.getMasterId();
          u.a();
          if (l != UserLogonDataPrefs.getLogonUserId())
          {
            new AlertDialog.Builder(paramAnonymousView.getContext()).setNegativeButton(TalkProfileActivity.this.getString(2131165632), null).setTitle(TalkProfileActivity.this.getString(2131166217)).setMessage(TalkProfileActivity.this.getString(2131165612)).create().show();
            return;
          }
          paramAnonymousView = new Intent(paramAnonymousView.getContext(), GroupNameActivity.class);
          paramAnonymousView.putExtra("extra_org", paramIMGroup);
          TalkProfileActivity.this.startActivityForResult(paramAnonymousView, 2);
        }
      });
      u.a();
      if (UserLogonDataPrefs.getLogonUserId() != paramIMGroup.getMasterId()) {
        break label576;
      }
      bool = true;
      this.G = bool;
      localObject2 = getTheme().obtainStyledAttributes(new int[] { 2130772208, 2130772210, 2130772209, 2130772211 });
      if (!this.G) {
        break label607;
      }
      this.w.setText(getResources().getString(2131165634));
      paramIMGroup = getString(2131165609);
      this.B.setChecked(this.H.isPub());
      this.C.setChecked(this.H.isAllowInviteUser());
      this.j.setVisibility(0);
      localObject1 = this.x;
      if (!this.H.isPub()) {
        break label582;
      }
      i = 0;
      ((Button)localObject1).setVisibility(i);
      this.p.setVisibility(0);
      i = this.j.getPaddingBottom();
      m = this.j.getPaddingLeft();
      n = this.j.getPaddingRight();
      i1 = this.j.getPaddingTop();
      if (!this.H.isPub()) {
        break label589;
      }
      this.j.setBackgroundResource(((TypedArray)localObject2).getResourceId(1, 2130772210));
    }
    for (;;)
    {
      this.j.setPadding(m, i1, n, i);
      this.r.setText(String.format("%s(%d/%d)", new Object[] { getString(2131165628), Integer.valueOf(this.H.getCount()), Integer.valueOf(this.H.getLimitCount()) }));
      ((TypedArray)localObject2).recycle();
      this.r.setVisibility(0);
      this.w.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new AlertDialog.Builder(paramAnonymousView.getContext()).setNegativeButton(TalkProfileActivity.this.getString(2131165296), null).setPositiveButton(TalkProfileActivity.this.getString(2131165361), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              TalkProfileActivity.k(TalkProfileActivity.this);
            }
          }).setTitle(TalkProfileActivity.this.getString(2131166217)).setMessage(paramIMGroup).create().show();
        }
      });
      return;
      com.xueqiu.android.base.q.a().b().b(String.valueOf(this.H.getMasterId()), null, new p(this)
      {
        public final void a(com.android.volley.y paramAnonymousy) {}
      });
      break;
      label568:
      localObject1 = paramIMGroup.getName();
      break label184;
      label576:
      bool = false;
      break label236;
      label582:
      i = 8;
      break label363;
      label589:
      this.j.setBackgroundResource(((TypedArray)localObject2).getResourceId(0, 2130772208));
    }
    label607:
    Object localObject1 = getString(2131165613);
    this.j.setVisibility(8);
    this.k.setVisibility(8);
    this.x.setVisibility(8);
    Button localButton = this.E;
    if (this.H.isAllowInviteUser())
    {
      i = 0;
      label661:
      localButton.setVisibility(i);
      if (!paramIMGroup.isPub()) {
        break label846;
      }
      i = this.x.getPaddingLeft();
      m = this.x.getPaddingTop();
      n = this.x.getPaddingRight();
      i1 = this.x.getPaddingBottom();
      this.x.setVisibility(0);
      this.x.setBackgroundResource(((TypedArray)localObject2).getResourceId(2, 2130772209));
      ((LinearLayout.LayoutParams)this.x.getLayoutParams()).topMargin = ((int)getResources().getDimension(2131230853));
      this.x.setPadding(i, m, n, i1);
      this.p.setVisibility(0);
    }
    for (;;)
    {
      this.r.setText(String.format("%s(%d/%d)", new Object[] { getString(2131165639), Integer.valueOf(this.H.getCount()), Integer.valueOf(this.H.getLimitCount()) }));
      paramIMGroup = (IMGroup)localObject1;
      break;
      i = 8;
      break label661;
      label846:
      this.x.setVisibility(8);
      this.p.setVisibility(8);
    }
  }
  
  public void addMember(View paramView)
  {
    com.xueqiu.android.base.q.a().b();
    if (this.q.isGroup())
    {
      h();
      com.xueqiu.android.base.q.a().b().p(this.q.getId(), new p(this)
      {
        public final void a(com.android.volley.y paramAnonymousy)
        {
          TalkProfileActivity.this.i();
          aa.a(paramAnonymousy);
        }
      });
      return;
    }
    paramView = new Intent(this, SelectUserActivity.class);
    paramView.putExtra("exclude_user_ids", new long[] { this.q.getId() });
    startActivityForResult(paramView, 1);
  }
  
  public void manageGroup(View paramView)
  {
    paramView = new Intent(paramView.getContext(), GroupManageActivity.class);
    paramView.putExtra("extra_group", this.H);
    startActivityForResult(paramView, 3);
  }
  
  public void nameGroup(View paramView)
  {
    startActivity(new Intent(this, GroupCreateActivity.class));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 0;
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Object localObject;
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      localObject = paramIntent.getParcelableArrayListExtra("select_user_list");
      if (((ArrayList)localObject).size() != 0) {}
    }
    else
    {
      return;
    }
    getApplication();
    paramIntent = new long[((ArrayList)localObject).size()];
    paramInt1 = 0;
    while (paramInt1 < ((ArrayList)localObject).size())
    {
      paramIntent[paramInt1] = ((User)((ArrayList)localObject).get(paramInt1)).getUserId();
      paramInt1 += 1;
    }
    if (this.q.isGroup()) {
      if (paramIntent.length > 0)
      {
        localObject = com.xueqiu.android.base.q.a().b();
        long l = this.q.getId();
        p local6 = new p(this)
        {
          public final void a(com.android.volley.y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        ((ai)localObject).k.a(l, paramIntent, local6);
      }
    }
    for (;;)
    {
      finish();
      return;
      localObject = new long[paramIntent.length + 1];
      paramInt1 = i;
      while (paramInt1 < paramIntent.length)
      {
        localObject[paramInt1] = paramIntent[paramInt1];
        paramInt1 += 1;
      }
      localObject[(localObject.length - 1)] = this.q.getId();
      com.xueqiu.android.base.q.a().b().a("", "群简介", (long[])localObject, new p(this)
      {
        public final void a(com.android.volley.y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
    }
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, MessageService.class), this.J, 1);
    this.F = DBManager.getInstance();
    setContentView(2130903420);
    this.q = ((Talk)getIntent().getParcelableExtra("extra_talk"));
    this.r = ((TextView)findViewById(2131625180));
    this.s = ((TextView)findViewById(2131625345));
    this.u = ((Button)findViewById(2131625182));
    this.v = ((Button)findViewById(2131625346));
    this.x = ((Button)findViewById(2131625325));
    this.w = ((Button)findViewById(2131625354));
    this.y = ((ViewGroup)findViewById(2131625181));
    this.A = ((CheckBox)findViewById(2131625348));
    this.z = ((CheckBox)findViewById(2131625347));
    this.D = ((Button)findViewById(2131625353));
    this.E = ((Button)findViewById(2131625344));
    this.t = ((TextView)findViewById(2131624267));
    this.B = ((CheckBox)findViewById(2131625350));
    this.j = findViewById(2131625349);
    this.k = findViewById(2131625352);
    this.C = ((CheckBox)findViewById(2131625323));
    this.p = findViewById(2131625351);
    getApplication();
    if (!this.q.isGroup())
    {
      this.t.setText(getText(2131165638));
      this.s.setVisibility(8);
      this.u.setVisibility(8);
      this.v.setVisibility(8);
      this.x.setVisibility(8);
      this.x.setVisibility(8);
      this.p.setVisibility(8);
      this.j.setVisibility(8);
      this.k.setVisibility(8);
      this.w.setVisibility(8);
      paramBundle = this.F;
      u.a();
      paramBundle = paramBundle.queryUserByUserId(UserLogonDataPrefs.getLogonUserId());
      User localUser = this.F.queryUserByUserId(this.q.getId());
      this.F.isFriend(this.q.getId());
      ArrayList localArrayList = new ArrayList(2);
      localArrayList.add(paramBundle.getProfileImageUrl());
      localArrayList.add(localUser.getProfileImageUrl());
      b.a(localArrayList, this.y);
      if (localUser.getType() == 4)
      {
        this.r.setVisibility(8);
        this.y.setVisibility(8);
        this.E.setVisibility(8);
      }
      this.L = new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (!TalkProfileActivity.a(TalkProfileActivity.this).isChecked()) {}
          for (paramAnonymousBoolean = true;; paramAnonymousBoolean = false)
          {
            boolean bool = TalkProfileActivity.b(TalkProfileActivity.this).isChecked();
            TalkProfileActivity.c(TalkProfileActivity.this).setNotify(paramAnonymousBoolean);
            TalkProfileActivity.c(TalkProfileActivity.this).setTop(bool);
            if (TalkProfileActivity.d(TalkProfileActivity.this) == null) {
              break;
            }
            TalkProfileActivity.d(TalkProfileActivity.this).a(com.snowballfinance.messageplatform.a.y.a(TalkProfileActivity.c(TalkProfileActivity.this).toMessageSession())).c(new rx.c.b() {});
            return;
          }
          aa.a(2131165946);
        }
      };
      paramBundle = this.z;
      if (this.q.isNotify()) {
        break label665;
      }
    }
    label665:
    for (boolean bool = true;; bool = false)
    {
      paramBundle.setChecked(bool);
      this.A.setChecked(this.q.isTop());
      this.z.setOnCheckedChangeListener(this.L);
      this.A.setOnCheckedChangeListener(this.L);
      paramBundle = com.xueqiu.android.base.q.a().b();
      this.B.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramBundle.a(TalkProfileActivity.e(TalkProfileActivity.this).getId(), TalkProfileActivity.f(TalkProfileActivity.this).isChecked(), new p(TalkProfileActivity.this)
          {
            public final void a(com.android.volley.y paramAnonymous2y)
            {
              aa.a(paramAnonymous2y);
              TalkProfileActivity.f(TalkProfileActivity.this).setChecked(TalkProfileActivity.e(TalkProfileActivity.this).isPub());
            }
          });
        }
      });
      this.C.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramBundle.b(TalkProfileActivity.e(TalkProfileActivity.this).getId(), TalkProfileActivity.g(TalkProfileActivity.this).isChecked(), new p(TalkProfileActivity.this)
          {
            public final void a(com.android.volley.y paramAnonymous2y)
            {
              aa.a(paramAnonymous2y);
              TalkProfileActivity.g(TalkProfileActivity.this).setChecked(TalkProfileActivity.e(TalkProfileActivity.this).isAllowInviteUser());
            }
          });
        }
      });
      this.D.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(final View paramAnonymousView)
        {
          new AlertDialog.Builder(paramAnonymousView.getContext()).setNegativeButton(TalkProfileActivity.this.getString(2131165296), null).setPositiveButton(TalkProfileActivity.this.getString(2131165361), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              if (TalkProfileActivity.d(TalkProfileActivity.this) != null)
              {
                paramAnonymous2DialogInterface = new com.snowballfinance.messageplatform.a.d();
                u.a();
                paramAnonymous2DialogInterface.c = Long.valueOf(UserLogonDataPrefs.getLogonUserId());
                paramAnonymous2DialogInterface.d = Long.valueOf(TalkProfileActivity.c(TalkProfileActivity.this).getId());
                paramAnonymous2DialogInterface.e = Boolean.valueOf(TalkProfileActivity.c(TalkProfileActivity.this).isGroup());
                TalkProfileActivity.d(TalkProfileActivity.this).a(paramAnonymous2DialogInterface);
              }
              DataStore.getInstance(TalkProfileActivity.this.getBaseContext()).deleteMessages(TalkProfileActivity.c(TalkProfileActivity.this).getId(), TalkProfileActivity.c(TalkProfileActivity.this).isGroup());
              TalkProfileActivity.c(TalkProfileActivity.this).setSummary("");
              DataStore.getInstance(paramAnonymousView.getContext()).saveTalk(TalkProfileActivity.c(TalkProfileActivity.this));
              paramAnonymous2DialogInterface = new Intent("com.xueqiu.android.action.clearTalkHistory");
              paramAnonymous2DialogInterface.putExtra("extra_talk", TalkProfileActivity.c(TalkProfileActivity.this));
              r.a(paramAnonymousView.getContext()).a(paramAnonymous2DialogInterface);
              TalkProfileActivity.this.setResult(-1);
              TalkProfileActivity.this.finish();
            }
          }).setTitle(TalkProfileActivity.this.getString(2131166217)).setMessage(TalkProfileActivity.this.getString(2131165608)).create().show();
        }
      });
      return;
      paramBundle = new IntentFilter("com.xueqiu.android.action.updateIMGroup");
      r.a(this).a(this.K, paramBundle);
      break;
    }
  }
  
  protected void onDestroy()
  {
    r.a(this).a(this.K);
    unbindService(this.J);
    super.onDestroy();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.q.isGroup()) {
      a(this.F.getIMGroupById(this.q.getId()));
    }
  }
  
  public void publishGroup(View paramView)
  {
    b.publishGroup(this, this.H);
  }
  
  public void toGroupMembers(View paramView)
  {
    com.xueqiu.android.base.q.a().b();
    if (this.q.isGroup())
    {
      h();
      com.xueqiu.android.base.q.a().b().p(this.q.getId(), new p(this)
      {
        public final void a(com.android.volley.y paramAnonymousy)
        {
          TalkProfileActivity.this.i();
          aa.a(paramAnonymousy);
        }
      });
      return;
    }
    ArrayList localArrayList = new ArrayList();
    DBManager localDBManager = this.F;
    u.a();
    localArrayList.add(localDBManager.queryUserByUserId(UserLogonDataPrefs.getLogonUserId()));
    localArrayList.add(this.F.queryUserByUserId(this.q.getId()));
    paramView = new Intent(paramView.getContext(), GroupMemberListActivity.class);
    paramView.putParcelableArrayListExtra("extra_member_list", new ArrayList(localArrayList));
    paramView.putExtra("extra_group", this.H);
    startActivity(paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\TalkProfileActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */