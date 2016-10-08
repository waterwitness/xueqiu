package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.xueqiu.android.base.util.ag;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.h;

public class ShareActivity
  extends Activity
{
  boolean a = false;
  n b;
  private boolean c = false;
  private String d = "type_normal";
  private boolean e = false;
  
  public final void a()
  {
    if (this.c) {
      ag.c.a(new a()
      {
        public final void a()
        {
          android.support.v4.content.r.a(ShareActivity.this.getApplicationContext()).a(new Intent("action_share"));
        }
      }, 1L, TimeUnit.SECONDS);
    }
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (!this.a)
    {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          n localn = ShareActivity.this.b;
          com.xueqiu.android.base.util.v.a("solory", "  showInAnimation ");
          if (localn.d != null)
          {
            localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
            localAlphaAnimation.setFillAfter(true);
            localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
            localAlphaAnimation.setAnimationListener(new n.2(localn));
            localAlphaAnimation.setDuration(300L);
            localn.d.startAnimation(localAlphaAnimation);
          }
          localn.c();
          AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
          localAlphaAnimation.setFillAfter(true);
          localAlphaAnimation.setDuration(300L);
          localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
          localAlphaAnimation.setAnimationListener(new n.6(localn));
          localn.b.startAnimation(localAlphaAnimation);
          localn.b();
        }
      }, 10L);
      this.a = true;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = new n(this);
    if ((getIntent() != null) && (getIntent().getStringExtra("extra_type") != null)) {
      this.c = getIntent().getStringExtra("extra_type").equals("type_comment");
    }
    if (getIntent() != null) {
      this.e = getIntent().getBooleanExtra("extra_has_share_title", false);
    }
    Object localObject1 = Arrays.asList(getIntent().getStringArrayExtra("showItem"));
    paramBundle = new ArrayList();
    Object localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.a(2130838483, 2130838484);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166077);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.a();
          ShareActivity.this.finish();
        }
      }
    };
    if ((((List)localObject1).contains(getString(2131166083))) && (!this.c)) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.a(2130838476, 2130838477);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166074);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.b();
          ShareActivity.this.finish();
        }
      }
    };
    if ((((List)localObject1).contains(getString(2131166084))) && (!this.c)) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.a(2130838487, 2130838488);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166088);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.c();
          ShareActivity.this.a();
          ShareActivity.this.finish();
        }
      }
    };
    if (((List)localObject1).contains(getString(2131166086))) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.a(2130838478, 2130838479);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166089);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.d();
          ShareActivity.this.a();
          ShareActivity.this.finish();
        }
      }
    };
    if (((List)localObject1).contains(getString(2131166080))) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.a(2130838485, 2130838486);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166090);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.e();
          ShareActivity.this.a();
          ShareActivity.this.finish();
        }
      }
    };
    if (((List)localObject1).contains(getString(2131166087))) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.h(2130838482);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166076);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.f();
          ShareActivity.this.a();
          ShareActivity.this.finish();
        }
      }
    };
    if (((List)localObject1).contains(getString(2131166082))) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.h(2130838481);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166075);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.g();
          ShareActivity.this.finish();
        }
      }
    };
    if (!this.c) {
      paramBundle.add(localObject2);
    }
    localObject2 = new o();
    ((o)localObject2).a = com.xueqiu.android.base.r.h(2130838480);
    ((o)localObject2).b = com.xueqiu.android.base.r.d(2131166072);
    ((o)localObject2).c = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (w.a().a != null)
        {
          w.a().a.h();
          ShareActivity.this.finish();
        }
      }
    };
    if ((((List)localObject1).contains(getString(2131165376))) && (!this.c)) {
      paramBundle.add(localObject2);
    }
    int i;
    if ((this.c) && (this.e))
    {
      localObject1 = new ImageView(this);
      ((ImageView)localObject1).setImageDrawable(com.xueqiu.android.base.r.h(2130838475));
      ((ImageView)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          q.a("http://xueqiu.com/law/share-comment", ShareActivity.this);
        }
      });
      localObject2 = this.b;
      ((n)localObject2).d = ((View)localObject1);
      i = com.xueqiu.android.base.r.c(2131230914);
      if (paramBundle.size() > 4)
      {
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        localLayoutParams.setMargins(0, 0, 0, i);
        ((n)localObject2).addView((View)localObject1, localLayoutParams);
        ((n)localObject2).a(paramBundle);
      }
    }
    for (;;)
    {
      setContentView(this.b);
      return;
      i /= 2;
      break;
      this.b.a(paramBundle);
    }
  }
  
  protected void onDestroy()
  {
    w.a().a = null;
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      this.b.a();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\ShareActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */