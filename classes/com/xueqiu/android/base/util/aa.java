package com.xueqiu.android.base.util;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.support.v4.a.au;
import android.support.v4.a.av;
import android.support.v4.content.r;
import android.util.Log;
import android.widget.Toast;
import com.android.volley.j;
import com.android.volley.x;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonSyntaxException;
import com.snowballfinance.messageplatform.data.SystemEvent;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.RecentTalkActivity;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLHandshakeException;

public final class aa
{
  public static final AtomicInteger a = new AtomicInteger(0);
  private static Bitmap b = null;
  
  public static av a(Context paramContext)
  {
    av localav = new av(paramContext);
    paramContext = localav.a(paramContext.getString(2131165197));
    paramContext.g = b;
    paramContext.a(2130838277);
    if (Build.VERSION.SDK_INT < 16) {
      localav.a(2130838700);
    }
    return localav;
  }
  
  public static void a() {}
  
  public static void a(int paramInt)
  {
    b.a();
    a(b.d().getString(paramInt));
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(paramInt);
  }
  
  public static void a(Context paramContext, long paramLong)
  {
    ag.d.a(new rx.c.a()
    {
      public final void a()
      {
        aa.a(aa.this, this.b);
      }
    }, paramLong, TimeUnit.MILLISECONDS);
  }
  
  public static void a(Context paramContext, PendingIntent paramPendingIntent, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramContext, paramPendingIntent, "", paramString, paramInt, paramBoolean1, paramBoolean2);
  }
  
  private static void a(Context paramContext, PendingIntent paramPendingIntent, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 0;
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    if (paramBoolean1)
    {
      if (a.get() != 0) {
        localNotificationManager.cancel(a.get());
      }
      a.set(paramInt);
    }
    if (b == null) {
      b = BitmapFactory.decodeResource(paramContext.getResources(), 2130838276);
    }
    paramString2 = a(paramContext).b(paramString2).c(paramString2).a(new au().a(paramString2)).a(true);
    paramString2.B.ledARGB = -16755294;
    paramString2.B.ledOnMS = 1000;
    paramString2.B.ledOffMS = 500;
    if ((paramString2.B.ledOnMS != 0) && (paramString2.B.ledOffMS != 0)) {}
    for (int i = 1;; i = 0)
    {
      Notification localNotification = paramString2.B;
      int k = paramString2.B.flags;
      if (i != 0) {
        j = 1;
      }
      localNotification.flags = (k & 0xFFFFFFFE | j);
      if (!paramString1.equals("")) {
        paramString2.a(paramString1);
      }
      if (paramPendingIntent != null) {
        paramString2.d = paramPendingIntent;
      }
      if ((PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(paramContext.getString(2131165666), true)) && (paramBoolean2))
      {
        paramContext = RingtoneManager.getDefaultUri(2);
        paramString2.B.sound = paramContext;
        paramString2.B.audioStreamType = -1;
      }
      localNotificationManager.notify(paramInt, paramString2.b());
      return;
    }
  }
  
  public static void a(Context paramContext, Message paramMessage)
  {
    String str1 = paramMessage.getSystemEvent().getUrl();
    String str2 = paramMessage.getSystemEvent().getText();
    long l = paramMessage.getId();
    if (com.xueqiu.android.common.q.c(str1, paramContext) == null) {
      return;
    }
    paramMessage = new Intent("com.xueqiu.android.action.NOTIFICATION");
    paramMessage.putExtra("intent_url", str1);
    a(paramContext, PendingIntent.getBroadcast(paramContext, (int)l, paramMessage, 134217728), str2, (int)l, false, true);
    paramContext = new SNBEvent(1000, 15);
    paramContext.addProperty("url", str1);
    i.a().a(paramContext);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, null, paramString1, paramString2, 9998, true, false);
  }
  
  public static void a(Context paramContext, final List<Message> paramList)
  {
    Iterator localIterator = paramList.iterator();
    final Message localMessage;
    int i;
    label53:
    Object localObject;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localMessage = (Message)localIterator.next();
        long l1 = localMessage.getFromId();
        long l2 = localMessage.getToId();
        paramList = localMessage.getText();
        if (localMessage.isNotify())
        {
          i = 1;
          v.a("NotificationsUtil", String.format("[from:%d] [to:%d] [text:%s] [notify:%d]", new Object[] { Long.valueOf(l1), Long.valueOf(l2), paramList, Integer.valueOf(i) }));
          if ((localMessage.isByMyself()) || (!localMessage.isNotify())) {
            continue;
          }
          localObject = DBManager.getInstance();
        }
      }
    }
    label354:
    label391:
    label515:
    label541:
    for (;;)
    {
      try
      {
        localTalk = DataStore.getInstance(paramContext).getTalk(localMessage);
        if (localTalk == null) {
          break;
        }
        localIntent = new Intent(paramContext, ChatActivity.class);
        localIntent.putExtra("talk", localTalk);
        localIntent.setFlags(536870912);
        paramList = localMessage.getSummary();
        if (localMessage.getFromId() == 0L) {
          break label515;
        }
        localObject = ((DBManager)localObject).queryUserByUserId(localMessage.getFromId());
        if (localObject == null) {
          break label541;
        }
        if ((localMessage.getType() != 3) && (localMessage.getType() != 1)) {
          break label391;
        }
        paramList = com.snowballfinance.messageplatform.b.e.a(localMessage.getText());
        localObject = new StringBuilder(((User)localObject).getScreenName());
        if (localMessage.isToGroup()) {
          ((StringBuilder)localObject).append("在群里");
        }
        ((StringBuilder)localObject).append("分享了");
        if (!com.snowballfinance.messageplatform.b.e.a.matcher(paramList).matches()) {
          break label354;
        }
        ((StringBuilder)localObject).append(String.format("一支%s", new Object[] { com.snowballfinance.messageplatform.b.e.a(com.snowballfinance.messageplatform.b.e.c(com.snowballfinance.messageplatform.b.e.b(paramList))) }));
        paramList = ((StringBuilder)localObject).toString();
      }
      catch (Exception paramList)
      {
        final Talk localTalk;
        final Intent localIntent;
        paramList.printStackTrace();
      }
      new Handler(paramContext.getMainLooper()).post(new Runnable()
      {
        public final void run()
        {
          Intent localIntent1 = new Intent(aa.this, MainActivity.class);
          localIntent1.setFlags(603979776);
          localIntent1.putExtra("extra_notification", 6);
          Object localObject2 = new Intent(aa.this, RecentTalkActivity.class);
          localIntent1.setFlags(67108864);
          localObject1 = new Intent[3];
          localObject1[0] = localIntent1;
          localObject1[1] = localObject2;
          localObject1[2] = localIntent;
          localObject2 = localObject1;
          if (localTalk.getId() == 1681984443L) {}
          try
          {
            localObject2 = (JsonObject)m.a().fromJson(localMessage.getText(), JsonObject.class);
            if (!((JsonObject)localObject2).has("url")) {
              break label269;
            }
            localObject2 = localObject2.get("url").getAsString().split("\\?")[0];
            localObject2 = ((String)localObject2).substring(((String)localObject2).indexOf("xueqiu.com/") + 11, ((String)localObject2).length());
            localObject2 = Pattern.compile("^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*").matcher((CharSequence)localObject2);
            if (!((Matcher)localObject2).matches()) {
              break label269;
            }
            Intent localIntent2 = q.a(aa.this, CubeActivity.class, "extra_cube_symbol", ((Matcher)localObject2).group(1));
            localObject2 = new Intent[3];
            localObject2[0] = localIntent1;
            localObject2[1] = localIntent;
            localObject2[2] = localIntent2;
            localObject1 = localObject2;
          }
          catch (JsonSyntaxException localJsonSyntaxException)
          {
            for (;;)
            {
              v.a("NotificationsUtil", "json syntax error.", localJsonSyntaxException);
              Object localObject3 = localObject1;
            }
          }
          localObject2 = localObject1;
          localObject1 = PendingIntent.getActivities(aa.this, (int)localTalk.getId(), (Intent[])localObject2, 134217728);
          aa.a(aa.this, (PendingIntent)localObject1, paramList, (int)localTalk.getId(), false, this.f);
        }
      });
      break;
      break;
      i = 0;
      break label53;
      if (com.snowballfinance.messageplatform.b.e.c.matcher(paramList).matches())
      {
        ((StringBuilder)localObject).append("一个讨论");
      }
      else
      {
        ((StringBuilder)localObject).append("一个名片");
        continue;
        if (localMessage.getType() == 4)
        {
          if (localMessage.isToGroup()) {
            paramList = String.format("%s在群里分享了一张图片", new Object[] { ((User)localObject).getScreenName() });
          } else {
            paramList = String.format("%s分享了一张图片", new Object[] { ((User)localObject).getScreenName() });
          }
        }
        else if (localMessage.isToGroup())
        {
          paramList = String.format("%s在群里说 : %s", new Object[] { ((User)localObject).getScreenName(), localMessage.getSummary() });
        }
        else
        {
          paramList = String.format("%s : %s", new Object[] { ((User)localObject).getScreenName(), localMessage.getSummary() });
          break label541;
          if (localMessage.getType() == 7) {
            paramList = com.xueqiu.android.message.client.e.a((DBManager)localObject, localMessage.getSystemEvent());
          } else {}
        }
      }
    }
  }
  
  public static void a(String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        an localan = new an();
        localan.a(0);
        localan.a(aa.this);
        an.a.show();
      }
    });
  }
  
  public static void a(Throwable paramThrowable)
  {
    a(paramThrowable, false);
  }
  
  public static void a(Throwable paramThrowable, boolean paramBoolean)
  {
    b.a();
    Object localObject = b.d();
    try
    {
      if (!b.a().c) {
        return;
      }
      if (localObject == null) {
        return;
      }
      if (paramThrowable == null)
      {
        a(2131165741);
        return;
      }
    }
    catch (Exception paramThrowable)
    {
      v.e("NotificationUtil", paramThrowable.getMessage());
      return;
    }
    if (((paramThrowable instanceof SSLHandshakeException)) || ((paramThrowable.getCause() != null) && ((paramThrowable.getCause() instanceof SSLHandshakeException))))
    {
      v.c("NotificationsUtil", "SSLHandshakeException", paramThrowable);
      a(2131166246);
      return;
    }
    if (((paramThrowable instanceof SocketTimeoutException)) || ((paramThrowable instanceof x)))
    {
      if (paramBoolean) {
        a(2131166280);
      }
    }
    else if ((paramThrowable instanceof SocketException))
    {
      v.e("NotificationsUtil", paramThrowable.getMessage());
      if (paramBoolean) {
        a("请求没有响应，请检查网络连接是否正常");
      }
    }
    else if (((paramThrowable instanceof IOException)) || ((paramThrowable instanceof j)))
    {
      v.e("NotificationsUtil", String.valueOf(paramThrowable));
      if (paramBoolean) {
        a("网络不可用，请检查网络连接是否正常");
      }
    }
    else if ((paramThrowable instanceof com.xueqiu.android.base.a.a))
    {
      paramThrowable = (com.xueqiu.android.base.a.a)paramThrowable;
      v.e("NotificationsUtil", paramThrowable.toString());
      if ("400012".equals(paramThrowable.errorCode))
      {
        r.a((Context)localObject).b(new Intent("com.xueqiu.android.intent.action.LOGGED_OUT"));
        paramThrowable = new Intent();
        Bundle localBundle = new Bundle();
        localBundle.putByte("extra_mode", (byte)2);
        paramThrowable.putExtras(localBundle);
        paramThrowable.setClass((Context)localObject, LoginActivity.class);
        paramThrowable.setFlags(268468224);
        ((Context)localObject).startActivity(paramThrowable);
        a("请重新登录");
        return;
      }
      if (("400016".equals(paramThrowable.errorCode)) || ("400013".equals(paramThrowable.errorCode)))
      {
        r.a((Context)localObject).b(new Intent("com.xueqiu.android.intent.action.REFRESH_TOKEN"));
        return;
      }
      if (paramThrowable.getMessage() != null) {
        a(paramThrowable.errorDescription);
      }
    }
    else
    {
      if (v.a) {
        if (paramThrowable.getMessage() == null) {
          localObject = paramThrowable.getClass();
        }
      }
      for (;;)
      {
        Log.e("NotificationsUtil", "Toasting for exception: ", paramThrowable);
        a((String)localObject);
        return;
        localObject = paramThrowable.getMessage();
        continue;
        localObject = ((Context)localObject).getString(2131165741);
      }
    }
  }
  
  public static void b(String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        an localan = new an();
        localan.a(1);
        localan.a(aa.this);
        an.a.show();
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */