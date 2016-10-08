package com.xiaomi.push.service;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.widget.RemoteViews;
import com.xiaomi.a.a.b.c;
import com.xiaomi.g.a.d;
import com.xiaomi.g.a.n;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class ax
{
  public static long a = 0L;
  private static LinkedList<Pair<Integer, String>> b = new LinkedList();
  
  private static int a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1.equals(paramContext.getPackageName())) {
      return paramContext.getResources().getIdentifier(paramString2, "drawable", paramString1);
    }
    return 0;
  }
  
  private static Notification a(Notification paramNotification, String paramString)
  {
    try
    {
      Object localObject = Notification.class.getDeclaredField("extraNotification");
      ((Field)localObject).setAccessible(true);
      localObject = ((Field)localObject).get(paramNotification);
      Method localMethod = localObject.getClass().getDeclaredMethod("setTargetPkg", new Class[] { CharSequence.class });
      localMethod.setAccessible(true);
      localMethod.invoke(localObject, new Object[] { paramString });
      return paramNotification;
    }
    catch (Exception paramString)
    {
      c.a(paramString);
    }
    return paramNotification;
  }
  
  private static RemoteViews a(Context paramContext, n paramn)
  {
    Object localObject1 = paramn.h;
    String str1 = a(paramn);
    localObject1 = ((d)localObject1).j;
    if (localObject1 == null) {
      return null;
    }
    paramn = (String)((Map)localObject1).get("layout_name");
    Object localObject2 = (String)((Map)localObject1).get("layout_value");
    if ((TextUtils.isEmpty(paramn)) || (TextUtils.isEmpty((CharSequence)localObject2))) {
      return null;
    }
    paramContext = paramContext.getPackageManager();
    int i;
    try
    {
      localObject1 = paramContext.getResourcesForApplication(str1);
      i = ((Resources)localObject1).getIdentifier(paramn, "layout", str1);
      if (i == 0) {
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      c.a(paramContext);
      return null;
    }
    RemoteViews localRemoteViews = new RemoteViews(str1, i);
    Object localObject3;
    String str2;
    try
    {
      paramContext = new JSONObject((String)localObject2);
      if (paramContext.has("text"))
      {
        paramn = paramContext.getJSONObject("text");
        localObject2 = paramn.keys();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (String)((Iterator)localObject2).next();
          str2 = paramn.getString((String)localObject3);
          i = ((Resources)localObject1).getIdentifier((String)localObject3, "id", str1);
          if (i > 0) {
            localRemoteViews.setTextViewText(i, str2);
          }
        }
      }
      if (!paramContext.has("image")) {
        break label298;
      }
    }
    catch (JSONException paramContext)
    {
      c.a(paramContext);
      return null;
    }
    paramn = paramContext.getJSONObject("image");
    localObject2 = paramn.keys();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (String)((Iterator)localObject2).next();
      str2 = paramn.getString((String)localObject3);
      i = ((Resources)localObject1).getIdentifier((String)localObject3, "id", str1);
      int j = ((Resources)localObject1).getIdentifier(str2, "drawable", str1);
      if (i > 0) {
        localRemoteViews.setImageViewResource(i, j);
      }
    }
    label298:
    if (paramContext.has("time"))
    {
      localObject2 = paramContext.getJSONObject("time");
      localObject3 = ((JSONObject)localObject2).keys();
      while (((Iterator)localObject3).hasNext())
      {
        str2 = (String)((Iterator)localObject3).next();
        paramn = ((JSONObject)localObject2).getString(str2);
        paramContext = paramn;
        if (paramn.length() == 0) {
          paramContext = "yy-MM-dd hh:mm";
        }
        i = ((Resources)localObject1).getIdentifier(str2, "id", str1);
        if (i > 0)
        {
          long l = System.currentTimeMillis();
          localRemoteViews.setTextViewText(i, new SimpleDateFormat(paramContext).format(new Date(l)));
        }
      }
    }
    return localRemoteViews;
  }
  
  static String a(n paramn)
  {
    if ("com.xiaomi.xmsf".equals(paramn.f))
    {
      Object localObject = paramn.h;
      if ((localObject != null) && (((d)localObject).j != null))
      {
        localObject = (String)((d)localObject).j.get("miui_package_name");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          return (String)localObject;
        }
      }
    }
    return paramn.f;
  }
  
  public static void a(Context arg0, n paramn, byte[] paramArrayOfByte)
  {
    NotificationManager localNotificationManager = (NotificationManager)???.getSystemService("notification");
    d locald = paramn.h;
    Object localObject2 = a(???, paramn);
    if ((locald != null) && (!TextUtils.isEmpty(locald.g)))
    {
      paramArrayOfByte = new Intent("android.intent.action.VIEW");
      paramArrayOfByte.setData(Uri.parse(locald.g));
      paramArrayOfByte.addFlags(268435456);
      paramArrayOfByte = PendingIntent.getActivity(???, 0, paramArrayOfByte, 134217728);
    }
    Object localObject1;
    while (paramArrayOfByte == null)
    {
      c.a("The click PendingIntent is null. ");
      return;
      if (b(paramn))
      {
        localObject1 = new Intent();
        ((Intent)localObject1).setComponent(new ComponentName("com.xiaomi.xmsf", "com.xiaomi.mipush.sdk.PushMessageHandler"));
        ((Intent)localObject1).putExtra("mipush_payload", paramArrayOfByte);
        ((Intent)localObject1).putExtra("mipush_notified", true);
        ((Intent)localObject1).addCategory(String.valueOf(locald.i));
        paramArrayOfByte = PendingIntent.getService(???, 0, (Intent)localObject1, 134217728);
      }
      else
      {
        localObject1 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
        ((Intent)localObject1).setComponent(new ComponentName(paramn.f, "com.xiaomi.mipush.sdk.PushMessageHandler"));
        ((Intent)localObject1).putExtra("mipush_payload", paramArrayOfByte);
        ((Intent)localObject1).putExtra("mipush_notified", true);
        ((Intent)localObject1).addCategory(String.valueOf(locald.i));
        paramArrayOfByte = PendingIntent.getService(???, 0, (Intent)localObject1, 134217728);
      }
    }
    Object localObject3;
    Object localObject4;
    int i;
    label394:
    long l;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localObject3 = paramn.h;
      localObject1 = new Notification.Builder(???);
      localObject4 = a(???, (d)localObject3);
      ((Notification.Builder)localObject1).setContentTitle(localObject4[0]);
      ((Notification.Builder)localObject1).setContentText(localObject4[1]);
      if (localObject2 != null)
      {
        ((Notification.Builder)localObject1).setContent((RemoteViews)localObject2);
        ((Notification.Builder)localObject1).setWhen(System.currentTimeMillis());
        ((Notification.Builder)localObject1).setContentIntent(paramArrayOfByte);
        i = a(???, a(paramn), "mipush_notification");
        int k = a(???, a(paramn), "mipush_small_notification");
        if ((i <= 0) || (k <= 0)) {
          break label799;
        }
        localObject2 = ???.getResources().getDrawable(i);
        if (!(localObject2 instanceof BitmapDrawable)) {
          break label715;
        }
        paramArrayOfByte = ((BitmapDrawable)localObject2).getBitmap();
        ((Notification.Builder)localObject1).setLargeIcon(paramArrayOfByte);
        ((Notification.Builder)localObject1).setSmallIcon(k);
        ((Notification.Builder)localObject1).setAutoCancel(true);
        l = System.currentTimeMillis();
        paramArrayOfByte = ((d)localObject3).j;
        if ((paramArrayOfByte != null) && (paramArrayOfByte.containsKey("ticker"))) {
          ((Notification.Builder)localObject1).setTicker((CharSequence)paramArrayOfByte.get("ticker"));
        }
        if (l - a > 10000L)
        {
          a = l;
          i = ((d)localObject3).f;
          if (!d(???, a(paramn))) {
            break label1140;
          }
          i = f(???, a(paramn));
        }
      }
    }
    label715:
    label727:
    label793:
    label799:
    label1137:
    label1140:
    for (;;)
    {
      ((Notification.Builder)localObject1).setDefaults(i);
      if ((paramArrayOfByte != null) && ((i & 0x1) != 0))
      {
        paramArrayOfByte = (String)paramArrayOfByte.get("sound_uri");
        if ((!TextUtils.isEmpty(paramArrayOfByte)) && (paramArrayOfByte.startsWith("android.resource://" + a(paramn))))
        {
          ((Notification.Builder)localObject1).setDefaults(i ^ 0x1);
          ((Notification.Builder)localObject1).setSound(Uri.parse(paramArrayOfByte));
        }
      }
      paramArrayOfByte = ((Notification.Builder)localObject1).getNotification();
      for (;;)
      {
        if ("com.xiaomi.xmsf".equals(???.getPackageName())) {
          a(paramArrayOfByte, a(paramn));
        }
        i = locald.i + a(paramn).hashCode() / 10 * 10;
        localNotificationManager.notify(i, paramArrayOfByte);
        paramn = new Pair(Integer.valueOf(i), a(paramn));
        synchronized (b)
        {
          b.add(paramn);
          if (b.size() > 100) {
            b.remove();
          }
          return;
        }
        if (Build.VERSION.SDK_INT < 16) {
          break;
        }
        ((Notification.Builder)localObject1).setStyle(new Notification.BigTextStyle().bigText(localObject4[1]));
        break;
        i = ((Drawable)localObject2).getIntrinsicWidth();
        int j;
        if (i > 0)
        {
          j = ((Drawable)localObject2).getIntrinsicHeight();
          if (j <= 0) {
            break label793;
          }
        }
        for (;;)
        {
          paramArrayOfByte = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
          localObject4 = new Canvas(paramArrayOfByte);
          ((Drawable)localObject2).setBounds(0, 0, ((Canvas)localObject4).getWidth(), ((Canvas)localObject4).getHeight());
          ((Drawable)localObject2).draw((Canvas)localObject4);
          break;
          i = 1;
          break label727;
          j = 1;
        }
        ((Notification.Builder)localObject1).setSmallIcon(e(???, a(paramn)));
        break label394;
        localObject1 = new Notification(e(???, a(paramn)), null, System.currentTimeMillis());
        localObject3 = a(???, locald);
        try
        {
          localObject1.getClass().getMethod("setLatestEventInfo", new Class[] { Context.class, CharSequence.class, CharSequence.class, PendingIntent.class }).invoke(localObject1, new Object[] { ???, localObject3[0], localObject3[1], paramArrayOfByte });
          paramArrayOfByte = locald.j;
          if ((paramArrayOfByte != null) && (paramArrayOfByte.containsKey("ticker"))) {
            ((Notification)localObject1).tickerText = ((CharSequence)paramArrayOfByte.get("ticker"));
          }
          l = System.currentTimeMillis();
          if (l - a > 10000L)
          {
            a = l;
            i = locald.f;
            if (!d(???, a(paramn))) {
              break label1137;
            }
            i = f(???, a(paramn));
            ((Notification)localObject1).defaults = i;
            if ((paramArrayOfByte != null) && ((i & 0x1) != 0))
            {
              paramArrayOfByte = (String)paramArrayOfByte.get("sound_uri");
              if ((!TextUtils.isEmpty(paramArrayOfByte)) && (paramArrayOfByte.startsWith("android.resource://" + a(paramn))))
              {
                ((Notification)localObject1).defaults = (i ^ 0x1);
                ((Notification)localObject1).sound = Uri.parse(paramArrayOfByte);
              }
            }
          }
          ((Notification)localObject1).flags |= 0x10;
          if (localObject2 != null) {
            ((Notification)localObject1).contentView = ((RemoteViews)localObject2);
          }
          paramArrayOfByte = (byte[])localObject1;
        }
        catch (NoSuchMethodException paramArrayOfByte)
        {
          for (;;)
          {
            c.a(paramArrayOfByte);
          }
        }
        catch (IllegalAccessException paramArrayOfByte)
        {
          for (;;)
          {
            c.a(paramArrayOfByte);
          }
        }
        catch (IllegalArgumentException paramArrayOfByte)
        {
          for (;;)
          {
            c.a(paramArrayOfByte);
          }
        }
        catch (InvocationTargetException paramArrayOfByte)
        {
          for (;;)
          {
            c.a(paramArrayOfByte);
          }
        }
      }
    }
  }
  
  public static void a(Context arg0, String paramString, int paramInt)
  {
    ??? = (NotificationManager)???.getSystemService("notification");
    paramInt = paramString.hashCode() / 10 * 10 + paramInt;
    ???.cancel(paramInt);
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        if ((paramInt == ((Integer)localPair.first).intValue()) && (TextUtils.equals(paramString, (CharSequence)localPair.second))) {
          b.remove(localPair);
        }
      }
      return;
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if ((localRunningAppProcessInfo.importance == 100) && (Arrays.asList(localRunningAppProcessInfo.pkgList).contains(paramString))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (!paramMap.containsKey("notify_foreground"))) {
      return true;
    }
    return "1".equals((String)paramMap.get("notify_foreground"));
  }
  
  private static String[] a(Context paramContext, d paramd)
  {
    Object localObject1 = paramd.d;
    String str = paramd.e;
    Map localMap = paramd.j;
    paramd = (d)localObject1;
    Object localObject2 = str;
    int i;
    if (localMap != null)
    {
      i = paramContext.getResources().getDisplayMetrics().widthPixels;
      float f = paramContext.getResources().getDisplayMetrics().density;
      i = Float.valueOf(i / f + 0.5F).intValue();
      if (i > 320) {
        break label139;
      }
      paramContext = (String)localMap.get("title_short");
      if (!TextUtils.isEmpty(paramContext)) {
        localObject1 = paramContext;
      }
      paramContext = (String)localMap.get("description_short");
      if (TextUtils.isEmpty(paramContext)) {
        break label211;
      }
    }
    for (;;)
    {
      localObject2 = paramContext;
      paramd = (d)localObject1;
      for (;;)
      {
        return new String[] { paramd, localObject2 };
        label139:
        paramd = (d)localObject1;
        localObject2 = str;
        if (i > 360)
        {
          paramContext = (String)localMap.get("title_long");
          if (!TextUtils.isEmpty(paramContext)) {
            localObject1 = paramContext;
          }
          paramContext = (String)localMap.get("description_long");
          paramd = (d)localObject1;
          localObject2 = str;
          if (!TextUtils.isEmpty(paramContext))
          {
            localObject2 = paramContext;
            paramd = (d)localObject1;
          }
        }
      }
      label211:
      paramContext = str;
    }
  }
  
  public static void b(Context arg0, String paramString)
  {
    NotificationManager localNotificationManager = (NotificationManager)???.getSystemService("notification");
    synchronized (b)
    {
      Iterator localIterator = ((LinkedList)b.clone()).iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        if (TextUtils.equals((CharSequence)localPair.second, paramString))
        {
          localNotificationManager.cancel(((Integer)localPair.first).intValue());
          b.remove(localPair);
        }
      }
    }
  }
  
  static void b(Context paramContext, String paramString, int paramInt)
  {
    paramContext.getSharedPreferences("pref_notify_type", 0).edit().putInt(paramString, paramInt).commit();
  }
  
  public static boolean b(n paramn)
  {
    paramn = paramn.h;
    return (paramn != null) && (paramn.l);
  }
  
  static void c(Context paramContext, String paramString)
  {
    paramContext.getSharedPreferences("pref_notify_type", 0).edit().remove(paramString).commit();
  }
  
  static boolean d(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("pref_notify_type", 0).contains(paramString);
  }
  
  private static int e(Context paramContext, String paramString)
  {
    int i = a(paramContext, paramString, "mipush_notification");
    int j = a(paramContext, paramString, "mipush_small_notification");
    if (i > 0) {}
    for (;;)
    {
      j = i;
      if (i == 0)
      {
        j = i;
        if (Build.VERSION.SDK_INT >= 9) {
          j = paramContext.getApplicationInfo().logo;
        }
      }
      return j;
      if (j <= 0) {
        i = paramContext.getApplicationInfo().icon;
      } else {
        i = j;
      }
    }
  }
  
  private static int f(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("pref_notify_type", 0).getInt(paramString, Integer.MAX_VALUE);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */