package com.xueqiu.android.common;

import android.app.Application;
import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.l;
import com.xueqiu.android.common.widget.ae;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class c
  extends i
  implements com.xueqiu.android.base.b.q
{
  private List<x> a = new LinkedList();
  private final rx.d.c.j b = new rx.d.c.j();
  protected Dialog i;
  
  public final boolean A()
  {
    return (this.i != null) && (this.i.isShowing());
  }
  
  public Boolean B()
  {
    return Boolean.valueOf(true);
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    w().d(0);
    w().c(true);
    w().d(false);
    w().a(null);
    w().b(true);
    w().a(true);
    if ((g() != null) && ((g() instanceof MainActivity)))
    {
      MainActivity localMainActivity = (MainActivity)g();
      if (localMainActivity.p)
      {
        localMainActivity.p = false;
        TypedArray localTypedArray = localMainActivity.getTheme().obtainStyledAttributes(new int[] { 2130772182 });
        localMainActivity.i.b().a(localMainActivity.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
        localMainActivity.i.b().b(localMainActivity.getResources().getDrawable(localTypedArray.getResourceId(0, 0)));
        localMainActivity.i.b().c(localMainActivity.getResources().getDrawable(2130837595));
      }
    }
    return super.a(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public final void a(Intent paramIntent)
  {
    a(paramIntent, 2130968598, 2130968597);
  }
  
  public final void a(Intent paramIntent, int paramInt)
  {
    a(paramIntent, paramInt, 2130968598, 2130968597);
  }
  
  public final void a(Intent paramIntent, int paramInt1, int paramInt2)
  {
    super.a(paramIntent);
    g().overridePendingTransition(paramInt1, paramInt2);
  }
  
  public final void a(Intent paramIntent, int paramInt1, int paramInt2, int paramInt3)
  {
    super.a(paramIntent, paramInt1);
    g().overridePendingTransition(paramInt2, paramInt3);
  }
  
  public final void a(x paramx)
  {
    if (paramx != null) {
      this.a.add(paramx);
    }
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    if (w() != null) {
      w().a(paramCharSequence);
    }
  }
  
  public final void a(rx.j paramj)
  {
    this.b.a(paramj);
  }
  
  public final Dialog a_(String paramString)
  {
    if (this.T == null) {
      return null;
    }
    if (this.i != null) {
      this.i.dismiss();
    }
    this.i = new ae(f(), paramString);
    this.i.show();
    return this.i;
  }
  
  public final View c(int paramInt)
  {
    if (this.T != null) {
      return this.T.findViewById(paramInt);
    }
    return null;
  }
  
  public final void d(int paramInt)
  {
    a(a(paramInt));
  }
  
  public void o()
  {
    super.o();
    MobclickAgent.onPageStart(getClass().getName());
    com.d.a.b.f localf = com.d.a.b.f.a();
    if (!localf.b()) {
      localf.a(com.xueqiu.android.base.util.n.a(g()));
    }
  }
  
  public void p()
  {
    super.p();
    MobclickAgent.onPageEnd(getClass().getName());
  }
  
  public void q()
  {
    if (this.a.size() > 0)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        x localx = (x)localIterator.next();
        if (!localx.h) {
          x().a(localx);
        }
      }
    }
    this.a.clear();
    this.b.b();
    l.a();
    l.b();
    super.q();
  }
  
  public final Application v()
  {
    if (g() != null) {
      return g().getApplication();
    }
    return null;
  }
  
  public final a w()
  {
    try
    {
      if (g() != null)
      {
        a locala = ((android.support.v7.a.f)g()).i.b();
        return locala;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public final ai x()
  {
    if (v() != null) {
      return com.xueqiu.android.base.q.a().b();
    }
    return null;
  }
  
  public final Dialog y()
  {
    if (this.T == null) {
      return null;
    }
    return a_(a(2131165947));
  }
  
  public boolean y_()
  {
    return false;
  }
  
  public final void z()
  {
    if ((this.i != null) && (this.i.isShowing())) {}
    try
    {
      this.i.dismiss();
      this.i = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  public final boolean z_()
  {
    return this.T != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */