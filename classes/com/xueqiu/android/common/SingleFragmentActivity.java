package com.xueqiu.android.common;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.widget.FrameLayout;
import com.xueqiu.android.base.util.v;

public class SingleFragmentActivity
  extends b
{
  private static final String j = SingleFragmentActivity.class.getSimpleName();
  private c k;
  
  public static Intent a(Context paramContext, Class<? extends c> paramClass)
  {
    return a(paramContext, paramClass, null);
  }
  
  public static Intent a(Context paramContext, Class<? extends c> paramClass, Bundle paramBundle)
  {
    paramContext = new Intent(paramContext, SingleFragmentActivity.class);
    paramContext.putExtra("extra.fragment", paramClass);
    if (paramBundle != null) {
      paramContext.putExtra("extra.param", paramBundle);
    }
    return paramContext;
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public void onBackPressed()
  {
    if (!this.k.y_()) {
      super.onBackPressed();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new FrameLayout(this);
    paramBundle.setId(2131623963);
    setContentView(paramBundle);
    paramBundle = (Class)getIntent().getSerializableExtra("extra.fragment");
    String str = paramBundle.getName();
    v.a(j, "loadFragment tag = " + str + " clazz = " + paramBundle);
    this.k = ((c)c().a(str));
    if (this.k == null) {}
    try
    {
      this.k = ((c)paramBundle.newInstance());
      Bundle localBundle = getIntent().getBundleExtra("extra.param");
      paramBundle = localBundle;
      if (localBundle == null) {
        paramBundle = new Bundle();
      }
      if (this.k.r != null)
      {
        this.k.r.clear();
        this.k.r.putAll(paramBundle);
      }
      for (;;)
      {
        paramBundle = c().a();
        paramBundle.b(2131623963, this.k, str);
        paramBundle.e();
        return;
        this.k.e(paramBundle);
      }
      return;
    }
    catch (Exception paramBundle) {}
  }
  
  protected final Boolean w_()
  {
    return this.k.B();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\SingleFragmentActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */