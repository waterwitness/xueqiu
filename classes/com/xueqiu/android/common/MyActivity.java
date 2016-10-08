package com.xueqiu.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v4.content.r;
import android.widget.FrameLayout;
import com.xueqiu.android.base.util.v;

public class MyActivity
  extends b
{
  private static boolean j;
  private BroadcastReceiver k = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      MyActivity.this.finish();
    }
  };
  
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
    v.a("elvis", "MyActivity (Not Fragment) onBackPressed" + j);
    if (j)
    {
      Intent localIntent = new Intent(this, MainActivity.class);
      localIntent.setFlags(67108864);
      startActivity(localIntent);
      overridePendingTransition(2130968596, 2130968599);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null)
    {
      paramBundle = m.u();
      Bundle localBundle = new Bundle();
      localBundle.putInt("followers", getIntent().getIntExtra("followers", 0));
      paramBundle.e(localBundle);
      c().a().a(localFrameLayout.getId(), paramBundle).d();
    }
    setContentView(localFrameLayout);
    paramBundle = new IntentFilter();
    paramBundle.addAction("com.xueqiu.android.intent.action.LOGGED_OUT");
    r.a(this).a(this.k, paramBundle);
  }
  
  protected void onDestroy()
  {
    if (this.k != null) {
      r.a(getApplicationContext()).a(this.k);
    }
    super.onDestroy();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\MyActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */