package com.xueqiu.android.base;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.android.volley.toolbox.a;
import com.android.volley.toolbox.c;
import com.xueqiu.android.base.b.ae;
import com.xueqiu.android.base.b.af;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.j;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.y;
import java.io.File;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import javax.net.ssl.SSLSocketFactory;

public final class q
{
  private static q c = null;
  private static volatile boolean e = false;
  public ae a = null;
  public y b = null;
  private ai d;
  
  public static q a()
  {
    if (((c == null) || (!e)) && (c == null)) {
      return new q();
    }
    return c;
  }
  
  protected static final q a(Context paramContext, f paramf)
  {
    if ((c == null) || (!e))
    {
      q localq = new q();
      c = localq;
      if (!e)
      {
        localq.b(paramContext, paramf);
        e = true;
      }
    }
    return c;
  }
  
  public final ai b()
  {
    if (this.d == null)
    {
      b.a();
      b(b.d(), g.a());
    }
    return this.d;
  }
  
  public final void b(Context paramContext, f paramf)
  {
    String str = i.a(paramContext);
    File localFile = new File(paramContext.getCacheDir(), "volley");
    if ((paramf.a) && (this.b == null)) {
      this.b = new y(new File(paramContext.getExternalCacheDir(), "default_net_count.log"));
    }
    try
    {
      paramf = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      SSLSocketFactory localSSLSocketFactory = af.a(paramContext.getApplicationContext());
      paramContext = null;
      if (str != null) {
        paramContext = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, 80));
      }
      paramContext = new a(new j(paramContext, localSSLSocketFactory));
      if (this.b != null) {}
      for (paramContext = new ae(paramf, new c(localFile, (byte)0), paramContext, this.b);; paramContext = new ae(paramf, new c(localFile, (byte)0), paramContext))
      {
        if (this.a != null) {
          this.a.b();
        }
        paramContext.a();
        this.a = paramContext;
        this.d = new ai(this.a);
        return;
      }
      return;
    }
    catch (Exception paramContext)
    {
      aa.a(paramContext);
      return;
    }
    catch (OutOfMemoryError paramContext)
    {
      b.a();
      b.g();
    }
  }
  
  public final void c()
  {
    if (!e) {}
    while (this.a == null) {
      return;
    }
    this.a.b();
  }
  
  public final void d()
  {
    if (!e) {}
    while (this.a == null) {
      return;
    }
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */