package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.common.model.GuideTutorialType;

public class GuideTutorialActivity
  extends Activity
{
  private GuideTutorialType a;
  
  public void confirm(View paramView)
  {
    finish();
  }
  
  public void onBackPressed() {}
  
  public void onCreate(Bundle paramBundle)
  {
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    this.a = ((GuideTutorialType)getIntent().getSerializableExtra("extra_which_view"));
    paramBundle = getIntent().getIntArrayExtra("extra_view_click_position");
    setContentView(this.a.layoutRes());
    int i = 0;
    if (i < paramBundle.length)
    {
      final View localView;
      if (i == paramBundle.length - 1)
      {
        localView = findViewById(paramBundle[i]);
        if (localView != null) {
          localView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              GuideTutorialActivity.this.finish();
              GuideTutorialActivity.this.overridePendingTransition(2130968583, 2130968584);
            }
          });
        }
      }
      for (;;)
      {
        i += 1;
        break;
        localView = findViewById(paramBundle[i]);
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            localView.setVisibility(8);
            this.b.setVisibility(0);
          }
        });
      }
    }
  }
  
  protected void onDestroy()
  {
    UserPrefs.setBoolean(this, this.a.storeKey(), false);
    super.onDestroy();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    paramMotionEvent.getAction();
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\GuideTutorialActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */