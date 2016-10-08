package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import java.util.Locale;

public class UpdateDialogActivity
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903255);
    paramBundle = getIntent().getStringExtra("extra_update_content");
    final String str1 = getIntent().getStringExtra("extra_download_url");
    boolean bool = getIntent().getBooleanExtra("extra_is_gray_update", false);
    String str2 = getIntent().getStringExtra("extra_version");
    TextView localTextView1 = (TextView)findViewById(2131624790);
    TextView localTextView2 = (TextView)findViewById(2131624791);
    TextView localTextView3 = (TextView)findViewById(2131624789);
    ImageView localImageView = (ImageView)findViewById(2131624792);
    if (str2 == null) {
      localTextView3.setVisibility(8);
    }
    for (;;)
    {
      localTextView1.setText(paramBundle);
      localTextView2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          UpdateDialogActivity.a(UpdateDialogActivity.this, str1);
          UpdateDialogActivity.this.finish();
        }
      });
      localImageView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          UpdateDialogActivity.this.finish();
        }
      });
      if (!bool) {
        DefaultPrefs.putLong("android_apk_version_cancel_time", System.currentTimeMillis(), this);
      }
      return;
      localTextView3.setVisibility(0);
      localTextView3.setText(String.format(Locale.CHINA, "V %s", new Object[] { str2 }));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\UpdateDialogActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */