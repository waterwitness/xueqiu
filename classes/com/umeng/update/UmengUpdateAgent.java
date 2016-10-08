package com.umeng.update;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import com.umeng.update.net.j;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import u.a.a;
import u.a.b;
import u.a.k;
import u.a.m;

public class UmengUpdateAgent
{
  private static UmengUpdateListener a = null;
  private static UmengDialogButtonListener b = null;
  private static UmengDownloadListener c = null;
  private static Context d;
  private static c e = new c();
  private static Handler f;
  
  static void a(int paramInt, Context paramContext, UpdateResponse paramUpdateResponse, File paramFile)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (b != null) {
        b.onClick(paramInt);
      }
      return;
      a(paramContext, paramUpdateResponse, paramFile);
      continue;
      ignoreUpdate(paramContext, paramUpdateResponse);
    }
  }
  
  private static void a(Context paramContext, UpdateResponse paramUpdateResponse, File paramFile)
  {
    if (paramFile == null)
    {
      startDownload(paramContext, paramUpdateResponse);
      return;
    }
    startInstall(paramContext, paramFile);
  }
  
  private static void b(int paramInt, UpdateResponse paramUpdateResponse)
  {
    Message localMessage = new Message();
    localMessage.what = paramInt;
    localMessage.obj = paramUpdateResponse;
    f.sendMessage(localMessage);
  }
  
  private static void b(Context paramContext)
  {
    if (paramContext == null) {}
    try
    {
      b.b("update", "unexpected null context in update");
      return;
    }
    catch (Exception paramContext)
    {
      b.b("update", "Exception occurred in Mobclick.update(). ", paramContext);
      return;
    }
    f = new Handler(paramContext.getMainLooper())
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        super.handleMessage(paramAnonymousMessage);
        if ((paramAnonymousMessage.what == 0) && (UpdateConfig.isUpdateAutoPopup())) {
          UmengUpdateAgent.a(UmengUpdateAgent.a(), (UpdateResponse)paramAnonymousMessage.obj, UpdateConfig.getStyle());
        }
        UmengUpdateAgent.a(null);
        if (UmengUpdateAgent.b() != null) {
          UmengUpdateAgent.b().onUpdateReturned(paramAnonymousMessage.what, (UpdateResponse)paramAnonymousMessage.obj);
        }
      }
    };
    c(paramContext);
    if (!a.c(paramContext))
    {
      if (UpdateConfig.isSilentDownload())
      {
        b(2, null);
        return;
      }
      if ((UpdateConfig.isUpdateOnlyWifi()) && (!UpdateConfig.isUpdateForce()))
      {
        b(2, null);
        return;
      }
    }
    if (e.a())
    {
      b(4, null);
      b.a("update", "Is updating now.");
      f.post(new Runnable()
      {
        public void run()
        {
          Toast.makeText(UmengUpdateAgent.this, k.b(UmengUpdateAgent.this), 0).show();
        }
      });
      return;
    }
    d = paramContext;
    new Thread(new UmengUpdateAgent.a(paramContext.getApplicationContext())).start();
  }
  
  private static void b(Context paramContext, UpdateResponse paramUpdateResponse, int paramInt)
  {
    File localFile;
    boolean bool;
    for (;;)
    {
      try
      {
        if (isIgnore(paramContext, paramUpdateResponse)) {
          return;
        }
        localFile = downloadedFile(paramContext, paramUpdateResponse);
        if (localFile == null) {
          break label58;
        }
        bool = true;
        if (bool) {
          break label98;
        }
        if (UpdateConfig.isSilentDownload()) {
          break;
        }
      }
      catch (Exception paramContext)
      {
        b.b("update", "Fail to create update dialog box.", paramContext);
        return;
      }
      e.a(paramContext, paramUpdateResponse, bool, localFile);
      return;
      label58:
      bool = false;
    }
    ((NotificationManager)paramContext.getSystemService("notification")).notify(0, e.b(paramContext, paramUpdateResponse, bool, localFile).a());
    return;
    startDownload(paramContext, paramUpdateResponse);
    return;
    label98:
    switch (paramInt)
    {
    }
  }
  
  private static boolean c(Context paramContext)
  {
    if (!UpdateConfig.isUpdateCheck()) {
      return true;
    }
    for (;;)
    {
      int m;
      int n;
      int i1;
      try
      {
        bool1 = Class.forName(paramContext.getPackageName() + ".BuildConfig").getField("DEBUG").getBoolean(null);
        if (!bool1) {
          break;
        }
        try
        {
          if (UpdateConfig.getAppkey(paramContext) == null)
          {
            f.post(new Runnable()
            {
              public void run()
              {
                Toast.makeText(UmengUpdateAgent.this, "Please set umeng appkey!", 1).show();
              }
            });
            return false;
          }
          localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4101);
          localObject = localPackageInfo.activities;
          if (localObject == null) {
            break label565;
          }
          i = 0;
          bool2 = false;
          bool1 = bool2;
        }
        catch (Exception paramContext)
        {
          PackageInfo localPackageInfo;
          Object localObject;
          boolean bool3;
          bool1 = false;
          continue;
        }
        try
        {
          if (i >= localPackageInfo.activities.length)
          {
            bool1 = bool2;
            if (!bool1)
            {
              f.post(new Runnable()
              {
                public void run()
                {
                  Toast.makeText(UmengUpdateAgent.this, "Please add Activity in AndroidManifest!", 1).show();
                }
              });
              return false;
            }
          }
          else
          {
            bool1 = bool2;
            bool3 = "com.umeng.update.UpdateDialogActivity".equals(localPackageInfo.activities[i].name);
            if (bool3) {
              bool2 = true;
            }
            i += 1;
            continue;
          }
          localObject = localPackageInfo.services;
          if (localObject == null) {
            break label559;
          }
          i = 0;
          bool2 = false;
          bool1 = bool2;
          if (i >= localPackageInfo.services.length)
          {
            bool1 = bool2;
            if (!bool1)
            {
              f.post(new Runnable()
              {
                public void run()
                {
                  Toast.makeText(UmengUpdateAgent.this, "Please add Service in AndroidManifest!", 1).show();
                }
              });
              return false;
            }
          }
          else
          {
            bool1 = bool2;
            bool3 = "com.umeng.update.net.DownloadingService".equals(localPackageInfo.services[i].name);
            if (bool3) {
              bool2 = true;
            }
            i += 1;
            continue;
          }
          if (localPackageInfo.requestedPermissions == null) {
            break label548;
          }
          m = 0;
          k = 0;
          i = 0;
          j = 0;
          n = localPackageInfo.requestedPermissions.length;
          if (m >= n)
          {
            if ((j != 0) && (i != 0) && (k != 0))
            {
              bool1 = true;
              if (bool1) {
                continue;
              }
              f.post(new Runnable()
              {
                public void run()
                {
                  Toast.makeText(UmengUpdateAgent.this, "Please add Permission in AndroidManifest!", 1).show();
                }
              });
              return false;
            }
          }
          else
          {
            if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(localPackageInfo.requestedPermissions[m]))
            {
              i1 = 1;
              n = i;
              break label571;
            }
            if ("android.permission.ACCESS_NETWORK_STATE".equals(localPackageInfo.requestedPermissions[m]))
            {
              n = 1;
              i1 = j;
              break label571;
            }
            bool1 = "android.permission.INTERNET".equals(localPackageInfo.requestedPermissions[m]);
            n = i;
            i1 = j;
            if (!bool1) {
              break label571;
            }
            k = 1;
            n = i;
            i1 = j;
            break label571;
          }
          bool1 = false;
          continue;
        }
        catch (Exception paramContext)
        {
          continue;
        }
        try
        {
          bool1 = "2.4.2.20140520".equals(paramContext.getString(Class.forName(paramContext.getPackageName() + ".R$string").getField("UMUpdateCheck").getInt(null)));
          if (!bool1) {
            break label542;
          }
          bool2 = true;
          if (bool2) {
            break;
          }
        }
        catch (Exception localException)
        {
          bool2 = false;
          continue;
        }
        bool1 = bool2;
        f.post(new Runnable()
        {
          public void run()
          {
            Toast.makeText(UmengUpdateAgent.this, "Please copy all resources (res/) from SDK to your project!", 1).show();
          }
        });
        bool1 = bool2;
        return bool1;
      }
      catch (Exception paramContext)
      {
        return true;
      }
      label542:
      boolean bool2 = false;
      continue;
      label548:
      int k = 0;
      int i = 0;
      int j = 0;
      continue;
      label559:
      boolean bool1 = false;
      continue;
      label565:
      bool1 = false;
      continue;
      label571:
      m += 1;
      i = n;
      j = i1;
    }
  }
  
  public static File downloadedFile(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    String str = paramUpdateResponse.new_md5 + ".apk";
    try
    {
      paramContext = new File(j.a("/apk", paramContext, new boolean[1]), str);
      if (paramContext.exists())
      {
        boolean bool = paramUpdateResponse.new_md5.equalsIgnoreCase(m.a(paramContext));
        if (bool) {
          return paramContext;
        }
      }
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    return null;
  }
  
  public static void forceUpdate(Context paramContext)
  {
    UpdateConfig.setUpdateForce(true);
    UpdateConfig.setSilentDownload(false);
    b(paramContext.getApplicationContext());
  }
  
  public static void ignoreUpdate(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    UpdateConfig.saveIgnoreMd5(paramContext, paramUpdateResponse.new_md5);
  }
  
  public static boolean isIgnore(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    return (paramUpdateResponse.new_md5 != null) && (paramUpdateResponse.new_md5.equalsIgnoreCase(UpdateConfig.getIgnoreMd5(paramContext))) && (!UpdateConfig.isUpdateForce());
  }
  
  public static void setAppkey(String paramString)
  {
    UpdateConfig.setAppkey(paramString);
  }
  
  public static void setChannel(String paramString)
  {
    UpdateConfig.setChannel(paramString);
  }
  
  public static void setDefault()
  {
    setDeltaUpdate(true);
    setUpdateAutoPopup(true);
    setUpdateOnlyWifi(true);
    setRichNotification(true);
    setDialogListener(null);
    setDownloadListener(null);
    setUpdateListener(null);
    setAppkey(null);
    setChannel(null);
    setUpdateUIStyle(0);
  }
  
  public static void setDeltaUpdate(boolean paramBoolean)
  {
    UpdateConfig.setDeltaUpdate(paramBoolean);
  }
  
  public static void setDialogListener(UmengDialogButtonListener paramUmengDialogButtonListener)
  {
    b = paramUmengDialogButtonListener;
  }
  
  public static void setDownloadListener(UmengDownloadListener paramUmengDownloadListener)
  {
    c = paramUmengDownloadListener;
  }
  
  public static void setRichNotification(boolean paramBoolean)
  {
    UpdateConfig.setRichNotification(paramBoolean);
  }
  
  public static void setUpdateAutoPopup(boolean paramBoolean)
  {
    UpdateConfig.setUpdateAutoPopup(paramBoolean);
  }
  
  public static void setUpdateCheckConfig(boolean paramBoolean)
  {
    UpdateConfig.setUpdateCheck(paramBoolean);
  }
  
  public static void setUpdateListener(UmengUpdateListener paramUmengUpdateListener)
  {
    a = paramUmengUpdateListener;
  }
  
  public static void setUpdateOnlyWifi(boolean paramBoolean)
  {
    UpdateConfig.setUpdateOnlyWifi(paramBoolean);
  }
  
  public static void setUpdateUIStyle(int paramInt)
  {
    UpdateConfig.setStyle(paramInt);
  }
  
  public static void showUpdateDialog(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    b(paramContext, paramUpdateResponse, 0);
  }
  
  public static void showUpdateNotification(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    b(paramContext, paramUpdateResponse, 1);
  }
  
  public static void silentUpdate(Context paramContext)
  {
    UpdateConfig.setUpdateForce(false);
    UpdateConfig.setSilentDownload(true);
    b(paramContext.getApplicationContext());
  }
  
  public static void startDownload(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    if ((paramUpdateResponse.delta) && (UpdateConfig.isDeltaUpdate()))
    {
      e.a(paramContext, paramUpdateResponse.origin, paramUpdateResponse.new_md5, paramUpdateResponse.path, paramUpdateResponse.patch_md5, c);
      e.b();
      return;
    }
    e.a(paramContext, paramUpdateResponse.path, paramUpdateResponse.new_md5, null, null, c);
    e.c();
  }
  
  public static void startInstall(Context paramContext, File paramFile)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }
  
  public static void update(Context paramContext)
  {
    UpdateConfig.setUpdateForce(false);
    UpdateConfig.setSilentDownload(false);
    b(paramContext.getApplicationContext());
  }
  
  public static void update(Context paramContext, String paramString1, String paramString2)
  {
    UpdateConfig.setAppkey(paramString1);
    UpdateConfig.setChannel(paramString2);
    update(paramContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UmengUpdateAgent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */