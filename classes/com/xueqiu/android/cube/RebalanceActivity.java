package com.xueqiu.android.cube;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.cube.b.g;
import com.xueqiu.android.cube.b.h;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.Holding;

public class RebalanceActivity
  extends com.xueqiu.android.common.b
  implements g, com.xueqiu.android.cube.b.i
{
  private h j;
  private boolean k;
  
  public final void a(Holding paramHolding, int paramInt)
  {
    this.j.a(paramHolding, paramInt);
  }
  
  public void onBackPressed()
  {
    int i = 1;
    if (this.j != null)
    {
      h localh = this.j;
      if (localh.a) {}
      while (i == 0)
      {
        new AlertDialog.Builder(this).setTitle(2131166243).setNegativeButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if ((RebalanceActivity.b(RebalanceActivity.this) != null) && (RebalanceActivity.b(RebalanceActivity.this).d)) {
              RebalanceActivity.this.setResult(-1);
            }
            RebalanceActivity.this.finish();
          }
        }).setPositiveButton(2131166240, null).show();
        return;
        if (localh.b.isSellFlag())
        {
          if ((localh.E()) || (localh.D())) {
            i = 0;
          }
        }
        else if (localh.E()) {
          i = 0;
        }
      }
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = new FrameLayout(this);
    ((FrameLayout)localObject).setId(2131623960);
    setContentView((View)localObject, new FrameLayout.LayoutParams(-1, -1));
    localObject = (Cube)getIntent().getParcelableExtra("extra_cube");
    String str = getIntent().getStringExtra("extra_cube_symbol");
    this.k = getIntent().getBooleanExtra("extra_readonly", false);
    if ((localObject == null) && (au.a(str)))
    {
      v.d("RebalanceActivity", "no cube provided!");
      finish();
    }
    for (;;)
    {
      return;
      int i = getIntent().getIntExtra("extra_page_type", 1);
      if (paramBundle == null)
      {
        if (!au.a(str))
        {
          h();
          com.xueqiu.android.base.q.a().b().c(-1L, str, new p(this)
          {
            public final void a(y paramAnonymousy)
            {
              RebalanceActivity.this.i();
              aa.a(paramAnonymousy);
            }
          });
        }
        while (this.k)
        {
          com.xueqiu.android.base.util.b.a(this, 2131166451);
          return;
          this.j = h.a(this.k, false, (Cube)localObject);
          if (i == 2) {
            this.j.r.putInt("extra_page_type", 2);
          }
          c().a().a(2131623960, this.j).d();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\RebalanceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */