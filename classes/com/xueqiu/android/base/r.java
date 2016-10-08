package com.xueqiu.android.base;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;

public final class r
{
  public static final Resources a;
  public static final ConcurrentHashMap<Integer, WeakReference<Bitmap>> b = new ConcurrentHashMap();
  public static final ConcurrentHashMap<Integer, Bitmap> c = new ConcurrentHashMap();
  private static float d;
  private static BitmapFactory.Options e;
  
  static
  {
    b.a();
    Resources localResources = b.d().getResources();
    a = localResources;
    d = localResources.getDisplayMetrics().density;
    e = new BitmapFactory.Options();
  }
  
  public static int a(int paramInt)
  {
    return a.getColor(paramInt);
  }
  
  public static int a(int paramInt, Activity paramActivity)
  {
    return a(paramInt, paramActivity.getTheme());
  }
  
  public static int a(int paramInt, Resources.Theme paramTheme)
  {
    paramTheme = paramTheme.obtainStyledAttributes(new int[] { paramInt });
    paramInt = paramTheme.getColor(0, a.getColor(2131558716));
    paramTheme.recycle();
    return paramInt;
  }
  
  public static Resources a()
  {
    return a;
  }
  
  public static StateListDrawable a(int paramInt1, int paramInt2)
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    Drawable localDrawable;
    if (paramInt2 > 0)
    {
      localDrawable = a.getDrawable(paramInt2);
      localStateListDrawable.addState(new int[] { 16842910, 16842919 }, localDrawable);
      localDrawable = a.getDrawable(paramInt2);
      localStateListDrawable.addState(new int[] { 16842908 }, localDrawable);
    }
    if (paramInt1 > 0)
    {
      localDrawable = a.getDrawable(paramInt1);
      localStateListDrawable.addState(new int[] { 16842910 }, localDrawable);
    }
    return localStateListDrawable;
  }
  
  public static String a(int paramInt, Object... paramVarArgs)
  {
    return a.getString(paramInt, paramVarArgs);
  }
  
  public static int b(int paramInt)
  {
    return a.getDimensionPixelOffset(paramInt);
  }
  
  public static ColorStateList b()
  {
    int i = a.getColor(2131558728);
    int j = a.getColor(2131558728);
    int k = a.getColor(2131558507);
    return new ColorStateList(new int[][] { { 16842910, 16842919 }, { 16842908 }, { 16842910 } }, new int[] { i, j, k });
  }
  
  public static Drawable b(int paramInt, Activity paramActivity)
  {
    return b(paramInt, paramActivity.getTheme());
  }
  
  public static Drawable b(int paramInt, Resources.Theme paramTheme)
  {
    paramTheme = paramTheme.obtainStyledAttributes(new int[] { paramInt });
    Drawable localDrawable = paramTheme.getDrawable(0);
    paramTheme.recycle();
    return localDrawable;
  }
  
  public static int c(int paramInt)
  {
    return a.getDimensionPixelSize(paramInt);
  }
  
  public static String d(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  public static String[] e(int paramInt)
  {
    return a.getStringArray(paramInt);
  }
  
  public static CharSequence f(int paramInt)
  {
    return a.getText(paramInt);
  }
  
  public static CharSequence[] g(int paramInt)
  {
    return a.getTextArray(paramInt);
  }
  
  public static Drawable h(int paramInt)
  {
    return a.getDrawable(paramInt);
  }
  
  public static int i(int paramInt)
  {
    return (int)(a.getDisplayMetrics().density * paramInt + 0.5F);
  }
  
  public static int j(int paramInt)
  {
    return 0xFFFFFF | (paramInt & 0xFF) << 24;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */