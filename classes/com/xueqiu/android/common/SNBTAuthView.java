package com.xueqiu.android.common;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.tencent.tauth.TAuthView;

public class SNBTAuthView
  extends TAuthView
{
  protected void onCreate(Bundle paramBundle)
  {
    try
    {
      super.onCreate(paramBundle);
      paramBundle = LayoutInflater.from(this).inflate(2130903071, null);
      paramBundle.findViewById(2131624165).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SNBTAuthView.this.finish();
        }
      });
      getRootView().addView(paramBundle, 0);
      return;
    }
    catch (Exception paramBundle)
    {
      finish();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\SNBTAuthView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */