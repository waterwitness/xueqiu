package com.xueqiu.android.common.widget;

import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.TextView.BufferType;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.v;

public class SnowBallEditText
  extends EditText
{
  private static final String c = SnowBallEditText.class.getSimpleName();
  public int a = -1;
  public int b = -1;
  private String d;
  
  public SnowBallEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public SnowBallEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SnowBallEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public Editable getPlainText()
  {
    int i = 0;
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(super.getText());
    ImageSpan[] arrayOfImageSpan = (ImageSpan[])localSpannableStringBuilder.getSpans(0, localSpannableStringBuilder.length(), ImageSpan.class);
    int j = arrayOfImageSpan.length;
    while (i < j)
    {
      ImageSpan localImageSpan = arrayOfImageSpan[i];
      String str = localImageSpan.getSource();
      int k = localSpannableStringBuilder.getSpanStart(localImageSpan);
      localSpannableStringBuilder.delete(k, localSpannableStringBuilder.getSpanEnd(localImageSpan));
      localSpannableStringBuilder.insert(k, str);
      i += 1;
    }
    return localSpannableStringBuilder;
  }
  
  public void onSelectionChanged(int paramInt1, int paramInt2)
  {
    v.a(c, "onSelectionChanged selStart = " + paramInt1 + " selEnd = " + paramInt2);
    if ((paramInt1 > this.a) && (paramInt1 <= this.b) && (paramInt2 > this.a) && (paramInt2 <= this.b))
    {
      if (this.b < getText().length())
      {
        setSelection(this.b);
        return;
      }
      setSelection(getText().length());
      return;
    }
    super.onSelectionChanged(paramInt1, paramInt2);
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    v.a(c, "onTextChanged text = " + paramCharSequence + " start = " + paramInt1 + " lengthBefor = " + paramInt2 + " lengthAfter = " + paramInt3);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
      return;
    }
    if (!TextUtils.isEmpty(this.d)) {
      if ((this.a != -1) || (this.b != -1)) {
        break label146;
      }
    }
    label146:
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        this.a = paramCharSequence.toString().indexOf(this.d);
        this.b = (this.a + this.d.length() - 1);
      }
      super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
      return;
    }
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    if ((!isInEditMode()) && (paramCharSequence != null) && (!(paramCharSequence instanceof Spanned)))
    {
      super.setText(ai.a(paramCharSequence, getContext(), false), paramBufferType);
      return;
    }
    super.setText(paramCharSequence, paramBufferType);
  }
  
  public void setUserName(String paramString)
  {
    this.d = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SnowBallEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */