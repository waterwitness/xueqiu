package android.support.v4.a;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.e.c;
import android.support.v4.view.aa;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;

public class i
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final android.support.v4.e.n<String, Class<?>> a = new android.support.v4.e.n();
  static final Object j = new Object();
  boolean A;
  int B;
  public r C;
  p D;
  r E;
  public i F;
  int G;
  int H;
  String I;
  public boolean J;
  boolean K;
  boolean L;
  boolean M;
  boolean N;
  boolean O;
  boolean P = true;
  boolean Q;
  int R;
  ViewGroup S;
  public View T;
  View U;
  boolean V;
  boolean W = true;
  ai X;
  boolean Y;
  boolean Z;
  Object aa = null;
  Object ab = j;
  Object ac = null;
  Object ad = j;
  Object ae = null;
  Object af = j;
  Boolean ag;
  Boolean ah;
  cf ai = null;
  cf aj = null;
  int k = 0;
  View l;
  int m;
  Bundle n;
  SparseArray<Parcelable> o;
  int p = -1;
  String q;
  public Bundle r;
  i s;
  int t = -1;
  int u;
  boolean v;
  boolean w;
  public boolean x;
  boolean y;
  boolean z;
  
  public static i a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, null);
  }
  
  public static i a(Context paramContext, String paramString, @Nullable Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)a.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass1);
      }
      paramContext = (i)localClass1.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        paramContext.r = paramBundle;
      }
      return paramContext;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new j("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new j("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new j("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
  }
  
  static boolean b(Context paramContext, String paramString)
  {
    try
    {
      Class localClass2 = (Class)a.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        a.put(paramString, localClass1);
      }
      boolean bool = i.class.isAssignableFrom(localClass1);
      return bool;
    }
    catch (ClassNotFoundException paramContext) {}
    return false;
  }
  
  public static void l() {}
  
  public static Animation n()
  {
    return null;
  }
  
  public static void r() {}
  
  public void F_()
  {
    this.Q = true;
  }
  
  public void K_()
  {
    this.Q = true;
    if (!this.Y)
    {
      this.Y = true;
      if (!this.Z)
      {
        this.Z = true;
        this.X = this.D.a(this.q, this.Y, false);
      }
      if (this.X != null) {
        this.X.b();
      }
    }
  }
  
  @Nullable
  public View a(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle)
  {
    return null;
  }
  
  public final String a(@StringRes int paramInt)
  {
    return h().getString(paramInt);
  }
  
  public final String a(@StringRes int paramInt, Object... paramVarArgs)
  {
    return h().getString(paramInt, paramVarArgs);
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  final void a(int paramInt, i parami)
  {
    this.p = paramInt;
    if (parami != null)
    {
      this.q = (parami.q + ":" + this.p);
      return;
    }
    this.q = ("android:fragment:" + this.p);
  }
  
  @Deprecated
  public void a(Activity paramActivity)
  {
    this.Q = true;
  }
  
  public void a(Context paramContext)
  {
    this.Q = true;
    if (this.D == null) {}
    for (paramContext = null;; paramContext = this.D.b)
    {
      if (paramContext != null)
      {
        this.Q = false;
        a(paramContext);
      }
      return;
    }
  }
  
  public void a(Intent paramIntent)
  {
    if (this.D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.D.a(this, paramIntent, -1);
  }
  
  public void a(Intent paramIntent, int paramInt)
  {
    if (this.D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.D.a(this, paramIntent, paramInt);
  }
  
  public void a(@Nullable Bundle paramBundle)
  {
    this.Q = true;
  }
  
  public void a(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public void a(View paramView, @Nullable Bundle paramBundle) {}
  
  public boolean a(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public LayoutInflater b(Bundle paramBundle)
  {
    paramBundle = this.D.c();
    i();
    aa.a(paramBundle, this.E);
    return paramBundle;
  }
  
  final View b(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.E != null) {
      this.E.t = false;
    }
    return a(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void c(@Nullable Bundle paramBundle)
  {
    this.Q = true;
  }
  
  public void c_(boolean paramBoolean) {}
  
  public void d()
  {
    this.Q = true;
  }
  
  public void d(Bundle paramBundle) {}
  
  public final void d(boolean paramBoolean)
  {
    if (this.P != paramBoolean)
    {
      this.P = paramBoolean;
      if ((this.O) && (j()) && (!this.J)) {
        this.D.d();
      }
    }
  }
  
  public void e()
  {
    this.Q = true;
  }
  
  public final void e(Bundle paramBundle)
  {
    if (this.p >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    this.r = paramBundle;
  }
  
  public final void e(boolean paramBoolean)
  {
    if ((!this.W) && (paramBoolean) && (this.k < 4)) {
      this.C.a(this);
    }
    this.W = paramBoolean;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.V = paramBoolean;
      return;
    }
  }
  
  public final void e_(boolean paramBoolean)
  {
    if (this.O != paramBoolean)
    {
      this.O = paramBoolean;
      if ((j()) && (!this.J)) {
        this.D.d();
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public final Context f()
  {
    if (this.D == null) {
      return null;
    }
    return this.D.c;
  }
  
  final void f(Bundle paramBundle)
  {
    d(paramBundle);
    if (this.E != null)
    {
      Parcelable localParcelable = this.E.h();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  public final k g()
  {
    if (this.D == null) {
      return null;
    }
    return (k)this.D.b;
  }
  
  public final Resources h()
  {
    if (this.D == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    return this.D.c.getResources();
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  public final q i()
  {
    if (this.E == null)
    {
      s();
      if (this.k < 5) {
        break label31;
      }
      this.E.l();
    }
    for (;;)
    {
      return this.E;
      label31:
      if (this.k >= 4) {
        this.E.k();
      } else if (this.k >= 2) {
        this.E.j();
      } else if (this.k > 0) {
        this.E.i();
      }
    }
  }
  
  public final boolean j()
  {
    return (this.D != null) && (this.v);
  }
  
  public final boolean k()
  {
    return (j()) && (!this.J) && (this.T != null) && (this.T.getWindowToken() != null) && (this.T.getVisibility() == 0);
  }
  
  public final void m()
  {
    this.Q = true;
    if (this.D == null) {}
    for (Activity localActivity = null;; localActivity = this.D.b)
    {
      if (localActivity != null)
      {
        this.Q = false;
        this.Q = true;
      }
      return;
    }
  }
  
  public void o()
  {
    this.Q = true;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.Q = true;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    g().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onLowMemory()
  {
    this.Q = true;
  }
  
  public void p()
  {
    this.Q = true;
  }
  
  public void q()
  {
    this.Q = true;
    if (!this.Z)
    {
      this.Z = true;
      this.X = this.D.a(this.q, this.Y, false);
    }
    if (this.X != null) {
      this.X.g();
    }
  }
  
  final void s()
  {
    this.E = new r();
    this.E.a(this.D, new n()
    {
      @Nullable
      public final View a(int paramAnonymousInt)
      {
        if (i.this.T == null) {
          throw new IllegalStateException("Fragment does not have a view");
        }
        return i.this.T.findViewById(paramAnonymousInt);
      }
      
      public final boolean a()
      {
        return i.this.T != null;
      }
    }, this);
  }
  
  final void t()
  {
    if (this.E != null) {
      this.E.c(2);
    }
    if (this.Y)
    {
      this.Y = false;
      if (!this.Z)
      {
        this.Z = true;
        this.X = this.D.a(this.q, this.Y, false);
      }
      if (this.X != null)
      {
        if (!this.N) {
          break label81;
        }
        this.X.d();
      }
    }
    return;
    label81:
    this.X.c();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    c.a(this, localStringBuilder);
    if (this.p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.p);
    }
    if (this.G != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.G));
    }
    if (this.I != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.I);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */