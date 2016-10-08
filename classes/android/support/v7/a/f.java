package android.support.v7.a;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.a.ak;
import android.support.v4.a.ch;
import android.support.v4.a.ci;
import android.support.v4.a.k;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class f
  extends k
  implements ci, b
{
  public g i;
  
  private boolean d()
  {
    Object localObject = ak.a(this);
    if (localObject != null)
    {
      if (ak.a(this, (Intent)localObject))
      {
        localObject = ch.a(this);
        ((ch)localObject).a(this);
        ((ch)localObject).a();
      }
      for (;;)
      {
        try
        {
          android.support.v4.a.a.a(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        ak.b(this, localIllegalStateException);
      }
    }
    return false;
  }
  
  final void a(int paramInt)
  {
    super.setContentView(paramInt);
  }
  
  final void a(View paramView)
  {
    super.setContentView(paramView);
  }
  
  final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
  
  final boolean a(int paramInt, Menu paramMenu)
  {
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  final boolean a(int paramInt, MenuItem paramMenuItem)
  {
    return super.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  final boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  protected final boolean a(View paramView, Menu paramMenu)
  {
    g localg = this.i;
    if (Build.VERSION.SDK_INT < 16) {
      return localg.a.onPrepareOptionsMenu(paramMenu);
    }
    return localg.a.a(paramView, paramMenu);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.i.b(paramView, paramLayoutParams);
  }
  
  public final void b()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.b();
    }
    this.i.g();
  }
  
  final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addContentView(paramView, paramLayoutParams);
  }
  
  public final Intent b_()
  {
    return ak.a(this);
  }
  
  public MenuInflater getMenuInflater()
  {
    return this.i.c();
  }
  
  public void onBackPressed()
  {
    if (!this.i.h()) {
      super.onBackPressed();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.i.d();
  }
  
  public final void onContentChanged() {}
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 18) {
      localObject = new m(this);
    }
    for (;;)
    {
      this.i = ((g)localObject);
      super.onCreate(paramBundle);
      this.i.a(paramBundle);
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        localObject = new l(this);
      } else if (Build.VERSION.SDK_INT >= 14) {
        localObject = new j(this);
      } else if (Build.VERSION.SDK_INT >= 11) {
        localObject = new i(this);
      } else {
        localObject = new h(this);
      }
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    return this.i.a(paramInt, paramMenu);
  }
  
  public View onCreatePanelView(int paramInt)
  {
    if (paramInt == 0) {
      return this.i.b(paramInt);
    }
    return super.onCreatePanelView(paramInt);
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (this.i.a(paramInt, paramMenuItem)) {
      return true;
    }
    a locala = this.i.b();
    if ((paramMenuItem.getItemId() == 16908332) && (locala != null) && ((locala.b() & 0x4) != 0)) {
      return d();
    }
    return false;
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    this.i.f();
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    return this.i.a(paramInt, paramView, paramMenu);
  }
  
  public void onStop()
  {
    super.onStop();
    this.i.e();
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    this.i.a(paramCharSequence);
  }
  
  public void setContentView(int paramInt)
  {
    this.i.a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    this.i.a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.i.a(paramView, paramLayoutParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */