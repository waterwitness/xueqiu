package com.xueqiu.android.base.h5;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.widget.SNBWebView;

public class H5Activity
  extends com.xueqiu.android.common.b
{
  public String j = "";
  boolean k = false;
  private boolean p;
  
  private c j()
  {
    return (c)c().a(2131623960);
  }
  
  public final boolean d()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getIntent() != null)
    {
      bool1 = bool2;
      if (getIntent().getBooleanExtra("extra_from_ad", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getKeyCode() == 4))
    {
      c localc = j();
      if (localc.e.canGoBack()) {
        localc.e.goBack();
      }
      for (int i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (j().A()) {
      return true;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void finish()
  {
    if ((d()) && (isTaskRoot())) {
      startActivity(new Intent(this, MainActivity.class));
    }
    super.finish();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!j().y_()) {
      super.onBackPressed();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = new FrameLayout(this);
    ((FrameLayout)localObject).setId(2131623960);
    setContentView((View)localObject);
    this.j = getIntent().getStringExtra("extra_url");
    this.p = getIntent().getBooleanExtra("extra_is_module", true);
    localObject = (b)getIntent().getParcelableExtra("extra_event");
    if (paramBundle == null)
    {
      paramBundle = c().a();
      paramBundle.a(2131623960, c.a(this.j, (b)localObject, this.p));
      paramBundle.d();
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    if ((d()) && (this.k)) {
      finish();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\H5Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */