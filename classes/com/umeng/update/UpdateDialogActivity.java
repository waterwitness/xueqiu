package com.umeng.update;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import java.io.File;
import u.a.a;
import u.a.c;

public class UpdateDialogActivity
  extends Activity
{
  int a = 6;
  UpdateResponse b;
  boolean c = false;
  File d = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool1 = true;
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(c.a(this).a("umeng_update_dialog", "layout"));
    this.b = ((UpdateResponse)getIntent().getExtras().getSerializable("response"));
    paramBundle = getIntent().getExtras().getString("file");
    boolean bool2 = getIntent().getExtras().getBoolean("force");
    int j;
    int k;
    final int m;
    int n;
    final int i1;
    int i2;
    int i3;
    Object localObject;
    if (paramBundle != null)
    {
      if (bool1) {
        this.d = new File(paramBundle);
      }
      j = c.a(this).a("umeng_update_content", "id");
      k = c.a(this).a("umeng_update_wifi_indicator", "id");
      m = c.a(this).a("umeng_update_id_ok", "id");
      n = c.a(this).a("umeng_update_id_cancel", "id");
      i1 = c.a(this).a("umeng_update_id_ignore", "id");
      i2 = c.a(this).a("umeng_update_id_close", "id");
      i3 = c.a(this).a("umeng_update_id_check", "id");
      paramBundle = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (m == paramAnonymousView.getId()) {
            UpdateDialogActivity.this.a = 5;
          }
          for (;;)
          {
            UpdateDialogActivity.this.finish();
            return;
            if (i1 == paramAnonymousView.getId()) {
              UpdateDialogActivity.this.a = 7;
            } else if (UpdateDialogActivity.this.c) {
              UpdateDialogActivity.this.a = 7;
            }
          }
        }
      };
      localObject = new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          UpdateDialogActivity.this.c = paramAnonymousBoolean;
        }
      };
      if (k > 0) {
        if (!a.c(this)) {
          break label341;
        }
      }
    }
    label341:
    for (int i = 8;; i = 0)
    {
      findViewById(k).setVisibility(i);
      if (bool2) {
        findViewById(i3).setVisibility(8);
      }
      findViewById(m).setOnClickListener(paramBundle);
      findViewById(n).setOnClickListener(paramBundle);
      findViewById(i1).setOnClickListener(paramBundle);
      findViewById(i2).setOnClickListener(paramBundle);
      ((CheckBox)findViewById(i3)).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)localObject);
      paramBundle = this.b.a(this, bool1);
      localObject = (TextView)findViewById(j);
      ((TextView)localObject).requestFocus();
      ((TextView)localObject).setText(paramBundle);
      return;
      bool1 = false;
      break;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    UmengUpdateAgent.a(this.a, this, this.b, this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UpdateDialogActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */