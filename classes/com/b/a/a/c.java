package com.b.a.a;

import android.app.Dialog;
import android.content.Context;
import android.widget.Toast;

public final class c
{
  private static Dialog a = null;
  private static Toast b = null;
  
  public static void a()
  {
    if ((a != null) && (a.isShowing()))
    {
      a.dismiss();
      a = null;
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    if (b == null) {
      b = Toast.makeText(paramContext, paramString, 0);
    }
    for (;;)
    {
      b.setGravity(17, 0, 0);
      b.show();
      return;
      b.setText(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */