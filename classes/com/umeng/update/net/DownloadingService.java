package com.umeng.update.net;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.SparseArray;
import android.widget.Toast;
import com.umeng.update.util.DeltaUpdate;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import u.a.a;
import u.a.k;

public class DownloadingService
  extends Service
{
  private static final long C = 8000L;
  private static final long D = 500L;
  private static Map<a.a, Messenger> E = new HashMap();
  private static SparseArray<c.b> F = new SparseArray();
  private static Boolean I = Boolean.valueOf(false);
  static final int a = 1;
  static final int b = 2;
  static final int c = 3;
  static final int d = 4;
  static final int e = 5;
  static final int f = 6;
  public static final int g = 0;
  public static final int h = 1;
  public static final int i = 2;
  public static final int j = 3;
  public static final int k = 4;
  public static final int l = 5;
  public static final int m = 6;
  public static final int n = 7;
  static final int o = 100;
  static final String p = "filename";
  public static boolean r = false;
  private static final String t = DownloadingService.class.getName();
  private static final long w = 104857600L;
  private static final long x = 10485760L;
  private static final long y = 259200000L;
  private static final int z = 3;
  private Context A;
  private Handler B;
  private e G;
  private boolean H = true;
  DownloadingService.a q;
  final Messenger s = new Messenger(new DownloadingService.c(this));
  private NotificationManager u;
  private c v;
  
  static
  {
    r = false;
  }
  
  private void a(a.a parama)
  {
    int i1 = 0;
    u.a.b.c(t, "startDownload([mComponentName:" + parama.a + " mTitle:" + parama.b + " mUrl:" + parama.c + "])");
    int i2 = this.v.a(parama);
    DownloadingService.b localb = new DownloadingService.b(this, getApplicationContext(), parama, i2, 0, this.q);
    parama = new c.b(parama, i2);
    this.G.a(i2);
    parama.a(F);
    parama.a = localb;
    localb.start();
    e();
    if (r) {}
    for (;;)
    {
      if (i1 >= F.size()) {
        return;
      }
      parama = (c.b)F.valueAt(i1);
      u.a.b.c(t, "Running task " + parama.e.b);
      i1 += 1;
    }
  }
  
  private void a(final String paramString)
  {
    synchronized (I)
    {
      if (!I.booleanValue())
      {
        u.a.b.c(t, "show single toast.[" + paramString + "]");
        I = Boolean.valueOf(true);
        this.B.post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(DownloadingService.b(DownloadingService.this), paramString, 0).show();
          }
        });
        this.B.postDelayed(new Runnable()
        {
          public void run()
          {
            DownloadingService.a(Boolean.valueOf(false));
          }
        }, 1200L);
      }
      return;
    }
  }
  
  private void d()
  {
    Iterator localIterator = this.G.a().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Integer localInteger = (Integer)localIterator.next();
      this.u.cancel(localInteger.intValue());
    }
  }
  
  private void e()
  {
    if (r)
    {
      int i1 = E.size();
      int i2 = F.size();
      u.a.b.a(t, "Client size =" + i1 + "   cacheSize = " + i2);
      if (i1 != i2) {
        throw new RuntimeException("Client size =" + i1 + "   cacheSize = " + i2);
      }
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    u.a.b.c(t, "onBind ");
    return this.s.getBinder();
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (r)
    {
      u.a.b.a = true;
      Debug.waitForDebugger();
    }
    u.a.b.c(t, "onCreate ");
    this.u = ((NotificationManager)getSystemService("notification"));
    this.A = this;
    this.G = new e(this.A);
    this.v = new c(F, E, this.G);
    this.B = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default: 
          return;
        case 5: 
          locala = (a.a)paramAnonymousMessage.obj;
          i = paramAnonymousMessage.arg2;
          for (;;)
          {
            try
            {
              localObject1 = paramAnonymousMessage.getData().getString("filename");
              j.a((String)localObject1, 39, -1, -1);
              u.a.b.c(DownloadingService.a(), "Cancel old notification....");
              localObject2 = new Intent("android.intent.action.VIEW");
              ((Intent)localObject2).addFlags(268435456);
              ((Intent)localObject2).setDataAndType(Uri.fromFile(new File((String)localObject1)), "application/vnd.android.package-archive");
              localObject3 = PendingIntent.getActivity(DownloadingService.b(DownloadingService.this), 0, (Intent)localObject2, 134217728);
              if (locala.h)
              {
                paramAnonymousMessage = new Notification(17301634, DownloadingService.b(DownloadingService.this).getString(k.h(DownloadingService.b(DownloadingService.this))), System.currentTimeMillis());
                paramAnonymousMessage.setLatestEventInfo(DownloadingService.b(DownloadingService.this), locala.b, DownloadingService.b(DownloadingService.this).getString(k.h(DownloadingService.b(DownloadingService.this))), (PendingIntent)localObject3);
                paramAnonymousMessage.flags = 16;
                DownloadingService.a(DownloadingService.this, (NotificationManager)DownloadingService.this.getSystemService("notification"));
                DownloadingService.c(DownloadingService.this).notify(i + 1, paramAnonymousMessage);
                u.a.b.c(DownloadingService.a(), "Show new  notification....");
                boolean bool = DownloadingService.a(DownloadingService.this).a(DownloadingService.b(DownloadingService.this));
                u.a.b.c(DownloadingService.a(), String.format("isAppOnForeground = %1$B", new Object[] { Boolean.valueOf(bool) }));
                if ((bool) && (!locala.h))
                {
                  DownloadingService.c(DownloadingService.this).cancel(i + 1);
                  DownloadingService.b(DownloadingService.this).startActivity((Intent)localObject2);
                }
                u.a.b.a(DownloadingService.a(), String.format("%1$10s downloaded. Saved to: %2$s", new Object[] { locala.b, localObject1 }));
                return;
              }
            }
            catch (Exception paramAnonymousMessage)
            {
              u.a.b.b(DownloadingService.a(), "can not install. " + paramAnonymousMessage.getMessage());
              DownloadingService.c(DownloadingService.this).cancel(i + 1);
              return;
            }
            paramAnonymousMessage = new Notification(17301634, DownloadingService.b(DownloadingService.this).getString(k.f(DownloadingService.b(DownloadingService.this))), System.currentTimeMillis());
            paramAnonymousMessage.setLatestEventInfo(DownloadingService.b(DownloadingService.this), locala.b, DownloadingService.b(DownloadingService.this).getString(k.f(DownloadingService.b(DownloadingService.this))), (PendingIntent)localObject3);
          }
        }
        a.a locala = (a.a)paramAnonymousMessage.obj;
        int i = paramAnonymousMessage.arg2;
        paramAnonymousMessage = paramAnonymousMessage.getData().getString("filename");
        DownloadingService.c(DownloadingService.this).cancel(i);
        Object localObject1 = new Notification(17301633, DownloadingService.b(DownloadingService.this).getString(k.i(DownloadingService.b(DownloadingService.this))), System.currentTimeMillis());
        Object localObject2 = PendingIntent.getActivity(DownloadingService.b(DownloadingService.this), 0, new Intent(), 134217728);
        ((Notification)localObject1).setLatestEventInfo(DownloadingService.b(DownloadingService.this), a.h(DownloadingService.b(DownloadingService.this)), DownloadingService.b(DownloadingService.this).getString(k.i(DownloadingService.b(DownloadingService.this))), (PendingIntent)localObject2);
        DownloadingService.c(DownloadingService.this).notify(i + 1, (Notification)localObject1);
        localObject1 = paramAnonymousMessage.replace(".patch", ".apk");
        localObject2 = DeltaUpdate.a(DownloadingService.this);
        Object localObject3 = DownloadingService.a(DownloadingService.this);
        localObject3.getClass();
        new c.c((c)localObject3, DownloadingService.b(DownloadingService.this), i, locala, (String)localObject1).execute(new String[] { localObject2, localObject1, paramAnonymousMessage });
      }
    };
    this.q = new DownloadingService.a()
    {
      SparseArray<Long> a = new SparseArray();
      
      public void a(int paramAnonymousInt)
      {
        int j = 0;
        if (DownloadingService.b().indexOfKey(paramAnonymousInt) >= 0)
        {
          c.b localb = (c.b)DownloadingService.b().get(paramAnonymousInt);
          Object localObject = localb.f;
          int i = j;
          if (localObject != null)
          {
            i = j;
            if (localObject[1] > 0L)
            {
              j = (int)((float)localObject[0] / (float)localObject[1] * 100.0F);
              i = j;
              if (j > 100) {
                i = 99;
              }
            }
          }
          if (!localb.e.h)
          {
            this.a.put(paramAnonymousInt, Long.valueOf(-1L));
            localObject = DownloadingService.a(DownloadingService.this).a(DownloadingService.this, localb.e, paramAnonymousInt, i);
            localb.b = ((c.a)localObject);
            DownloadingService.c(DownloadingService.this).notify(paramAnonymousInt, ((c.a)localObject).d());
          }
        }
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (DownloadingService.b().indexOfKey(paramAnonymousInt1) >= 0)
        {
          Object localObject = (c.b)DownloadingService.b().get(paramAnonymousInt1);
          a.a locala = ((c.b)localObject).e;
          long l = System.currentTimeMillis();
          if ((!locala.h) && (l - ((Long)this.a.get(paramAnonymousInt1)).longValue() > 500L))
          {
            this.a.put(paramAnonymousInt1, Long.valueOf(l));
            localObject = ((c.b)localObject).b;
            ((c.a)localObject).a(100, paramAnonymousInt2, false).a(String.valueOf(paramAnonymousInt2) + "%");
            DownloadingService.c(DownloadingService.this).notify(paramAnonymousInt1, ((c.a)localObject).d());
          }
          u.a.b.c(DownloadingService.a(), String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", new Object[] { Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), locala.b }));
        }
      }
      
      public void a(int paramAnonymousInt, Exception paramAnonymousException)
      {
        if (DownloadingService.b().indexOfKey(paramAnonymousInt) >= 0) {
          DownloadingService.a(DownloadingService.this).b(DownloadingService.b(DownloadingService.this), paramAnonymousInt);
        }
      }
      
      public void a(int paramAnonymousInt, String paramAnonymousString)
      {
        Object localObject;
        Bundle localBundle;
        if (DownloadingService.b().indexOfKey(paramAnonymousInt) >= 0)
        {
          localObject = (c.b)DownloadingService.b().get(paramAnonymousInt);
          if (localObject != null)
          {
            localObject = ((c.b)localObject).e;
            b.a(DownloadingService.b(DownloadingService.this)).a(((a.a)localObject).a, ((a.a)localObject).c, 100);
            localBundle = new Bundle();
            localBundle.putString("filename", paramAnonymousString);
            if (!((a.a)localObject).a.equalsIgnoreCase("delta_update")) {
              break label126;
            }
            paramAnonymousString = Message.obtain();
            paramAnonymousString.what = 6;
            paramAnonymousString.arg1 = 1;
            paramAnonymousString.obj = localObject;
            paramAnonymousString.arg2 = paramAnonymousInt;
            paramAnonymousString.setData(localBundle);
            DownloadingService.d(DownloadingService.this).sendMessage(paramAnonymousString);
          }
        }
        return;
        label126:
        paramAnonymousString = Message.obtain();
        paramAnonymousString.what = 5;
        paramAnonymousString.arg1 = 1;
        paramAnonymousString.obj = localObject;
        paramAnonymousString.arg2 = paramAnonymousInt;
        paramAnonymousString.setData(localBundle);
        DownloadingService.d(DownloadingService.this).sendMessage(paramAnonymousString);
        paramAnonymousString = Message.obtain();
        paramAnonymousString.what = 5;
        paramAnonymousString.arg1 = 1;
        paramAnonymousString.arg2 = paramAnonymousInt;
        paramAnonymousString.setData(localBundle);
        try
        {
          if (DownloadingService.c().get(localObject) != null) {
            ((Messenger)DownloadingService.c().get(localObject)).send(paramAnonymousString);
          }
          DownloadingService.a(DownloadingService.this).b(DownloadingService.b(DownloadingService.this), paramAnonymousInt);
          return;
        }
        catch (RemoteException paramAnonymousString)
        {
          DownloadingService.a(DownloadingService.this).b(DownloadingService.b(DownloadingService.this), paramAnonymousInt);
        }
      }
    };
  }
  
  public void onDestroy()
  {
    try
    {
      b.a(getApplicationContext()).a(259200);
      b.a(getApplicationContext()).finalize();
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        u.a.b.b(t, localException.getMessage());
      }
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ((paramIntent != null) && (paramIntent.getExtras() != null)) {
      this.v.a(this, paramIntent);
    }
    if ((Build.VERSION.SDK_INT >= 19) && ((this.G.b()) || (this.H))) {}
    try
    {
      paramIntent = new Intent(getApplicationContext(), getClass());
      paramIntent.setPackage(getPackageName());
      paramIntent = PendingIntent.getService(getApplicationContext(), 1, paramIntent, 1073741824);
      ((AlarmManager)getApplicationContext().getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + 5000L, paramIntent);
      if (this.H)
      {
        d();
        this.H = false;
      }
      return 1;
    }
    catch (Exception paramIntent)
    {
      for (;;) {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\DownloadingService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */