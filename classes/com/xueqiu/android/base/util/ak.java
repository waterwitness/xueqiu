package com.xueqiu.android.base.util;

import android.graphics.Color;
import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import com.xueqiu.android.common.q;

public class ak
  extends URLSpan
{
  private int a;
  
  public ak(String paramString, int paramInt)
  {
    super(paramString);
    this.a = paramInt;
  }
  
  public void onClick(View paramView)
  {
    q.a(getURL(), paramView.getContext());
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
    int i = Color.rgb(192, 162, 111);
    if (getURL().endsWith("paid_mention=1")) {
      this.a = i;
    }
    paramTextPaint.setColor(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */