package com.xueqiu.android.base.util;

import android.text.InputFilter;
import android.text.Spanned;

public final class u
  implements InputFilter
{
  private int a;
  
  public u(int paramInt)
  {
    this.a = paramInt;
  }
  
  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    if (aw.a(paramSpanned) >= this.a) {
      return "";
    }
    paramInt2 = this.a;
    paramInt3 = aw.a(paramSpanned);
    paramInt1 = 0;
    while (paramInt1 < paramCharSequence.length())
    {
      if (aw.a(paramCharSequence.subSequence(0, paramInt1)) > paramInt2 - paramInt3) {
        return paramCharSequence.subSequence(0, paramInt1 - 1);
      }
      paramInt1 += 1;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */