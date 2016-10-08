package com.xueqiu.android.base.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;

public final class ay
{
  private static final Paint a = new Paint(1);
  
  public static float a(float paramFloat)
  {
    b.a();
    return a(b.d(), paramFloat);
  }
  
  public static float a(Context paramContext, float paramFloat)
  {
    return TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }
  
  public static float a(CharSequence paramCharSequence, int paramInt, float paramFloat)
  {
    a.setTextSize(paramFloat);
    return a.measureText(paramCharSequence, 0, paramInt);
  }
  
  @SuppressLint({"NewApi"})
  public static int a(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 14)
    {
      Point localPoint = new Point();
      paramContext.getSize(localPoint);
      return localPoint.x;
    }
    return paramContext.getWidth();
  }
  
  public static Drawable a(String paramString, Resources paramResources)
  {
    return a(paramString, paramResources, paramResources.getDimensionPixelSize(2131231001));
  }
  
  public static Drawable a(String paramString, Resources paramResources, float paramFloat)
  {
    Paint localPaint1 = new Paint(1);
    Object localObject = new Rect();
    localPaint1.setTextSize(paramFloat);
    localPaint1.setColor(paramResources.getColor(2131558728));
    localPaint1.getTextBounds(paramString, 0, paramString.length(), (Rect)localObject);
    int n = (int)localPaint1.measureText(paramString);
    int i = ((Rect)localObject).height();
    int j = (int)(0.41666666F * paramFloat);
    int k = (int)(0.25F * paramFloat);
    int m = paramResources.getDimensionPixelSize(2131230997);
    n = Math.max(n + j * 2, m);
    int i1 = Math.max(k * 2 + i, m);
    localObject = Bitmap.createBitmap(n, i1, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas((Bitmap)localObject);
    Paint localPaint2 = new Paint(3);
    localPaint2.setColor(paramResources.getColor(2131558638));
    localCanvas.drawRoundRect(new RectF(0.0F, 0.0F, n, i1), m, m, localPaint2);
    localCanvas.drawText(paramString, j, i + k, localPaint1);
    paramString = new BitmapDrawable(paramResources, (Bitmap)localObject);
    paramString.setBounds(new Rect(0, 0, n, i1));
    return paramString;
  }
  
  private static void a(View paramView, int paramInt, Context paramContext)
  {
    paramContext = paramContext.getResources().getDrawable(paramInt);
    Rect localRect = new Rect();
    paramContext.getPadding(localRect);
    paramInt = paramView.getPaddingTop();
    int i = localRect.top;
    int j = paramView.getPaddingLeft();
    int k = localRect.left;
    int m = paramView.getPaddingRight();
    int n = localRect.right;
    int i1 = paramView.getPaddingBottom();
    int i2 = localRect.bottom;
    a.a(paramView, paramContext);
    paramView.setPadding(j + k, paramInt + i, m + n, i2 + i1);
  }
  
  public static void a(ViewGroup paramViewGroup, Context paramContext)
  {
    int m = paramViewGroup.getChildCount();
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      k = j;
      if (paramViewGroup.getChildAt(i).getVisibility() == 0) {
        k = j + 1;
      }
      i += 1;
    }
    TypedArray localTypedArray = paramContext.getTheme().obtainStyledAttributes(new int[] { 2130772209, 2130772211, 2130772207, 2130772205 });
    if (j == 1)
    {
      a(paramViewGroup.getChildAt(0), localTypedArray.getResourceId(0, 0), paramContext);
      localTypedArray.recycle();
      return;
    }
    i = 0;
    label114:
    View localView;
    if (i < m)
    {
      localView = paramViewGroup.getChildAt(i);
      if (i != 0) {
        break label153;
      }
      a(localView, localTypedArray.getResourceId(1, 0), paramContext);
    }
    for (;;)
    {
      i += 1;
      break label114;
      break;
      label153:
      if (i == paramViewGroup.getChildCount() - 1) {
        a(localView, localTypedArray.getResourceId(3, 0), paramContext);
      } else {
        a(localView, localTypedArray.getResourceId(2, 0), paramContext);
      }
    }
  }
  
  public static void a(String paramString, ImageView paramImageView)
  {
    if (paramImageView == null) {
      return;
    }
    if (paramString.length() > 0)
    {
      paramImageView.setImageDrawable(b(paramString, r.a()));
      paramImageView.setVisibility(0);
      return;
    }
    paramImageView.setVisibility(8);
  }
  
  @SuppressLint({"NewApi"})
  public static int b(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 14)
    {
      Point localPoint = new Point();
      paramContext.getSize(localPoint);
      return localPoint.y;
    }
    return paramContext.getHeight();
  }
  
  public static Drawable b(String paramString, Resources paramResources)
  {
    return a(paramString, paramResources, paramResources.getDimensionPixelSize(2131231000));
  }
  
  public static int c(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 13)
    {
      Point localPoint = new Point();
      paramContext.getSize(localPoint);
      return localPoint.x;
    }
    return paramContext.getWidth();
  }
  
  public static int d(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 13)
    {
      Point localPoint = new Point();
      paramContext.getSize(localPoint);
      return localPoint.y;
    }
    return paramContext.getHeight();
  }
  
  public static int e(Context paramContext)
  {
    int j = d(paramContext);
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(16843499, localTypedValue, true);
    int i = 0;
    int k = paramContext.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (k > 0) {
      i = paramContext.getResources().getDimensionPixelSize(k);
    }
    return j - i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */