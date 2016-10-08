package android.support.v7.a;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.a.ak;
import android.support.v7.b.k;
import android.support.v7.internal.view.d;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public abstract class g
{
  final f a;
  boolean b;
  boolean c;
  private a d;
  private MenuInflater e;
  private boolean f;
  
  g(f paramf)
  {
    this.a = paramf;
  }
  
  abstract a a();
  
  abstract void a(int paramInt);
  
  void a(Bundle paramBundle)
  {
    paramBundle = this.a.obtainStyledAttributes(k.ActionBarWindow);
    if (!paramBundle.hasValue(0))
    {
      paramBundle.recycle();
      throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }
    this.b = paramBundle.getBoolean(0, false);
    this.c = paramBundle.getBoolean(1, false);
    paramBundle.recycle();
    if (ak.b(this.a) != null)
    {
      if (this.d == null) {
        this.f = true;
      }
    }
    else {
      return;
    }
    this.d.b(true);
  }
  
  abstract void a(View paramView);
  
  abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  abstract void a(CharSequence paramCharSequence);
  
  abstract boolean a(int paramInt, Menu paramMenu);
  
  abstract boolean a(int paramInt, MenuItem paramMenuItem);
  
  abstract boolean a(int paramInt, View paramView, Menu paramMenu);
  
  public final a b()
  {
    if ((this.b) || (this.c)) {
      if (this.d == null)
      {
        this.d = a();
        if (this.f) {
          this.d.b(true);
        }
      }
    }
    for (;;)
    {
      return this.d;
      this.d = null;
    }
  }
  
  abstract View b(int paramInt);
  
  abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  final MenuInflater c()
  {
    if (this.e == null) {
      this.e = new d(j());
    }
    return this.e;
  }
  
  abstract void d();
  
  abstract void e();
  
  abstract void f();
  
  abstract void g();
  
  abstract boolean h();
  
  protected final String i()
  {
    String str = null;
    try
    {
      ActivityInfo localActivityInfo = this.a.getPackageManager().getActivityInfo(this.a.getComponentName(), 128);
      if (localActivityInfo.metaData != null) {
        str = localActivityInfo.metaData.getString("android.support.UI_OPTIONS");
      }
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("ActionBarActivityDelegate", "getUiOptionsFromMetadata: Activity '" + this.a.getClass().getSimpleName() + "' not in manifest");
    }
    return null;
  }
  
  protected final Context j()
  {
    Object localObject = this.a;
    a locala = b();
    if (locala != null) {
      localObject = locala.e();
    }
    return (Context)localObject;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */