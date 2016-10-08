package com.xueqiu.android.community.d;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.r;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.af;
import com.xueqiu.android.base.util.l;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.model.Question;
import com.xueqiu.android.community.model.SimpleFund;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import rx.a;
import rx.c.j;
import rx.i;

public final class e
  implements com.xueqiu.android.common.t<Status>, com.xueqiu.android.community.b.n
{
  public static int a = -1;
  public static int b = 0;
  public static int c = 4;
  User d;
  com.xueqiu.android.common.b e;
  ai f;
  public int g = a;
  private com.xueqiu.android.community.b.o h;
  private ArrayList<Status> i = new ArrayList();
  private ArrayList<Status> j = new ArrayList();
  private ArrayList<Status> k = new ArrayList();
  
  public e(@NonNull com.xueqiu.android.community.b.o paramo, User paramUser)
  {
    this.d = paramUser;
    this.h = paramo;
    this.e = ((com.xueqiu.android.common.b)paramo);
    this.f = com.xueqiu.android.common.b.g();
  }
  
  private x<ArrayList<Status>> a(boolean paramBoolean, p<ArrayList<Status>> paramp)
  {
    Object localObject = d();
    long l1;
    long l2;
    if (((ArrayList)localObject).size() != 0) {
      if (!paramBoolean)
      {
        l1 = ((Status)((ArrayList)localObject).get(0)).getStatusId();
        l2 = 0L;
      }
    }
    for (;;)
    {
      ai localai = q.a().b();
      if (((ArrayList)localObject).size() == 0) {}
      for (int m = 3;; m = 20)
      {
        if ((this.d.getScreenName() == null) || (this.d.getScreenName().equals(""))) {
          break label147;
        }
        localObject = this.d.getScreenName();
        n = this.g;
        return localai.g.a(0L, (String)localObject, n, l1, l2, m, 0, paramp);
        l2 = ((Status)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).getStatusId();
        l1 = 0L;
        break;
      }
      label147:
      long l3 = this.d.getUserId();
      int n = this.g;
      return localai.g.a(l3, null, n, l1, l2, m, 0, paramp);
      l1 = 0L;
      l2 = 0L;
    }
  }
  
  public final com.android.volley.n<ArrayList<Status>> a(p<ArrayList<Status>> paramp)
  {
    return a(false, paramp);
  }
  
  public final a<ArrayList<Status>> a(int paramInt)
  {
    com.xueqiu.android.base.b.t localt = new com.xueqiu.android.base.b.t(this.e);
    this.f.a(this.d.getUserId(), this.g, paramInt, 1, localt);
    return localt.a(this.e);
  }
  
  public final void a()
  {
    c().b(new i()
    {
      public final void a() {}
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        aa.a(paramAnonymousThrowable);
      }
    });
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if (paramArrayList != null) {
      d().addAll(paramArrayList);
    }
  }
  
  public final com.android.volley.n<ArrayList<Status>> b(p<ArrayList<Status>> paramp)
  {
    return a(true, paramp);
  }
  
  public final void b() {}
  
  public final a<User> c()
  {
    Object localObject = new r();
    ((r)localObject).a = true;
    ((r)localObject).c = com.android.volley.o.c;
    localObject = new com.xueqiu.android.base.b.t(this.e);
    long l = this.d.getUserId();
    if (l == 0L)
    {
      String str = this.d.getScreenName();
      if (!c.a(this.d.getScreenName())) {
        this.f.b(str, null, (p)localObject);
      }
    }
    for (;;)
    {
      return ((com.xueqiu.android.base.b.t)localObject).a(this.e);
      this.f.b(null, this.d.getDomain(), (p)localObject);
      continue;
      this.f.g(l, (p)localObject);
    }
  }
  
  public final ArrayList<Status> d()
  {
    if (this.g == a) {
      return this.i;
    }
    if (this.g == b) {
      return this.j;
    }
    return this.k;
  }
  
  public final void e()
  {
    final com.xueqiu.android.base.b.t localt = new com.xueqiu.android.base.b.t(this.e);
    if (this.d.isFollowing()) {
      new AlertDialog.Builder(this.e).setMessage(2131165363).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          e.b(e.this).h();
          com.xueqiu.android.common.b.g().h(e.c(e.this).getUserId(), localt);
        }
      }).setNegativeButton(2131165296, null).create().show();
    }
    for (;;)
    {
      localt.a(this.e).b(new i()
      {
        public final void a()
        {
          e.b(e.this).i();
          if (!e.c(e.this).isFollowing()) {
            l.a(e.b(e.this), e.c(e.this).getUserId());
          }
          User localUser = e.c(e.this);
          if (!e.c(e.this).isFollowing()) {}
          for (boolean bool = true;; bool = false)
          {
            localUser.setFollowing(bool);
            e.a(e.this).j();
            if ((e.c(e.this).getPinyinRemark() == null) && (e.c(e.this).getRemark() != null)) {
              e.c(e.this).setPinyinRemark(af.b(e.c(e.this).getRemark()));
            }
            if ((e.c(e.this).getPinyinScreenName() == null) && (e.c(e.this).getScreenName() != null)) {
              e.c(e.this).setPinyinScreenName(af.b(e.c(e.this).getScreenName()));
            }
            DBManager.getInstance().insertUser(e.c(e.this));
            if ((e.c(e.this).isFollowing()) && (e.c(e.this).isFollowMe())) {
              e.b(e.this).sendBroadcast(new Intent("intent_action_update_friends"));
            }
            return;
          }
        }
        
        public final void a(Throwable paramAnonymousThrowable)
        {
          e.b(e.this).i();
          aa.a(paramAnonymousThrowable);
        }
      });
      return;
      this.e.h();
      com.xueqiu.android.common.b.g().i(this.d.getUserId(), localt);
    }
  }
  
  public final void f()
  {
    final com.xueqiu.android.base.b.t localt = new com.xueqiu.android.base.b.t(this.e);
    if (this.d.isBlocking())
    {
      ai localai = com.xueqiu.android.common.b.g();
      long l = this.d.getUserId();
      localai.h.c(l, localt);
      this.e.h();
    }
    for (;;)
    {
      localt.a(this.e).b(new i()
      {
        public final void a()
        {
          e.b(e.this).i();
        }
        
        public final void a(Throwable paramAnonymousThrowable)
        {
          aa.a(paramAnonymousThrowable);
        }
      });
      return;
      new AlertDialog.Builder(this.e).setMessage(2131165362).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = com.xueqiu.android.common.b.g();
          long l = e.c(e.this).getUserId();
          com.xueqiu.android.base.b.t localt = localt;
          paramAnonymousDialogInterface.h.b(l, localt);
          e.b(e.this).h();
        }
      }).setNegativeButton(2131165296, null).create().show();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */