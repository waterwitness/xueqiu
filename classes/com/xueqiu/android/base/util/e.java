package com.xueqiu.android.base.util;

import android.content.ClipData;
import android.content.Context;
import android.os.Build.VERSION;

public final class e
{
  public static void a(Context paramContext, CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      ((android.text.ClipboardManager)paramContext.getSystemService("clipboard")).setText(paramCharSequence);
      return;
    }
    ((android.content.ClipboardManager)paramContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text/plain", paramCharSequence));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */