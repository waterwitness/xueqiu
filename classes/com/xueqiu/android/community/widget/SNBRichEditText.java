package com.xueqiu.android.community.widget;

import android.content.Context;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ImageSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.widget.TextView.BufferType;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ak;
import com.xueqiu.android.common.widget.SnowBallEditText;
import java.util.Locale;

public class SNBRichEditText
  extends SnowBallEditText
{
  public boolean c = false;
  private int d;
  private b e;
  
  public SNBRichEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public SNBRichEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SNBRichEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int getCurrentSpanBegin()
  {
    return this.d;
  }
  
  public Editable getHtmlText()
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(super.getText());
    Object localObject1 = (ImageSpan[])localSpannableStringBuilder.getSpans(0, localSpannableStringBuilder.length(), ImageSpan.class);
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    String str;
    int k;
    int m;
    while (i < j)
    {
      localObject2 = localObject1[i];
      str = ((ImageSpan)localObject2).getSource();
      k = localSpannableStringBuilder.getSpanStart(localObject2);
      m = localSpannableStringBuilder.getSpanEnd(localObject2);
      if ((k >= 0) && (m >= 0))
      {
        localSpannableStringBuilder.delete(k, m);
        localSpannableStringBuilder.insert(k, str);
      }
      i += 1;
    }
    localObject1 = (StyleSpan[])localSpannableStringBuilder.getSpans(0, localSpannableStringBuilder.length(), StyleSpan.class);
    j = localObject1.length;
    i = 0;
    if (i < j)
    {
      localObject2 = localObject1[i];
      k = localSpannableStringBuilder.getSpanStart(localObject2);
      m = localSpannableStringBuilder.getSpanEnd(localObject2);
      if ((k >= 0) && (m >= 0))
      {
        str = localSpannableStringBuilder.subSequence(k, m).toString();
        localSpannableStringBuilder.delete(k, m);
        if (((StyleSpan)localObject2).getStyle() != 1) {
          break label226;
        }
        localSpannableStringBuilder.insert(k, String.format(Locale.CHINA, "<b>%s</b>", new Object[] { str }));
      }
      for (;;)
      {
        i += 1;
        break;
        label226:
        if (((StyleSpan)localObject2).getStyle() == 2) {
          localSpannableStringBuilder.insert(k, String.format(Locale.CHINA, "<i>%s</i>", new Object[] { str }));
        } else if (((StyleSpan)localObject2).getStyle() == 3) {
          localSpannableStringBuilder.insert(k, String.format(Locale.CHINA, "<b><i>%s</i></b>", new Object[] { str }));
        }
      }
    }
    localObject1 = (ak[])localSpannableStringBuilder.getSpans(0, localSpannableStringBuilder.length(), ak.class);
    j = localObject1.length;
    i = 0;
    while (i < j)
    {
      localObject2 = localObject1[i];
      k = localSpannableStringBuilder.getSpanStart(localObject2);
      m = localSpannableStringBuilder.getSpanEnd(localObject2);
      if ((k >= 0) && (m >= 0))
      {
        str = localSpannableStringBuilder.subSequence(k, m).toString();
        localSpannableStringBuilder.delete(k, m);
        localSpannableStringBuilder.insert(k, String.format(Locale.CHINA, " <a href=\"%s\" target=\"_blank\">%s</a> ", new Object[] { ((ak)localObject2).getURL(), str }));
      }
      i += 1;
    }
    return localSpannableStringBuilder;
  }
  
  protected void onSelectionChanged(int paramInt1, int paramInt2)
  {
    if (this.e != null) {
      this.e.a(paramInt1);
    }
    super.onSelectionChanged(paramInt1, paramInt2);
  }
  
  public void setCurrentSpanBegin(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void setHeader(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void setListener(b paramb)
  {
    this.e = paramb;
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\SNBRichEditText.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */