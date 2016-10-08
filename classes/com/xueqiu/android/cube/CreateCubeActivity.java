package com.xueqiu.android.cube;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.widget.ProgressBar;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.cube.b.e;
import com.xueqiu.android.cube.b.h;
import com.xueqiu.android.cube.b.k;
import com.xueqiu.android.cube.b.l;
import com.xueqiu.android.cube.model.Holding;
import java.util.ArrayList;
import java.util.List;

public class CreateCubeActivity
  extends com.xueqiu.android.common.b
  implements e, com.xueqiu.android.cube.b.g, com.xueqiu.android.cube.b.i, l
{
  private ProgressBar j;
  private ViewPager k;
  private List<android.support.v4.a.i> p;
  private boolean q = false;
  private String r;
  
  private void j()
  {
    if ((this.r != null) && (this.r.length() > 0)) {
      aa.a(this.r);
    }
  }
  
  public final void a(Holding paramHolding, int paramInt)
  {
    ((h)this.p.get(2)).a(paramHolding, paramInt);
  }
  
  public final void b(String paramString)
  {
    this.k.a(2, true);
    ((h)this.p.get(2)).r.putString("arg_market", paramString);
  }
  
  public final void c(String paramString)
  {
    if (!this.q)
    {
      j();
      return;
    }
    this.k.a(1, true);
    ((h)this.p.get(2)).r.putString("arg_name", paramString);
  }
  
  public void onBackPressed()
  {
    if (this.k.getCurrentItem() == 2)
    {
      h localh = (h)this.p.get(2);
      if ((localh.c == null) || (localh.c.a.size() == 0)) {}
      for (int i = 1; i == 0; i = 0)
      {
        new AlertDialog.Builder(this).setTitle(2131166244).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            CreateCubeActivity.e(CreateCubeActivity.this).a(CreateCubeActivity.e(CreateCubeActivity.this).getCurrentItem() - 1, true);
            com.xueqiu.android.base.util.b.a(CreateCubeActivity.this.getBaseContext(), 2131166445);
          }
        }).show();
        return;
      }
      this.k.a(this.k.getCurrentItem() - 1, true);
      return;
    }
    if (this.k.getCurrentItem() > 0)
    {
      this.k.a(this.k.getCurrentItem() - 1, true);
      return;
    }
    new AlertDialog.Builder(this).setTitle(2131166242).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        com.xueqiu.android.base.util.b.a(CreateCubeActivity.this.getBaseContext(), 2131166444);
        CreateCubeActivity.this.finish();
      }
    }).show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903096);
    this.j = ((ProgressBar)findViewById(2131624311));
    this.k = ((ViewPager)findViewById(2131624310));
    this.k.setEnabled(false);
    this.p = new ArrayList();
    this.p.add(com.xueqiu.android.cube.b.d.b(""));
    this.p.add(k.u());
    this.p.add(h.a(false, true, null));
    this.k.setAdapter(new c(this, c()));
    this.k.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        CreateCubeActivity.a(CreateCubeActivity.this).setProgress(paramAnonymousInt + 1);
        if ((paramAnonymousInt != 2) && (CreateCubeActivity.b(CreateCubeActivity.this) != null) && (CreateCubeActivity.b(CreateCubeActivity.this).get(2) != null))
        {
          h localh = (h)CreateCubeActivity.b(CreateCubeActivity.this).get(2);
          localh.c.a.clear();
          localh.C();
          localh.u();
        }
        if (paramAnonymousInt == 1) {
          paramAnonymousInt = 2131166041;
        }
        for (;;)
        {
          if (CreateCubeActivity.this.i.b() != null) {
            CreateCubeActivity.this.i.b().b(paramAnonymousInt);
          }
          return;
          if (paramAnonymousInt == 2) {
            paramAnonymousInt = 2131165914;
          } else {
            paramAnonymousInt = 2131165383;
          }
        }
      }
    });
    paramBundle = com.xueqiu.android.base.q.a().b();
    p local2 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    paramBundle.l.b(local2);
  }
  
  protected final Boolean w_()
  {
    if (this.k.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CreateCubeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */