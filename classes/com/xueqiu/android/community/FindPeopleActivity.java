package com.xueqiu.android.community;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.widget.FrameLayout;
import com.xueqiu.android.base.b.ap;
import com.xueqiu.android.base.b.h;
import com.xueqiu.android.common.b;

public class FindPeopleActivity
  extends b
{
  private int j = 0;
  private ap k = null;
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.k.a(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131165599);
    this.i.b().b(true);
    this.i.b().a(true);
    this.k = new ap(this, new h()
    {
      public final void a()
      {
        FindPeopleActivity.this.h();
        FindPeopleActivity.a(FindPeopleActivity.this).a(new com.xueqiu.android.base.b.i()
        {
          public final void a()
          {
            d.a((d)FindPeopleActivity.this.c().a("fragment"));
            FindPeopleActivity.this.i();
          }
        });
      }
    });
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null)
    {
      paramBundle = new d();
      paramBundle.e(getIntent().getExtras());
      c().a().a(localFrameLayout.getId(), paramBundle).d();
    }
    setContentView(localFrameLayout);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\FindPeopleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */