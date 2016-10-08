package com.xueqiu.android.community.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ay;

public class TransparentHeader
  extends FrameLayout
{
  public static final int a = r.c(2131230927);
  private final TextView b;
  private ImageButton c;
  private final Context d;
  private Bitmap e;
  
  public TransparentHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d = paramContext;
    this.b = new TextView(this.d);
    this.b.setTextColor(-1);
    this.b.setTextSize(0, r.c(2131230970));
    this.b.setGravity(17);
    paramContext = new FrameLayout.LayoutParams(-1, -2, 17);
    paramContext.setMargins((int)ay.a(32.0F), 0, (int)ay.a(32.0F), 0);
    this.b.setLayoutParams(paramContext);
    this.b.setEllipsize(TextUtils.TruncateAt.END);
    this.b.setSingleLine(true);
    this.c = new ImageButton(this.d);
    this.c.setImageResource(2130838308);
    this.c.setScaleType(ImageView.ScaleType.FIT_XY);
    this.c.setBackgroundResource(2130838624);
    paramContext = new FrameLayout.LayoutParams(-2, -2, 19);
    int i = (int)ay.a(12.0F);
    this.c.setLayoutParams(paramContext);
    this.c.setPadding(i, i, i * 3, i);
    addView(this.c);
    addView(this.b);
    setClickable(true);
  }
  
  public final void a()
  {
    if (getBackground() != null) {
      getBackground().setAlpha(255);
    }
  }
  
  public final void b()
  {
    if (getBackground() != null) {
      getBackground().setAlpha(0);
    }
  }
  
  public ImageButton getBackButton()
  {
    return this.c;
  }
  
  public View getHeaderTitle()
  {
    return this.b;
  }
  
  public void setHeaderBackground(Bitmap paramBitmap)
  {
    this.e = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), (int)ay.a(48.0F) * paramBitmap.getWidth() / ay.c(this.d), null, false);
    paramBitmap = new BitmapDrawable(this.e);
    if (Build.VERSION.SDK_INT >= 16) {
      setBackground(paramBitmap);
    }
    for (;;)
    {
      setMinimumHeight((int)ay.a(48.0F));
      return;
      setBackgroundDrawable(paramBitmap);
    }
  }
  
  public void setTitle(String paramString)
  {
    int i = 3;
    int j;
    if (paramString != null)
    {
      this.b.setText(paramString);
      if (paramString.length() <= 14) {
        break label59;
      }
      j = (paramString.length() - 14) / 2;
      if (j <= 3) {
        break label71;
      }
    }
    for (;;)
    {
      this.b.setTextSize(20 - i);
      for (;;)
      {
        this.b.setAlpha(0.0F);
        return;
        label59:
        this.b.setTextSize(20.0F);
      }
      label71:
      i = j;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\TransparentHeader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */