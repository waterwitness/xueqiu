package com.xueqiu.android.common.widget;

import android.content.Context;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class AutoResizeTextView
  extends TextView
{
  private c a;
  private boolean b = false;
  private float c = getTextSize();
  private float d = 0.0F;
  private float e = 10.0F;
  private float f = 1.0F;
  private float g = 0.0F;
  private boolean h = true;
  
  public AutoResizeTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    CharSequence localCharSequence = getText();
    if ((localCharSequence == null) || (localCharSequence.length() == 0) || (paramInt2 <= 0) || (paramInt1 <= 0) || (this.c == 0.0F)) {
      return;
    }
    TextPaint localTextPaint = getPaint();
    localTextPaint.getTextSize();
    float f1;
    if (this.d > 0.0F) {
      f1 = Math.min(this.c, this.d);
    }
    Object localObject;
    int i;
    for (;;)
    {
      localObject = new TextPaint(localTextPaint);
      ((TextPaint)localObject).setTextSize(f1);
      i = new StaticLayout(localCharSequence, (TextPaint)localObject, paramInt1, Layout.Alignment.ALIGN_NORMAL, this.f, this.g, true).getHeight();
      if ((i <= paramInt2) || (f1 <= this.e)) {
        break;
      }
      f1 = Math.max(f1 - 2.0F, this.e);
      continue;
      f1 = this.c;
    }
    int j;
    if ((this.h) && (f1 == this.e) && (i > paramInt2))
    {
      localObject = new StaticLayout(localCharSequence, new TextPaint(localTextPaint), paramInt1, Layout.Alignment.ALIGN_NORMAL, this.f, this.g, false);
      if (((StaticLayout)localObject).getLineCount() > 0)
      {
        j = ((StaticLayout)localObject).getLineForVertical(paramInt2) - 1;
        if (j >= 0) {
          break label263;
        }
        setText("");
      }
    }
    for (;;)
    {
      setTextSize(0, f1);
      setLineSpacing(this.g, this.f);
      this.b = false;
      return;
      label263:
      i = ((StaticLayout)localObject).getLineStart(j);
      paramInt2 = ((StaticLayout)localObject).getLineEnd(j);
      float f2 = ((StaticLayout)localObject).getLineWidth(j);
      float f3 = localTextPaint.measureText("...");
      while (paramInt1 < f2 + f3)
      {
        paramInt2 -= 1;
        f2 = localTextPaint.measureText(localCharSequence.subSequence(i, paramInt2 + 1).toString());
      }
      setText(localCharSequence.subSequence(0, paramInt2) + "...");
    }
  }
  
  public final void a()
  {
    if (this.c > 0.0F)
    {
      super.setTextSize(0, this.c);
      this.d = this.c;
    }
  }
  
  public final void b()
  {
    int i = getHeight();
    int j = getPaddingBottom();
    int k = getPaddingTop();
    a(getWidth() - getPaddingLeft() - getPaddingRight(), i - j - k);
  }
  
  public boolean getAddEllipsis()
  {
    return this.h;
  }
  
  public float getMaxTextSize()
  {
    return this.d;
  }
  
  public float getMinTextSize()
  {
    return this.e;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramBoolean) || (this.b)) {
      a(paramInt3 - paramInt1 - getCompoundPaddingLeft() - getCompoundPaddingRight(), paramInt4 - paramInt2 - getCompoundPaddingBottom() - getCompoundPaddingTop());
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      this.b = true;
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = true;
    a();
  }
  
  public void setAddEllipsis(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    super.setLineSpacing(paramFloat1, paramFloat2);
    this.f = paramFloat2;
    this.g = paramFloat1;
  }
  
  public void setMaxTextSize(float paramFloat)
  {
    this.d = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setMinTextSize(float paramFloat)
  {
    this.e = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setOnResizeListener(c paramc)
  {
    this.a = paramc;
  }
  
  public void setTextSize(float paramFloat)
  {
    super.setTextSize(paramFloat);
    this.c = getTextSize();
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    super.setTextSize(paramInt, paramFloat);
    this.c = getTextSize();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\AutoResizeTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */