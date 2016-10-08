package com.umeng.update.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class c
{
  private static float a = 1.0F;
  
  public c(Context paramContext)
  {
    a(paramContext);
  }
  
  public static int a(float paramFloat)
  {
    return (int)(a * paramFloat + 0.5F);
  }
  
  public static void a(Context paramContext)
  {
    a = paramContext.getResources().getDisplayMetrics().density;
  }
  
  public static int b(float paramFloat)
  {
    return (int)(paramFloat / a + 0.5F);
  }
  
  public static int c(float paramFloat)
  {
    return (int)(a * paramFloat + 0.5F);
  }
  
  public static int d(float paramFloat)
  {
    return (int)(paramFloat / a + 0.5F);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\util\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */