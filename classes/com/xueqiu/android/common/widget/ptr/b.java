package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

public final class b
  extends FrameLayout
{
  final LinearLayout a;
  private final ImageView b;
  private final ProgressBar c;
  private final TextView d;
  private final RelativeLayout e;
  private String f;
  private String g;
  private String h;
  private final Animation i;
  private final Animation j;
  
  public b(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext);
    paramContext = (ViewGroup)LayoutInflater.from(paramContext).inflate(2130903588, this);
    this.e = ((RelativeLayout)paramContext.findViewById(2131625846));
    this.a = ((LinearLayout)paramContext.findViewById(2131625845));
    this.d = ((TextView)paramContext.findViewById(2131625848));
    this.b = ((ImageView)paramContext.findViewById(2131625850));
    this.c = ((ProgressBar)paramContext.findViewById(2131625849));
    paramContext = new LinearInterpolator();
    this.i = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.i.setInterpolator(paramContext);
    this.i.setDuration(150L);
    this.i.setFillAfter(true);
    this.j = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    this.j.setInterpolator(paramContext);
    this.j.setDuration(150L);
    this.j.setFillAfter(true);
    this.h = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    switch (paramInt)
    {
    default: 
      this.b.setImageResource(2130837883);
      return;
    }
    this.b.setImageResource(2130837883);
  }
  
  public final void a()
  {
    this.d.setText(this.f);
    this.b.setVisibility(0);
    this.c.setVisibility(8);
  }
  
  public final void b()
  {
    this.d.setText(this.h);
    this.b.clearAnimation();
    this.b.startAnimation(this.i);
  }
  
  public final void c()
  {
    this.d.setText(this.g);
    this.b.clearAnimation();
    this.b.setVisibility(4);
    this.c.setVisibility(0);
  }
  
  public final void d()
  {
    this.d.setText(this.f);
    this.b.clearAnimation();
    this.b.startAnimation(this.j);
  }
  
  public final View getOriginalHeader()
  {
    return this.e;
  }
  
  public final void setHeaderImage(Drawable paramDrawable)
  {
    this.b.setImageDrawable(paramDrawable);
  }
  
  public final void setHeaderProgress(Drawable paramDrawable)
  {
    this.c.setIndeterminateDrawable(paramDrawable);
  }
  
  public final void setPullLabel(String paramString)
  {
    this.f = paramString;
  }
  
  public final void setRefreshingLabel(String paramString)
  {
    this.g = paramString;
  }
  
  public final void setReleaseLabel(String paramString)
  {
    this.h = paramString;
  }
  
  public final void setTextColor(int paramInt)
  {
    this.d.setTextColor(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */