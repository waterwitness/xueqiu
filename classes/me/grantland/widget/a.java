package me.grantland.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextWatcher;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.OnLayoutChangeListener;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

public final class a
{
  TextView a;
  float b;
  float c;
  float d;
  boolean e;
  ArrayList<Object> f;
  private TextPaint g;
  private float h;
  private int i;
  private boolean j;
  private TextWatcher k = new c(this, (byte)0);
  private View.OnLayoutChangeListener l = new b(this, (byte)0);
  
  private a(TextView paramTextView)
  {
    float f1 = paramTextView.getContext().getResources().getDisplayMetrics().scaledDensity;
    this.a = paramTextView;
    this.g = new TextPaint();
    b(paramTextView.getTextSize());
    int m = -1;
    TransformationMethod localTransformationMethod = paramTextView.getTransformationMethod();
    if ((localTransformationMethod != null) && ((localTransformationMethod instanceof SingleLineTransformationMethod))) {
      m = 1;
    }
    for (;;)
    {
      this.i = m;
      this.b = (8.0F * f1);
      this.c = this.h;
      this.d = 0.5F;
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        m = paramTextView.getMaxLines();
      }
    }
  }
  
  private static float a(CharSequence paramCharSequence, TextPaint paramTextPaint, float paramFloat1, int paramInt, float paramFloat2, float paramFloat3, float paramFloat4, DisplayMetrics paramDisplayMetrics)
  {
    float f1 = paramFloat2;
    paramFloat2 = (f1 + paramFloat3) / 2.0F;
    paramTextPaint.setTextSize(TypedValue.applyDimension(0, paramFloat2, paramDisplayMetrics));
    StaticLayout localStaticLayout;
    if (paramInt != 1) {
      localStaticLayout = new StaticLayout(paramCharSequence, paramTextPaint, (int)paramFloat1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
    }
    for (int m = localStaticLayout.getLineCount();; m = 1)
    {
      if (m > paramInt) {
        if (paramFloat3 - f1 >= paramFloat4) {}
      }
      float f3;
      while (paramFloat3 - f1 < paramFloat4)
      {
        return f1;
        paramFloat3 = paramFloat2;
        break;
        if (m < paramInt)
        {
          f1 = paramFloat2;
          break;
        }
        if (paramInt != 1) {
          break label140;
        }
        f3 = paramTextPaint.measureText(paramCharSequence, 0, paramCharSequence.length());
      }
      if (f3 > paramFloat1)
      {
        paramFloat3 = paramFloat2;
        break;
        label140:
        float f2 = 0.0F;
        int n = 0;
        for (;;)
        {
          f3 = f2;
          if (n >= m) {
            break;
          }
          f3 = f2;
          if (localStaticLayout.getLineWidth(n) > f2) {
            f3 = localStaticLayout.getLineWidth(n);
          }
          n += 1;
          f2 = f3;
        }
      }
      if (f3 < paramFloat1)
      {
        f1 = paramFloat2;
        break;
      }
      return paramFloat2;
      localStaticLayout = null;
    }
  }
  
  public static a a(TextView paramTextView, AttributeSet paramAttributeSet, int paramInt)
  {
    boolean bool = true;
    a locala = new a(paramTextView);
    if (paramAttributeSet != null)
    {
      paramTextView = paramTextView.getContext();
      int m = (int)locala.b;
      float f1 = locala.d;
      paramTextView = paramTextView.obtainStyledAttributes(paramAttributeSet, e.AutofitTextView, paramInt, 0);
      bool = paramTextView.getBoolean(e.AutofitTextView_sizeToFit, true);
      paramInt = paramTextView.getDimensionPixelSize(e.AutofitTextView_minTextSize, m);
      f1 = paramTextView.getFloat(e.AutofitTextView_precision, f1);
      paramTextView.recycle();
      locala.a(0, paramInt).a(f1);
    }
    locala.a(bool);
    return locala;
  }
  
  private void b()
  {
    if (this.f == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
  
  public final a a(float paramFloat)
  {
    if (this.d != paramFloat)
    {
      this.d = paramFloat;
      a();
    }
    return this;
  }
  
  public final a a(int paramInt)
  {
    if (this.i != paramInt)
    {
      this.i = paramInt;
      a();
    }
    return this;
  }
  
  public final a a(int paramInt, float paramFloat)
  {
    Context localContext = this.a.getContext();
    Resources localResources = Resources.getSystem();
    if (localContext != null) {
      localResources = localContext.getResources();
    }
    paramFloat = TypedValue.applyDimension(paramInt, paramFloat, localResources.getDisplayMetrics());
    if (paramFloat != this.b)
    {
      this.b = paramFloat;
      a();
    }
    return this;
  }
  
  public final a a(boolean paramBoolean)
  {
    if (this.j != paramBoolean)
    {
      this.j = paramBoolean;
      if (paramBoolean)
      {
        this.a.addTextChangedListener(this.k);
        this.a.addOnLayoutChangeListener(this.l);
        a();
      }
    }
    else
    {
      return this;
    }
    this.a.removeTextChangedListener(this.k);
    this.a.removeOnLayoutChangeListener(this.l);
    this.a.setTextSize(0, this.h);
    return this;
  }
  
  final void a()
  {
    float f4 = this.a.getTextSize();
    this.e = true;
    TextView localTextView = this.a;
    TextPaint localTextPaint = this.g;
    float f3 = this.b;
    float f1 = this.c;
    int m = this.i;
    float f2 = this.d;
    if ((m <= 0) || (m == Integer.MAX_VALUE)) {}
    int n;
    do
    {
      this.e = false;
      if (this.a.getTextSize() != f4) {
        b();
      }
      return;
      n = localTextView.getWidth() - localTextView.getPaddingLeft() - localTextView.getPaddingRight();
    } while (n <= 0);
    Object localObject2 = localTextView.getText();
    Object localObject3 = localTextView.getTransformationMethod();
    Object localObject1 = localObject2;
    if (localObject3 != null) {
      localObject1 = ((TransformationMethod)localObject3).getTransformation((CharSequence)localObject2, localTextView);
    }
    localObject3 = localTextView.getContext();
    localObject2 = Resources.getSystem();
    if (localObject3 != null) {
      localObject2 = ((Context)localObject3).getResources();
    }
    localObject2 = ((Resources)localObject2).getDisplayMetrics();
    localTextPaint.set(localTextView.getPaint());
    localTextPaint.setTextSize(f1);
    if ((m != 1) || (localTextPaint.measureText((CharSequence)localObject1, 0, ((CharSequence)localObject1).length()) <= n))
    {
      float f5 = n;
      localTextPaint.setTextSize(TypedValue.applyDimension(0, f1, (DisplayMetrics)localObject2));
      if (new StaticLayout((CharSequence)localObject1, localTextPaint, (int)f5, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true).getLineCount() <= m) {}
    }
    else
    {
      f1 = a((CharSequence)localObject1, localTextPaint, n, m, 0.0F, f1, f2, (DisplayMetrics)localObject2);
    }
    for (;;)
    {
      f2 = f1;
      if (f1 < f3) {
        f2 = f3;
      }
      localTextView.setTextSize(0, f2);
      break;
    }
  }
  
  final void b(float paramFloat)
  {
    if (this.h != paramFloat) {
      this.h = paramFloat;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\me\grantland\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */