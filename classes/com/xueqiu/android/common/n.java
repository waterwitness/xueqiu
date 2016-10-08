package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;
import java.util.ArrayList;
import java.util.Iterator;

public final class n
  extends FrameLayout
{
  ViewPager a;
  View b;
  Activity c;
  View d;
  int e = r.c(2131230917);
  int f = r.b(2131230916);
  int g = r.b(2131230915);
  private ArrayList<View> h = new ArrayList();
  private ArrayList<View> i = new ArrayList();
  private ArrayList<View> j = new ArrayList();
  
  public n(Context paramContext)
  {
    super(paramContext);
    this.c = ((Activity)paramContext);
    this.a = new ViewPager(getContext());
    this.b = new View(getContext());
    this.b.setAlpha(0.0F);
    this.b.setBackgroundColor(r.a(2131558619));
    this.b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        n.this.a();
      }
    });
    addView(this.b, new FrameLayout.LayoutParams(-1, -1));
  }
  
  private static int a(float paramFloat, String paramString)
  {
    Paint localPaint = new Paint();
    localPaint.setTextSize(paramFloat);
    return (int)localPaint.measureText(paramString);
  }
  
  private void d()
  {
    int k = 0;
    if ((k < 8) && (this.h.size() > k))
    {
      AnimationSet localAnimationSet = new AnimationSet(true);
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.8F, 0.0F);
      float f1;
      float f2;
      float f3;
      float f4;
      float f5;
      if (k < 4)
      {
        f1 = this.a.getWidth() / 2;
        f2 = ((View)this.h.get(k)).getX();
        f3 = ((View)this.h.get(k)).getWidth() / 2;
        f4 = this.a.getHeight() / 2;
        f5 = ((View)this.h.get(k)).getY();
      }
      for (TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, f1 - (f3 + f2), 0.0F, f4 - (((View)this.h.get(k)).getHeight() / 2 + f5));; localTranslateAnimation = new TranslateAnimation(0.0F, f1 - (f3 + f2), 0.0F, f4 - (((View)this.h.get(k)).getHeight() / 2 + f5)))
      {
        localAnimationSet.setFillAfter(true);
        localAnimationSet.setInterpolator(new AccelerateDecelerateInterpolator());
        localAnimationSet.setDuration(300L);
        localAnimationSet.addAnimation(localAlphaAnimation);
        localAnimationSet.addAnimation(localTranslateAnimation);
        localAnimationSet.setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            if (n.this.c != null)
            {
              n.this.c.finish();
              n.this.c.overridePendingTransition(2130968585, 2130968585);
            }
          }
          
          public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationStart(Animation paramAnonymousAnimation) {}
        });
        ((View)this.h.get(k)).startAnimation(localAnimationSet);
        k += 1;
        break;
        f1 = this.a.getWidth() / 2;
        f2 = ((View)this.h.get(k)).getX();
        f3 = ((View)this.h.get(k)).getWidth() / 2;
        f4 = this.a.getHeight() / 2;
        f5 = ((View)this.h.get(k)).getY();
      }
    }
  }
  
  private void e()
  {
    int k = 0;
    while ((k < 8) && (this.i.size() > k))
    {
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setFillAfter(true);
      localAlphaAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
      localAlphaAnimation.setDuration(300L);
      ((View)this.i.get(k)).startAnimation(localAlphaAnimation);
      k += 1;
    }
  }
  
  final void a()
  {
    if (this.d != null)
    {
      localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setFillAfter(true);
      localAlphaAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
      localAlphaAnimation.setDuration(300L);
      this.d.startAnimation(localAlphaAnimation);
    }
    e();
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setFillAfter(true);
    localAlphaAnimation.setDuration(300L);
    localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
    localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (n.this.c != null)
        {
          n.this.c.finish();
          n.this.c.overridePendingTransition(2130968585, 2130968585);
        }
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    this.b.startAnimation(localAlphaAnimation);
    d();
  }
  
  final void a(ArrayList<o> paramArrayList)
  {
    if (paramArrayList.size() == 0) {
      return;
    }
    int k = r.c(2131230914);
    if (paramArrayList.size() > 4) {}
    Object localObject1;
    Object localObject2;
    for (;;)
    {
      localObject1 = new FrameLayout.LayoutParams(-1, k, 17);
      addView(this.a, (ViewGroup.LayoutParams)localObject1);
      this.j.clear();
      this.h.clear();
      this.i.clear();
      localObject1 = paramArrayList.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (o)((Iterator)localObject1).next();
        ImageView localImageView = new ImageView(getContext());
        localImageView.setImageDrawable(((o)localObject2).a);
        localImageView.setAlpha(1.0F);
        localImageView.setOnClickListener(((o)localObject2).c);
        TextView localTextView = new TextView(getContext());
        localTextView.setAlpha(1.0F);
        localTextView.setGravity(17);
        localTextView.setMinWidth(((o)localObject2).a.getIntrinsicWidth());
        localTextView.setTag(Integer.valueOf(((o)localObject2).a.getIntrinsicWidth()));
        if (a(this.g, ((o)localObject2).b) > ((o)localObject2).a.getIntrinsicWidth())
        {
          localTextView.setMinWidth(a(this.g, ((o)localObject2).b));
          localTextView.setTag(Integer.valueOf(a(this.g, ((o)localObject2).b)));
        }
        localTextView.setText(((o)localObject2).b);
        localTextView.setOnClickListener(((o)localObject2).c);
        localTextView.setTextSize(0, this.g);
        localTextView.setTextColor(r.a(2131558524));
        this.i.add(localTextView);
        this.h.add(localImageView);
      }
      k /= 2;
    }
    int i1;
    int i2;
    int m;
    if (paramArrayList.size() % 8 == 0)
    {
      k = paramArrayList.size() / 8;
      i1 = r.h(2130838485).getIntrinsicWidth();
      i2 = (b.a().h() - i1 * 4) / 5;
      m = 0;
    }
    for (;;)
    {
      if (m >= k) {
        break label761;
      }
      paramArrayList = new FrameLayout(getContext());
      int n = 0;
      label381:
      if ((n < 8) && (this.h.size() >= (m + 1) * (n + 1)))
      {
        localObject1 = new FrameLayout.LayoutParams(-2, -2);
        localObject2 = new FrameLayout.LayoutParams(-2, -2);
        if (n < 4)
        {
          ((FrameLayout.LayoutParams)localObject1).gravity = 51;
          ((FrameLayout.LayoutParams)localObject1).leftMargin = ((i2 + i1) * n + i2);
          ((FrameLayout.LayoutParams)localObject1).topMargin = this.e;
          paramArrayList.addView((View)this.h.get((m + 1) * n), (ViewGroup.LayoutParams)localObject1);
          ((FrameLayout.LayoutParams)localObject2).gravity = 51;
          ((FrameLayout.LayoutParams)localObject2).leftMargin = ((i2 + i1) * n + i2 - (((Integer)((TextView)this.i.get(n)).getTag()).intValue() - i1) / 2);
          ((FrameLayout.LayoutParams)localObject2).topMargin = (this.e + i1 + this.f);
          paramArrayList.addView((View)this.i.get((m + 1) * n), (ViewGroup.LayoutParams)localObject2);
        }
        for (;;)
        {
          n += 1;
          break label381;
          k = paramArrayList.size() / 8 + 1;
          break;
          ((FrameLayout.LayoutParams)localObject1).gravity = 83;
          ((FrameLayout.LayoutParams)localObject1).leftMargin = ((n - 4) * (i2 + i1) + i2);
          ((FrameLayout.LayoutParams)localObject1).bottomMargin = (this.e + this.f + this.g);
          paramArrayList.addView((View)this.h.get((m + 1) * n), (ViewGroup.LayoutParams)localObject1);
          ((FrameLayout.LayoutParams)localObject2).gravity = 83;
          ((FrameLayout.LayoutParams)localObject2).leftMargin = ((n - 4) * (i2 + i1) + i2 - (((Integer)((TextView)this.i.get(n)).getTag()).intValue() - i1) / 2);
          ((FrameLayout.LayoutParams)localObject2).bottomMargin = this.e;
          paramArrayList.addView((View)this.i.get((m + 1) * n), (ViewGroup.LayoutParams)localObject2);
        }
      }
      this.j.add(paramArrayList);
      m += 1;
    }
    label761:
    this.a.setAdapter(new p(this));
  }
  
  final void b()
  {
    int k = 0;
    if ((k < 8) && (this.h.size() > k))
    {
      final View localView = (View)this.h.get(k);
      AnimationSet localAnimationSet = new AnimationSet(true);
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      float f1;
      float f2;
      float f3;
      float f4;
      float f5;
      if (k < 4)
      {
        f1 = this.a.getWidth() / 2;
        f2 = ((View)this.h.get(k)).getX();
        f3 = ((View)this.h.get(k)).getWidth() / 2;
        f4 = this.a.getHeight() / 2;
        f5 = ((View)this.h.get(k)).getY();
      }
      for (TranslateAnimation localTranslateAnimation = new TranslateAnimation(f1 - (f3 + f2), 0.0F, f4 - (((View)this.h.get(k)).getHeight() / 2 + f5), 0.0F);; localTranslateAnimation = new TranslateAnimation(f1 - (f3 + f2), 0.0F, f4 - (((View)this.h.get(k)).getHeight() / 2 + f5), 0.0F))
      {
        localAnimationSet.setFillAfter(true);
        localAnimationSet.setInterpolator(new OvershootInterpolator());
        localAnimationSet.setDuration(300L);
        localAnimationSet.addAnimation(localAlphaAnimation);
        localAnimationSet.addAnimation(localTranslateAnimation);
        localAnimationSet.setAnimationListener(new Animation.AnimationListener()
        {
          public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public final void onAnimationStart(Animation paramAnonymousAnimation)
          {
            localView.setAlpha(1.0F);
          }
        });
        localView.startAnimation(localAnimationSet);
        k += 1;
        break;
        f1 = this.a.getWidth() / 2;
        f2 = ((View)this.h.get(k)).getX();
        f3 = ((View)this.h.get(k)).getWidth() / 2;
        f4 = this.a.getHeight() / 2;
        f5 = ((View)this.h.get(k)).getY();
      }
    }
  }
  
  final void c()
  {
    int k = 0;
    while ((k < 8) && (this.i.size() > k))
    {
      final View localView = (View)this.i.get(k);
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setFillAfter(true);
      localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
      localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation)
        {
          localView.setAlpha(1.0F);
        }
      });
      localAlphaAnimation.setDuration(300L);
      localView.startAnimation(localAlphaAnimation);
      k += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */