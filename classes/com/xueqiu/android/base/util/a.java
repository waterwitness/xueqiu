package com.xueqiu.android.base.util;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.view.View;

public final class a
{
  public static Drawable a(Resources paramResources, @DrawableRes int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21) {
      return paramResources.getDrawable(paramInt);
    }
    return paramResources.getDrawable(paramInt, null);
  }
  
  public static void a(View paramView, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT < 16)
    {
      paramView.setBackgroundDrawable(paramDrawable);
      return;
    }
    paramView.setBackground(paramDrawable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */