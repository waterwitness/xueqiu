package com.xueqiu.android.message.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snowballfinance.message.io.c.h;
import com.snowballfinance.messageplatform.a.e;
import com.snowballfinance.messageplatform.a.z;
import com.snowballfinance.messageplatform.data.MessageSession;
import com.snowballfinance.messageplatform.data.MessageSessionExt;
import com.xueqiu.android.base.SnowBallApplication;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import rx.c.f;
import rx.c.g;

public final class a
{
  Context a;
  d b;
  private h c;
  private SnowBallApplication d;
  
  public a(Context paramContext, h paramh, SnowBallApplication paramSnowBallApplication)
  {
    this.a = paramContext;
    this.c = paramh;
    this.b = new d(paramContext, paramSnowBallApplication);
    this.d = paramSnowBallApplication;
  }
  
  static void a()
  {
    int i = DBManager.getInstance().getAllUnreadCount(false);
    c.f.a(Integer.valueOf(i));
  }
  
  final void a(e parame)
  {
    Object localObject1 = new ArrayList(parame.d.size());
    final Object localObject2 = new ArrayList();
    Object localObject3 = parame.d.iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject4 = (com.snowballfinance.messageplatform.data.Message)((Iterator)localObject3).next();
      ((List)localObject1).add(com.xueqiu.android.message.model.Message.wrapPlatformMessage((com.snowballfinance.messageplatform.data.Message)localObject4));
      ((List)localObject2).add(((com.snowballfinance.messageplatform.data.Message)localObject4).getMessageId());
    }
    this.c.a(com.snowballfinance.messageplatform.a.y.a((List)localObject2, this.c.e)).c(new rx.c.b() {});
    final boolean bool = parame.c.booleanValue();
    final rx.a locala2 = rx.a.a((Iterable)localObject1);
    locala2.a(new f() {}).c(new rx.c.b() {});
    rx.a locala3 = locala2.a(new f() {});
    locala2.a(new f() {}).c(new rx.c.b() {});
    locala2.a(new f() {}).b(1).c(new rx.c.b() {});
    locala2.a(new f() {}).b(1).c(new rx.c.b() {});
    parame = locala2.a(new f() {}).c(new f() {});
    localObject1 = locala2.a(new f() {}).b(new f() {});
    localObject2 = locala2.a(new f() {}).c(new f() {});
    localObject3 = locala2.a(new f() {}).c(new f() {});
    Object localObject4 = locala2.a(new f() {}).c(new f() {});
    rx.a locala1 = locala2.a(new f() {}).c(new f() {});
    locala2 = rx.a.a(locala2.a(new f() {}), locala3).i().b(new f() {});
    rx.a.a(parame, rx.a.a((rx.a)localObject3, locala1).a(100).d().b(new f() {})).d().a(100).c(new rx.c.b() {});
    rx.a.a((rx.a)localObject1, (rx.a)localObject2, (rx.a)localObject4).d().a(100).b(new f() {}).a(100).b(new f() {}).b(new rx.c.b() {}).b(new f() {}).b(new rx.i()
    {
      public final void a()
      {
        locala2.b(new g() {}).c(new rx.c.b() {});
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        v.c("CommandHandler", "", paramAnonymousThrowable);
      }
    });
  }
  
  final void a(com.snowballfinance.messageplatform.a.i parami)
  {
    Object localObject = parami.c;
    parami = new ArrayList(((List)localObject).size());
    ArrayList localArrayList1 = new ArrayList(((List)localObject).size());
    ArrayList localArrayList2 = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      MessageSessionExt localMessageSessionExt = (MessageSessionExt)((Iterator)localObject).next();
      parami.add(localMessageSessionExt.getTargetId());
      localArrayList1.add(localMessageSessionExt.getTargetGroup());
      localArrayList2.add(localMessageSessionExt.getTargetLastReadTimestamp());
    }
    DBManager.getInstance().markTalkTargetReads(parami, localArrayList1, localArrayList2);
    c.c.a(DataStore.getInstance(this.a).getTalks(false));
    a();
  }
  
  final boolean b()
  {
    if (!Boolean.valueOf(PreferenceManager.getDefaultSharedPreferences(this.a).getBoolean(this.a.getString(2131165669), true)).booleanValue()) {
      return false;
    }
    Object localObject = PreferenceManager.getDefaultSharedPreferences(this.a).getString(this.a.getString(2131165675), "7,24").split(",");
    int i = Integer.parseInt(localObject[0]);
    int j = Integer.parseInt(localObject[1]);
    localObject = Calendar.getInstance();
    ((Calendar)localObject).set(12, 0);
    ((Calendar)localObject).set(13, 0);
    long l1;
    long l2;
    if (i > j)
    {
      ((Calendar)localObject).set(11, j);
      l1 = ((Calendar)localObject).getTimeInMillis();
      ((Calendar)localObject).add(5, -1);
      ((Calendar)localObject).set(11, i);
      l2 = ((Calendar)localObject).getTimeInMillis();
    }
    while ((System.currentTimeMillis() >= l2) && (System.currentTimeMillis() <= l1))
    {
      return true;
      if (i < j)
      {
        ((Calendar)localObject).set(11, i);
        l2 = ((Calendar)localObject).getTimeInMillis();
        ((Calendar)localObject).set(11, j);
        l1 = ((Calendar)localObject).getTimeInMillis();
      }
      else
      {
        return true;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\client\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */