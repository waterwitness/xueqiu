package com.xueqiu.android.common;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.r;
import android.support.v7.a.a;
import android.view.GestureDetector;
import android.view.MenuItem;
import android.view.MotionEvent;
import com.flurry.android.FlurryAgent;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.l;
import com.xueqiu.android.base.util.al;
import com.xueqiu.android.base.util.am;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.widget.ae;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public class b
  extends android.support.v7.a.f
  implements com.xueqiu.android.base.b.q, am
{
  private GestureDetector j;
  private ConcurrentLinkedQueue<x> k = new ConcurrentLinkedQueue();
  protected Dialog l;
  public boolean m = true;
  public boolean n = false;
  public BroadcastReceiver o;
  private final rx.d.c.j p = new rx.d.c.j();
  private boolean q = false;
  
  public static ai g()
  {
    return com.xueqiu.android.base.q.a().b();
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    super.finish();
    i();
    overridePendingTransition(paramInt1, paramInt2);
  }
  
  public final void a(Intent paramIntent, int paramInt1, int paramInt2, int paramInt3)
  {
    super.startActivityForResult(paramIntent, paramInt1);
    if (paramIntent.getBooleanExtra("show_custom_anim", true)) {
      overridePendingTransition(paramInt2, paramInt3);
    }
  }
  
  public final void a(x paramx)
  {
    this.k.add(paramx);
  }
  
  public final void a(rx.j paramj)
  {
    this.p.a(paramj);
  }
  
  public final Dialog c_(String paramString)
  {
    if (isFinishing()) {
      return null;
    }
    if (this.l != null) {
      this.l.dismiss();
    }
    this.l = new ae(this, paramString);
    this.l.show();
    return this.l;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((w_().booleanValue()) && (this.m) && (this.j.onTouchEvent(paramMotionEvent))) {
      return true;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361882);
      return;
    }
    setTheme(2131361880);
  }
  
  public void finish()
  {
    a(2130968596, 2130968599);
  }
  
  public final Dialog h()
  {
    return c_(getString(2131165947));
  }
  
  public final void i()
  {
    if ((this.l != null) && (this.l.isShowing())) {}
    try
    {
      this.l.dismiss();
      this.l = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  public boolean isDestroyed()
  {
    if (Build.VERSION.SDK_INT < 17) {
      return this.q;
    }
    return super.isDestroyed();
  }
  
  public void onBackPressed()
  {
    if ((isTaskRoot()) && (!(this instanceof MainActivity)))
    {
      Intent localIntent = new Intent(this, MainActivity.class);
      localIntent.setFlags(67108864);
      startActivity(localIntent);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    e();
    super.onCreate(paramBundle);
    this.i.b().b(true);
    this.i.b().a(true);
    com.xueqiu.android.base.b.a().c();
    this.n = true;
    this.j = new GestureDetector(this, new al(this));
    paramBundle = com.d.a.b.f.a();
    if (!paramBundle.b()) {
      paramBundle.a(com.xueqiu.android.base.util.n.a(getApplicationContext()));
    }
  }
  
  public void onDestroy()
  {
    this.n = false;
    if (this.k.size() > 0)
    {
      Iterator localIterator = this.k.iterator();
      while (localIterator.hasNext())
      {
        x localx = (x)localIterator.next();
        if (!localx.h) {
          com.xueqiu.android.base.q.a().b().a(localx);
        }
      }
    }
    this.k.clear();
    this.p.b();
    this.q = true;
    try
    {
      if (this.o != null) {
        r.a(this).a(this.o);
      }
      l.a();
      l.b();
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    this.n = false;
  }
  
  public void onResume()
  {
    super.onResume();
    this.n = true;
  }
  
  public void onStart()
  {
    super.onStart();
    this.n = true;
    if (!com.xueqiu.android.base.b.a().c) {
      com.xueqiu.android.base.b.a().a(true);
    }
    if (v.a) {}
    for (String str = "ZDP9ZZFJ6BNR8QQCFDPT";; str = com.xueqiu.android.base.g.a().a().getFlurryApiKey())
    {
      FlurryAgent.onStartSession(this, str);
      MobclickAgent.onPageStart(getClass().getName());
      MobclickAgent.onResume(this);
      return;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    this.n = false;
    FlurryAgent.onEndSession(this);
    MobclickAgent.onPageEnd(getClass().getName());
    MobclickAgent.onPause(this);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.i.b().a(paramCharSequence);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    a(paramIntent, paramInt, 2130968598, 2130968597);
  }
  
  public Boolean w_()
  {
    return Boolean.valueOf(true);
  }
  
  public void x_()
  {
    onBackPressed();
  }
  
  public final boolean z_()
  {
    return !isDestroyed();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */