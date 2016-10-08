package com.umeng.update.net;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import u.a.b;

public class a
{
  private static final String b = a.class.getName();
  final Messenger a = new Messenger(new a.b(this));
  private Context c;
  private d d;
  private Messenger e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String[] k;
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private ServiceConnection o = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      b.c(a.b(), "ServiceConnection.onServiceConnected");
      a.a(a.this, new Messenger(paramAnonymousIBinder));
      try
      {
        paramAnonymousComponentName = Message.obtain(null, 4);
        paramAnonymousIBinder = new a.a(a.a(a.this), a.b(a.this), a.c(a.this));
        paramAnonymousIBinder.d = a.d(a.this);
        paramAnonymousIBinder.e = a.e(a.this);
        paramAnonymousIBinder.f = a.f(a.this);
        paramAnonymousIBinder.g = a.g(a.this);
        paramAnonymousIBinder.h = a.h(a.this);
        paramAnonymousIBinder.i = a.i(a.this);
        paramAnonymousComponentName.setData(paramAnonymousIBinder.a());
        paramAnonymousComponentName.replyTo = a.this.a;
        a.j(a.this).send(paramAnonymousComponentName);
        return;
      }
      catch (RemoteException paramAnonymousComponentName) {}
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      b.c(a.b(), "ServiceConnection.onServiceDisconnected");
      a.a(a.this, null);
    }
  };
  
  public a(Context paramContext, String paramString1, String paramString2, String paramString3, d paramd)
  {
    this.c = paramContext.getApplicationContext();
    this.f = paramString1;
    this.g = paramString2;
    this.h = paramString3;
    this.d = paramd;
  }
  
  public void a()
  {
    Intent localIntent = new Intent(this.c, DownloadingService.class);
    this.c.bindService(localIntent, this.o, 1);
    this.c.startService(new Intent(this.c, DownloadingService.class));
  }
  
  public void a(String paramString)
  {
    this.i = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  public void a(String[] paramArrayOfString)
  {
    this.k = paramArrayOfString;
  }
  
  public void b(String paramString)
  {
    this.j = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void c(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */