package com.b.a.a;

import android.content.Context;
import android.content.res.Resources;

public final class f
{
  public static int a(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getIdentifier(paramString, "id", paramContext.getPackageName());
  }
  
  public static String b(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getString(c(paramContext, paramString));
  }
  
  public static int c(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getIdentifier(paramString, "string", paramContext.getPackageName());
  }
  
  public static int d(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getIdentifier(paramString, "anim", paramContext.getPackageName());
  }
  
  public static int e(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getIdentifier(paramString, "drawable", paramContext.getPackageName());
  }
  
  public static int f(Context paramContext, String paramString)
  {
    if (g.a(paramString)) {
      throw new RuntimeException("string name is empty");
    }
    return paramContext.getResources().getIdentifier(paramString, "layout", paramContext.getPackageName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */