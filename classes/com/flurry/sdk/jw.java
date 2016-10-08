package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;

public class jw
{
  private static jw a;
  private static final String b = jw.class.getSimpleName();
  private Object c;
  
  private jw()
  {
    e();
  }
  
  public static jw a()
  {
    try
    {
      if (a == null) {
        a = new jw();
      }
      jw localjw = a;
      return localjw;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.f();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  @TargetApi(14)
  private void e()
  {
    if ((Build.VERSION.SDK_INT < 14) || (this.c != null)) {}
    Context localContext;
    do
    {
      return;
      localContext = js.a().c();
    } while (!(localContext instanceof Application));
    this.c = new Application.ActivityLifecycleCallbacks()
    {
      protected void a(Activity paramAnonymousActivity, jv.a paramAnonymousa)
      {
        jv localjv = new jv();
        localjv.a = paramAnonymousActivity;
        localjv.b = paramAnonymousa;
        localjv.b();
      }
      
      public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
      {
        kg.a(3, jw.d(), "onActivityCreated for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.a);
      }
      
      public void onActivityDestroyed(Activity paramAnonymousActivity)
      {
        kg.a(3, jw.d(), "onActivityDestroyed for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.b);
      }
      
      public void onActivityPaused(Activity paramAnonymousActivity)
      {
        kg.a(3, jw.d(), "onActivityPaused for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.c);
      }
      
      public void onActivityResumed(Activity paramAnonymousActivity)
      {
        kg.a(3, jw.d(), "onActivityResumed for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.d);
      }
      
      public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
      {
        kg.a(3, jw.d(), "onActivitySaveInstanceState for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.g);
      }
      
      public void onActivityStarted(Activity paramAnonymousActivity)
      {
        kg.a(3, jw.d(), "onActivityStarted for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.e);
      }
      
      public void onActivityStopped(Activity paramAnonymousActivity)
      {
        kg.a(3, jw.d(), "onActivityStopped for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, jv.a.f);
      }
    };
    ((Application)localContext).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)this.c);
  }
  
  @TargetApi(14)
  private void f()
  {
    if ((Build.VERSION.SDK_INT < 14) || (this.c == null)) {}
    Context localContext;
    do
    {
      return;
      localContext = js.a().c();
    } while (!(localContext instanceof Application));
    ((Application)localContext).unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)this.c);
    this.c = null;
  }
  
  public boolean c()
  {
    return this.c != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */