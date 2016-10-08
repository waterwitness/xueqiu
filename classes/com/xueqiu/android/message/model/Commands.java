package com.xueqiu.android.message.model;

import com.snowballfinance.messageplatform.a.d;
import com.snowballfinance.messageplatform.a.e;
import com.snowballfinance.messageplatform.a.f;
import com.snowballfinance.messageplatform.a.j;
import com.snowballfinance.messageplatform.a.l;
import com.snowballfinance.messageplatform.a.q;
import com.snowballfinance.messageplatform.a.r;
import com.snowballfinance.messageplatform.a.t;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Commands
{
  public static d deleteMessages(long paramLong, boolean paramBoolean)
  {
    d locald = new d();
    com.xueqiu.android.base.u.a();
    locald.c = Long.valueOf(UserLogonDataPrefs.getLogonUserId());
    locald.d = Long.valueOf(paramLong);
    locald.e = Boolean.valueOf(paramBoolean);
    return locald;
  }
  
  public static e deliver(Message paramMessage)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramMessage);
    return deliver(localArrayList);
  }
  
  public static e deliver(List<Message> paramList)
  {
    e locale = new e();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(((Message)paramList.next()).toPlatformMessage());
    }
    locale.d = localArrayList;
    return locale;
  }
  
  public static f deliverReceipt(List<Message> paramList)
  {
    f localf = new f();
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(Long.valueOf(((Message)paramList.next()).getId()));
    }
    localf.c = localArrayList;
    return localf;
  }
  
  public static j getMessageSessions()
  {
    j localj = new j();
    com.xueqiu.android.base.u.a();
    localj.c = Long.valueOf(UserLogonDataPrefs.getLogonUserId());
    return localj;
  }
  
  public static l getMessages(long paramLong1, boolean paramBoolean, long paramLong2, long paramLong3, int paramInt)
  {
    l locall = new l();
    com.xueqiu.android.base.u.a();
    locall.c = Long.valueOf(UserLogonDataPrefs.getLogonUserId());
    locall.d = Long.valueOf(paramLong1);
    locall.e = Boolean.valueOf(paramBoolean);
    locall.f = Long.valueOf(paramLong2);
    locall.g = Long.valueOf(paramLong3);
    locall.h = Integer.valueOf(paramInt);
    return locall;
  }
  
  public static q read(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    q localq = new q();
    localq.c = Long.valueOf(paramLong1);
    localq.d = Long.valueOf(paramLong2);
    localq.e = Boolean.valueOf(paramBoolean);
    return localq;
  }
  
  public static r requestPrimary()
  {
    return new r();
  }
  
  public static t typing(long paramLong1, long paramLong2)
  {
    t localt = new t();
    localt.c = Long.valueOf(paramLong1);
    localt.d = Long.valueOf(paramLong2);
    return localt;
  }
  
  public static com.snowballfinance.messageplatform.a.u updateMessageSession(Talk paramTalk)
  {
    com.snowballfinance.messageplatform.a.u localu = new com.snowballfinance.messageplatform.a.u();
    localu.c = paramTalk.toMessageSession();
    return localu;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\Commands.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */