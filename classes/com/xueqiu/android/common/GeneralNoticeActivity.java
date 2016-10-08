package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.d.a.a.a.b;
import com.d.a.b.f;
import com.xueqiu.android.base.a;
import com.xueqiu.android.base.a.9;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SNBEvent;
import java.io.File;

public class GeneralNoticeActivity
  extends Activity
  implements View.OnClickListener
{
  private static final String a = GeneralNoticeActivity.class.getSimpleName();
  private ImageView b;
  private ImageButton c;
  private RelativeLayout d;
  private long e = 0L;
  private String f = null;
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131624243: 
      paramView = new SNBEvent(3200, 1);
      i.a().a(paramView);
      q.a(this.f, this);
      a.a().f();
      finish();
      overridePendingTransition(0, 0);
      return;
    }
    paramView = new SNBEvent(3200, 3);
    i.a().a(paramView);
    a.a().f();
    finish();
    overridePendingTransition(0, 0);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getIntent() != null) {
      this.e = getIntent().getLongExtra("extra_notice_id", 0L);
    }
    v.a(a, "onCreate mNoticeId = " + this.e);
    setContentView(2130903083);
    this.d = ((RelativeLayout)findViewById(2131624242));
    this.d.setOnClickListener(this);
    this.b = ((ImageView)findViewById(2131624243));
    this.b.setOnClickListener(this);
    this.c = ((ImageButton)findViewById(2131624244));
    this.c.setOnClickListener(this);
    a.a();
    paramBundle = a.g();
    this.f = r.a(paramBundle, "link", null);
    paramBundle = r.a(paramBundle, "image", null);
    if (!c.a(paramBundle)) {}
    for (paramBundle = f.a().d().a(paramBundle);; paramBundle = null)
    {
      if (paramBundle != null) {}
      for (paramBundle = BitmapFactory.decodeFile(paramBundle.getAbsolutePath());; paramBundle = null)
      {
        this.b.setImageBitmap(paramBundle);
        paramBundle = new SNBEvent(3200, 1);
        i.a().a(paramBundle);
        paramBundle = a.a();
        long l = this.e;
        ai localai = com.xueqiu.android.base.q.a().b();
        u.a();
        localai.c(UserLogonDataPrefs.getLogonUserId(), l, new a.9(paramBundle));
        a.a().f();
        return;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\GeneralNoticeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */