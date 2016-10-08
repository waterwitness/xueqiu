package com.xueqiu.android.common.widget;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ay;

public class f
  extends Dialog
  implements View.OnClickListener
{
  public final Context a;
  public g b;
  public String c;
  public TextView d;
  public TextView e;
  public LinearLayout f;
  public int g;
  private FrameLayout h;
  private TextView i;
  private RelativeLayout j;
  private boolean k;
  private TextView l;
  private boolean m;
  
  public f(Context paramContext)
  {
    super(paramContext, 16973829);
    setOwnerActivity((Activity)paramContext);
    this.a = paramContext;
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903245);
    b();
  }
  
  public f(Context paramContext, g paramg)
  {
    super(paramContext, 16973829);
    setOwnerActivity((Activity)paramContext);
    this.a = paramContext;
    this.b = paramg;
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903245);
    b();
  }
  
  public static f a(Activity paramActivity, g paramg)
  {
    return new f(paramActivity, paramg);
  }
  
  private void b()
  {
    this.h = ((FrameLayout)findViewById(2131624758));
    this.h.setOnClickListener(this);
    this.h.setVisibility(0);
    this.k = true;
    this.f = ((LinearLayout)findViewById(2131624759));
    this.l = ((TextView)findViewById(2131624760));
    this.j = ((RelativeLayout)findViewById(2131624762));
    this.i = ((TextView)findViewById(2131624765));
    this.d = ((TextView)findViewById(2131624767));
    this.e = ((TextView)findViewById(2131624769));
  }
  
  public final f a()
  {
    findViewById(2131624763).setVisibility(8);
    return this;
  }
  
  public final f a(View paramView)
  {
    this.j.addView(paramView);
    this.j.setVisibility(0);
    return this;
  }
  
  public final f a(String paramString)
  {
    this.l.setVisibility(0);
    this.l.setText(paramString);
    return this;
  }
  
  public final f a(boolean paramBoolean)
  {
    this.m = paramBoolean;
    setCancelable(paramBoolean);
    return this;
  }
  
  public final f b(String paramString)
  {
    TextView localTextView = new TextView(this.a);
    localTextView.setTextColor(r.a(2130772257, this.a.getTheme()));
    localTextView.setTextSize(14.0F);
    localTextView.setLineSpacing(0.0F, 1.25F);
    localTextView.setText(paramString);
    if (this.g != 0)
    {
      localTextView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
      localTextView.setGravity(this.g);
    }
    paramString = new LinearLayout.LayoutParams(-1, -2);
    paramString.bottomMargin = ((int)ay.a(16.0F));
    paramString.topMargin = ((int)ay.a(12.0F));
    paramString.leftMargin = ((int)ay.a(20.0F));
    paramString.rightMargin = ((int)ay.a(20.0F));
    this.j.setLayoutParams(paramString);
    this.j.addView(localTextView);
    this.j.setVisibility(0);
    return this;
  }
  
  public final f c(String paramString)
  {
    findViewById(2131624764).setVisibility(0);
    this.i.setText(paramString);
    this.i.setVisibility(0);
    this.i.setOnClickListener(this);
    return this;
  }
  
  public final f d(String paramString)
  {
    findViewById(2131624764).setVisibility(0);
    findViewById(2131624768).setVisibility(0);
    this.e.setVisibility(0);
    this.e.setOnClickListener(this);
    this.e.setText(paramString);
    return this;
  }
  
  public void hide()
  {
    this.h.setVisibility(4);
  }
  
  public boolean isShowing()
  {
    return this.k;
  }
  
  public void onClick(View paramView)
  {
    if (this.b == null) {
      dismiss();
    }
    do
    {
      return;
      switch (paramView.getId())
      {
      default: 
        return;
      }
    } while (!this.m);
    dismiss();
    this.b.a(this, 3);
    return;
    dismiss();
    this.b.a(this, 0);
    return;
    dismiss();
    this.b.a(this, 1);
    return;
    dismiss();
    this.b.a(this, 2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */