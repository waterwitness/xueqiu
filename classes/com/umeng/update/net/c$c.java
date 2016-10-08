package com.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.umeng.update.util.DeltaUpdate;
import java.io.File;
import java.util.Map;
import u.a.a;
import u.a.b;
import u.a.k;
import u.a.m;

class c$c
  extends AsyncTask<String, Void, Integer>
{
  public int a;
  public String b;
  private a.a d;
  private Context e;
  private NotificationManager f;
  
  public c$c(c paramc, Context paramContext, int paramInt, a.a parama, String paramString)
  {
    this.e = paramContext.getApplicationContext();
    this.f = ((NotificationManager)this.e.getSystemService("notification"));
    this.a = paramInt;
    this.d = parama;
    this.b = paramString;
  }
  
  protected Integer a(String... paramVarArgs)
  {
    int i = DeltaUpdate.a(paramVarArgs[0], paramVarArgs[1], paramVarArgs[2]) + 1;
    new File(paramVarArgs[2]).delete();
    if (i == 1)
    {
      if (!m.a(new File(paramVarArgs[1])).equalsIgnoreCase(this.d.e))
      {
        b.a(c.a(), "file patch error");
        return Integer.valueOf(0);
      }
      b.a(c.a(), "file patch success");
    }
    for (;;)
    {
      return Integer.valueOf(i);
      b.a(c.a(), "file patch error");
    }
  }
  
  protected void a(Integer paramInteger)
  {
    if (paramInteger.intValue() == 1)
    {
      j.a(this.b, 39, -1, -1);
      paramInteger = new Notification(17301634, this.e.getString(k.g(this.e)), System.currentTimeMillis());
      localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).addFlags(268435456);
      ((Intent)localObject).setDataAndType(Uri.fromFile(new File(this.b)), "application/vnd.android.package-archive");
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.e, 0, (Intent)localObject, 134217728);
      paramInteger.setLatestEventInfo(this.e, a.h(this.e), this.e.getString(k.g(this.e)), localPendingIntent);
      paramInteger.flags = 16;
      this.f.notify(this.a + 1, paramInteger);
      if ((this.c.a(this.e)) && (!this.d.h))
      {
        this.f.cancel(this.a + 1);
        this.e.startActivity((Intent)localObject);
      }
      paramInteger = new Bundle();
      paramInteger.putString("filename", this.b);
      localObject = Message.obtain();
      ((Message)localObject).what = 5;
      ((Message)localObject).arg1 = 1;
      ((Message)localObject).arg2 = this.a;
      ((Message)localObject).setData(paramInteger);
      try
      {
        if (c.a(this.c).get(this.d) != null) {
          ((Messenger)c.a(this.c).get(this.d)).send((Message)localObject);
        }
        this.c.b(this.e, this.a);
        return;
      }
      catch (RemoteException paramInteger)
      {
        this.c.b(this.e, this.a);
        return;
      }
    }
    this.f.cancel(this.a + 1);
    paramInteger = new Bundle();
    paramInteger.putString("filename", this.b);
    Object localObject = Message.obtain();
    ((Message)localObject).what = 5;
    ((Message)localObject).arg1 = 3;
    ((Message)localObject).arg2 = this.a;
    ((Message)localObject).setData(paramInteger);
    try
    {
      if (c.a(this.c).get(this.d) != null) {
        ((Messenger)c.a(this.c).get(this.d)).send((Message)localObject);
      }
      this.c.b(this.e, this.a);
      return;
    }
    catch (RemoteException paramInteger)
    {
      this.c.b(this.e, this.a);
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\c$c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */