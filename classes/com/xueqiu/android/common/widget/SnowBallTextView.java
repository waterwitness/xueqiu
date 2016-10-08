package com.xueqiu.android.common.widget;

import android.content.Context;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.v;

public class SnowBallTextView
  extends TextView
{
  public SnowBallTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SnowBallTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SnowBallTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((getSelectionStart() != getSelectionEnd()) && (paramMotionEvent.getActionMasked() == 0))
    {
      CharSequence localCharSequence = getText();
      setText(null);
      setText(localCharSequence);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    Object localObject = getText();
    if ((localObject instanceof Spanned))
    {
      localObject = (Spanned)localObject;
      int i = paramMotionEvent.getAction();
      if ((i == 1) || (i == 0))
      {
        int j = (int)paramMotionEvent.getX();
        int k = (int)paramMotionEvent.getY();
        int m = getTotalPaddingLeft();
        int n = getTotalPaddingTop();
        int i1 = getScrollX();
        int i2 = getScrollY();
        Layout localLayout = getLayout();
        j = localLayout.getOffsetForHorizontal(localLayout.getLineForVertical(k - n + i2), j - m + i1);
        localObject = (ClickableSpan[])((Spanned)localObject).getSpans(j, j + 1, ClickableSpan.class);
        if (localObject.length != 0)
        {
          if (i == 1) {
            localObject[0].onClick(this);
          }
          return true;
        }
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    Object localObject = paramCharSequence;
    try
    {
      if (!isInEditMode())
      {
        localObject = paramCharSequence;
        if (!TextUtils.isEmpty(paramCharSequence))
        {
          localObject = paramCharSequence;
          if (!(paramCharSequence instanceof Spanned)) {
            localObject = ai.a(paramCharSequence, getContext(), true);
          }
        }
      }
      super.setText((CharSequence)localObject, paramBufferType);
      return;
    }
    catch (Exception paramCharSequence)
    {
      super.setText("", paramBufferType);
      v.a("SnowBallTextView", paramCharSequence.getMessage());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SnowBallTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */