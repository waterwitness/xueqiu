package com.umeng.update.net;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.Toast;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import u.a.a;
import u.a.j;
import u.a.k;
import u.a.m;

class c
{
  static final int a = 0;
  static final int b = 1;
  static final int c = 1;
  static final int d = 2;
  private static final String e = c.class.getName();
  private SparseArray<c.b> f;
  private Map<a.a, Messenger> g;
  private e h;
  
  public c(SparseArray<c.b> paramSparseArray, Map<a.a, Messenger> paramMap, e parame)
  {
    this.f = paramSparseArray;
    this.g = paramMap;
    this.h = parame;
  }
  
  int a(a.a parama)
  {
    return Math.abs((int)((parama.b.hashCode() >> 2) + (parama.c.hashCode() >> 3) + System.currentTimeMillis()));
  }
  
  c.a a(Context paramContext, a.a parama, int paramInt1, int paramInt2)
  {
    paramContext = paramContext.getApplicationContext();
    c.a locala = new c.a(paramContext);
    Object localObject1 = PendingIntent.getActivity(paramContext, 0, new Intent(), 134217728);
    locala.d(paramContext.getString(u.a.c.a(paramContext).a("umeng_common_start_download_notification", "string"))).a(17301633).a((PendingIntent)localObject1).a(System.currentTimeMillis());
    localObject1 = new RemoteViews(paramContext.getPackageName(), u.a.c.a(paramContext).a("umeng_common_download_notification", "layout"));
    int i;
    int j;
    if (Build.VERSION.SDK_INT >= 14)
    {
      i = paramContext.getResources().getDimensionPixelSize(17104901);
      j = paramContext.getResources().getDimensionPixelSize(17104902);
      ((RemoteViews)localObject1).setInt(j.a(paramContext), "setWidth", i);
      ((RemoteViews)localObject1).setInt(j.a(paramContext), "setHeight", j);
    }
    for (;;)
    {
      try
      {
        Field localField1 = Class.forName("com.android.internal.R$drawable").getDeclaredField("notify_panel_notification_icon_bg_tile");
        localField1.setAccessible(true);
        i = localField1.getInt(null);
        ((RemoteViews)localObject1).setInt(j.a(paramContext), "setBackgroundResource", i);
        locala.a((RemoteViews)localObject1);
        locala.b(paramContext.getResources().getString(u.a.c.a(paramContext).a("umeng_common_download_notification_prefix", "string")) + parama.b).a(paramInt2 + "%").a(100, paramInt2, false);
        if (!parama.g) {
          break;
        }
        locala.b((RemoteViews)localObject1);
        locala.e();
        parama = f.b(paramContext, f.a(paramInt1, "continue"));
        localObject1 = f.b(paramContext, f.a(paramInt1, "cancel"));
        a(paramContext, locala, paramInt1, 2);
        locala.a(parama, (PendingIntent)localObject1).c().a(true).b(false);
        return locala;
      }
      catch (Exception localException1)
      {
        u.a.b.a(e, "No notification icon background found:", localException1);
        continue;
      }
      try
      {
        Field localField2 = Class.forName("com.android.internal.R$drawable").getDeclaredField("status_bar_notification_icon_bg");
        localField2.setAccessible(true);
        i = localField2.getInt(null);
        ((RemoteViews)localObject1).setInt(j.a(paramContext), "setBackgroundResource", i);
      }
      catch (Exception localException2)
      {
        try
        {
          Object localObject2 = Class.forName("com.android.internal.R$dimen");
          Field localField3 = ((Class)localObject2).getDeclaredField("status_bar_edge_ignore");
          localField3.setAccessible(true);
          i = localField3.getInt(null);
          i = paramContext.getResources().getDimensionPixelSize(i);
          localObject2 = ((Class)localObject2).getDeclaredField("status_bar_height");
          ((Field)localObject2).setAccessible(true);
          int k = ((Field)localObject2).getInt(null);
          j = paramContext.getResources().getDimensionPixelSize(k);
          k = paramContext.getResources().getDimensionPixelSize(k);
          ((RemoteViews)localObject1).setInt(j.a(paramContext), "setWidth", k + (i + 0 + j));
        }
        catch (Exception localException3)
        {
          u.a.b.a(e, "No notification size found:", localException3);
        }
      }
    }
    locala.a().a(true).b(false);
    return locala;
  }
  
  void a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getApplicationContext();
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    c.b localb = (c.b)this.f.get(paramInt);
    localb.b.e();
    a(paramContext, localb.b, paramInt, 1);
    localb.b.b(paramContext.getResources().getString(u.a.c.a(paramContext).a("umeng_common_pause_notification_prefix", "string")) + localb.e.b).b().a(false).b(true);
    localNotificationManager.notify(paramInt, localb.b.d());
  }
  
  void a(Context paramContext, c.a parama, int paramInt1, int paramInt2)
  {
    PendingIntent localPendingIntent1;
    PendingIntent localPendingIntent2;
    if (Build.VERSION.SDK_INT >= 16)
    {
      localPendingIntent1 = f.b(paramContext, f.a(paramInt1, "continue"));
      localPendingIntent2 = f.b(paramContext, f.a(paramInt1, "cancel"));
      switch (paramInt2)
      {
      }
    }
    for (;;)
    {
      parama.a(17301560, paramContext.getResources().getString(u.a.c.a(paramContext).a("umeng_common_action_cancel", "string")), localPendingIntent2);
      return;
      parama.a(17301540, paramContext.getResources().getString(k.d(paramContext)), localPendingIntent1);
      continue;
      parama.a(17301539, paramContext.getResources().getString(k.c(paramContext)), localPendingIntent1);
    }
  }
  
  void a(a.a parama, long paramLong1, long paramLong2, long paramLong3)
  {
    if (parama.f != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("dsize", String.valueOf(paramLong1));
      localHashMap.put("dtime", m.a().split(" ")[1]);
      float f1 = 0.0F;
      if (paramLong2 > 0L) {
        f1 = (float)paramLong1 / (float)paramLong2;
      }
      localHashMap.put("dpcent", String.valueOf((int)(f1 * 100.0F)));
      localHashMap.put("ptimes", String.valueOf(paramLong3));
      a(localHashMap, false, parama.f);
    }
  }
  
  final void a(final Map<String, String> paramMap, final boolean paramBoolean, final String[] paramArrayOfString)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        j = new Random().nextInt(1000);
        if (paramArrayOfString == null)
        {
          u.a.b.a(c.a(), j + "service report: urls is null");
          return;
        }
        String[] arrayOfString = paramArrayOfString;
        int k = arrayOfString.length;
        int i = 0;
        label61:
        Object localObject1;
        Object localObject2;
        String str2;
        if (i < k)
        {
          str1 = arrayOfString[i];
          localObject1 = m.a();
          localObject2 = localObject1.split(" ")[0];
          str2 = localObject1.split(" ")[1];
          long l = System.currentTimeMillis();
          localObject1 = new StringBuilder(str1);
          ((StringBuilder)localObject1).append("&data=").append((String)localObject2);
          ((StringBuilder)localObject1).append("&time=").append(str2);
          ((StringBuilder)localObject1).append("&ts=").append(l);
          if (!paramBoolean) {
            break label350;
          }
          ((StringBuilder)localObject1).append("&action_type=1");
          label161:
          if (paramMap != null) {
            localObject2 = paramMap.keySet().iterator();
          }
        }
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {}
          try
          {
            u.a.b.a(c.a(), j + ": service report:\tget: " + ((StringBuilder)localObject1).toString());
            localObject1 = new HttpGet(((StringBuilder)localObject1).toString());
            localObject2 = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout((HttpParams)localObject2, 10000);
            HttpConnectionParams.setSoTimeout((HttpParams)localObject2, 20000);
            localObject1 = new DefaultHttpClient((HttpParams)localObject2).execute((HttpUriRequest)localObject1);
            u.a.b.a(c.a(), j + ": service report:status code:  " + ((HttpResponse)localObject1).getStatusLine().getStatusCode());
            int m = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
            if (m == 200) {
              break;
            }
          }
          catch (ClientProtocolException localClientProtocolException)
          {
            for (;;)
            {
              u.a.b.c(c.a(), j + ": service report:\tClientProtocolException,Failed to send message." + str1, localClientProtocolException);
            }
          }
          catch (IOException localIOException)
          {
            for (;;)
            {
              u.a.b.c(c.a(), j + ": service report:\tIOException,Failed to send message." + str1, localIOException);
            }
          }
          i += 1;
          break label61;
          break;
          label350:
          ((StringBuilder)localObject1).append("&action_type=-2");
          break label161;
          str2 = (String)((Iterator)localObject2).next();
          ((StringBuilder)localObject1).append("&").append(str2).append("=").append((String)paramMap.get(str2));
        }
      }
    }).start();
  }
  
  boolean a(Context paramContext)
  {
    Object localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (localObject == null) {
      return false;
    }
    paramContext = paramContext.getPackageName();
    localObject = ((List)localObject).iterator();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        return false;
      }
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
    } while ((localRunningAppProcessInfo.importance != 100) || (!localRunningAppProcessInfo.processName.equals(paramContext)));
    return true;
  }
  
  boolean a(DownloadingService paramDownloadingService, Intent paramIntent)
  {
    DownloadingService.b localb;
    try
    {
      localContext = paramDownloadingService.getApplicationContext();
      paramIntent = paramIntent.getExtras().getString("com.umeng.broadcast.download.msg").split(":");
      i = Integer.parseInt(paramIntent[0]);
      localObject = paramIntent[1].trim();
      if ((i != 0) && (!TextUtils.isEmpty((CharSequence)localObject)) && (this.f.indexOfKey(i) >= 0))
      {
        paramIntent = (c.b)this.f.get(i);
        localb = paramIntent.a;
        if (!"continue".equals(localObject)) {
          break label365;
        }
        if (localb != null) {
          break label265;
        }
        u.a.b.c(e, "Receive action do play click.");
        if ((a.a(localContext, "android.permission.ACCESS_NETWORK_STATE")) && (!a.d(localContext)))
        {
          Toast.makeText(localContext, localContext.getResources().getString(k.a(localContext.getApplicationContext())), 1).show();
          return false;
        }
        paramDownloadingService.getClass();
        paramDownloadingService = new DownloadingService.b(paramDownloadingService, localContext, paramIntent.e, i, paramIntent.d, paramDownloadingService.q);
        paramIntent.a = paramDownloadingService;
        paramDownloadingService.start();
        paramDownloadingService = Message.obtain();
        paramDownloadingService.what = 2;
        paramDownloadingService.arg1 = 7;
        paramDownloadingService.arg2 = i;
        try
        {
          if (this.g.get(paramIntent.e) != null) {
            ((Messenger)this.g.get(paramIntent.e)).send(paramDownloadingService);
          }
          return true;
        }
        catch (RemoteException paramDownloadingService)
        {
          for (;;)
          {
            u.a.b.b(e, "", paramDownloadingService);
          }
        }
      }
      return false;
    }
    catch (Exception paramDownloadingService)
    {
      paramDownloadingService.printStackTrace();
    }
    label265:
    label365:
    do
    {
      u.a.b.c(e, "Receive action do play click.");
      localb.a(1);
      paramIntent.a = null;
      a(localContext, i);
      paramDownloadingService = Message.obtain();
      paramDownloadingService.what = 2;
      paramDownloadingService.arg1 = 6;
      paramDownloadingService.arg2 = i;
      try
      {
        if (this.g.get(paramIntent.e) != null) {
          ((Messenger)this.g.get(paramIntent.e)).send(paramDownloadingService);
        }
        return true;
      }
      catch (RemoteException paramDownloadingService)
      {
        for (;;)
        {
          u.a.b.b(e, "", paramDownloadingService);
        }
      }
    } while (!"cancel".equals(localObject));
    u.a.b.c(e, "Receive action do stop click.");
    if (localb != null) {}
    for (;;)
    {
      try
      {
        localb.a(2);
        paramDownloadingService = Message.obtain();
        paramDownloadingService.what = 5;
        paramDownloadingService.arg1 = 5;
        paramDownloadingService.arg2 = i;
      }
      catch (Exception paramDownloadingService)
      {
        long l1;
        long l2;
        long l3;
        paramDownloadingService = Message.obtain();
        paramDownloadingService.what = 5;
        paramDownloadingService.arg1 = 5;
        paramDownloadingService.arg2 = i;
        try
        {
          if (this.g.get(paramIntent.e) != null) {
            ((Messenger)this.g.get(paramIntent.e)).send(paramDownloadingService);
          }
          b(localContext, i);
        }
        catch (RemoteException paramDownloadingService)
        {
          b(localContext, i);
        }
        continue;
      }
      finally
      {
        localObject = Message.obtain();
        ((Message)localObject).what = 5;
        ((Message)localObject).arg1 = 5;
        ((Message)localObject).arg2 = i;
        try
        {
          if (this.g.get(paramIntent.e) != null) {
            ((Messenger)this.g.get(paramIntent.e)).send((Message)localObject);
          }
          b(localContext, i);
        }
        catch (RemoteException paramIntent)
        {
          b(localContext, i);
          continue;
        }
      }
      try
      {
        if (this.g.get(paramIntent.e) != null) {
          ((Messenger)this.g.get(paramIntent.e)).send(paramDownloadingService);
        }
        b(localContext, i);
      }
      catch (RemoteException paramDownloadingService)
      {
        b(localContext, i);
        continue;
      }
      return true;
      l1 = paramIntent.f[0];
      l2 = paramIntent.f[1];
      l3 = paramIntent.f[2];
      a(paramIntent.e, l1, l2, l3);
    }
  }
  
  boolean a(a.a parama, boolean paramBoolean, Messenger paramMessenger)
  {
    int i;
    if (paramBoolean)
    {
      i = new Random().nextInt(1000);
      if (this.g == null) {
        break label128;
      }
      localIterator = this.g.keySet().iterator();
      if (localIterator.hasNext()) {
        break label61;
      }
    }
    label61:
    a.a locala;
    for (;;)
    {
      if (this.g != null) {
        break label161;
      }
      return false;
      locala = (a.a)localIterator.next();
      u.a.b.c(e, "_" + i + " downling  " + locala.b + "   " + locala.c);
      break;
      label128:
      u.a.b.c(e, "_" + i + "downling  null");
    }
    label161:
    Iterator localIterator = this.g.keySet().iterator();
    do
    {
      if (!localIterator.hasNext()) {
        return false;
      }
      locala = (a.a)localIterator.next();
      if ((parama.e != null) && (parama.e.equals(locala.e)))
      {
        this.g.put(locala, paramMessenger);
        return true;
      }
    } while (!locala.c.equals(parama.c));
    this.g.put(locala, paramMessenger);
    return true;
  }
  
  int b(a.a parama)
  {
    int i = 0;
    for (;;)
    {
      if (i >= this.f.size()) {
        return -1;
      }
      int j = this.f.keyAt(i);
      if ((parama.e != null) && (parama.e.equals(((c.b)this.f.get(j)).e.e))) {
        return ((c.b)this.f.get(j)).c;
      }
      if (((c.b)this.f.get(j)).e.c.equals(parama.c)) {
        return ((c.b)this.f.get(j)).c;
      }
      i += 1;
    }
  }
  
  void b(Context paramContext, int paramInt)
  {
    paramContext = (NotificationManager)paramContext.getApplicationContext().getSystemService("notification");
    c.b localb = (c.b)this.f.get(paramInt);
    if (localb != null)
    {
      u.a.b.c(e, "download service clear cache " + localb.e.b);
      if (localb.a != null) {
        localb.a.a(2);
      }
      paramContext.cancel(localb.c);
      if (this.g.containsKey(localb.e)) {
        this.g.remove(localb.e);
      }
      localb.b(this.f);
      this.h.b(paramInt);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */