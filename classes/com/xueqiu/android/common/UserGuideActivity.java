package com.xueqiu.android.common;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v7.a.a;
import android.support.v7.a.g;
import android.view.Window;
import android.widget.LinearLayout;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.RequestResult;

public class UserGuideActivity
  extends b
{
  private static final String j = UserGuideActivity.class.getSimpleName();
  private i k;
  private y p;
  private f q;
  private android.support.v4.a.q r;
  private LinearLayout s;
  
  private void k()
  {
    v.c(j, "showInterestedTopicFragment");
    ac localac = this.r.a();
    localac.b();
    if (!this.k.j())
    {
      localac.a(2131624366, this.k, aa.a.d).c(this.p).d(this.k).d();
      return;
    }
    localac.c(this.p).d(this.k).d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    v.a(j, "onCreate");
    super.onCreate(paramBundle);
    this.i.b().d();
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    if (!DefaultPrefs.getBoolean("has_visited_user_guide", false, this)) {
      DefaultPrefs.putBoolean("has_visited_user_guide", true, this);
    }
    this.r = c();
    setContentView(2130903123);
    this.s = ((LinearLayout)findViewById(2131624365));
    this.k = new i();
    paramBundle = new j()
    {
      public final void a(String paramAnonymousString, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean)
        {
          ai localai = UserGuideActivity.g();
          p localp = UserGuideActivity.a(UserGuideActivity.this);
          localai.h.e(paramAnonymousString, localp);
        }
        UserGuideActivity.b(UserGuideActivity.this);
      }
    };
    this.k.a = paramBundle;
    paramBundle = new z()
    {
      public final void a()
      {
        UserGuideActivity.c(UserGuideActivity.this).setVisibility(8);
        UserGuideActivity.d(UserGuideActivity.this);
      }
      
      public final void b()
      {
        UserGuideActivity.e(UserGuideActivity.this);
      }
    };
    this.p = new y();
    this.p.a = paramBundle;
    this.q = new f();
    k();
  }
  
  public void overridePendingTransition(int paramInt1, int paramInt2)
  {
    super.overridePendingTransition(2130968598, 2130968584);
  }
  
  protected final Boolean w_()
  {
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\UserGuideActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */