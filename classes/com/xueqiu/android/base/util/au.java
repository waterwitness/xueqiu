package com.xueqiu.android.base.util;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import java.text.DecimalFormat;
import java.util.Collection;
import java.util.Iterator;

public final class au
{
  public static double a(double paramDouble, int paramInt)
  {
    double d = paramDouble;
    if (Math.abs(paramDouble) < Math.pow(10.0D, -paramInt)) {
      d = 0.0D;
    }
    return d;
  }
  
  public static CharSequence a(String paramString1, String paramString2, String paramString3)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(paramString1);
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor(paramString3)), 0, localSpannableStringBuilder.length(), 17);
    localSpannableStringBuilder.append(paramString2);
    return localSpannableStringBuilder;
  }
  
  public static String a(double paramDouble)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    double d = paramDouble;
    if (paramDouble < 0.0D)
    {
      localStringBuilder.append("-");
      d = -paramDouble;
    }
    int i = 0;
    while ((d >= 10000.0D) && (i < 3))
    {
      d /= 10000.0D;
      i += 1;
    }
    String str2 = String.valueOf(Math.round(d * 100.0D) / 100.0D);
    int k = str2.indexOf('.');
    int j = k;
    String str1 = str2;
    if (k < 0) {
      j = str2.length();
    }
    for (str1 = str2 + '.'; str1.length() <= j + 2; str1 = str1 + '0') {}
    localStringBuilder.append(str1);
    localStringBuilder.append(new String[] { "", "万", "亿", "万亿" }[i]);
    return localStringBuilder.toString();
  }
  
  public static String a(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while ((i > 10000) && (paramInt < 2))
    {
      i /= 10000;
      paramInt += 1;
    }
    return String.valueOf(i) + new String[] { "", "万", "亿" }[paramInt];
  }
  
  public static String a(Float paramFloat)
  {
    return new DecimalFormat("##0.00").format(paramFloat);
  }
  
  public static String a(String paramString1, Object paramObject, String paramString2)
  {
    if (paramObject == null) {
      return paramString2;
    }
    return String.format(paramString1, new Object[] { paramObject });
  }
  
  public static String a(Collection<String> paramCollection, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramCollection.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      localStringBuilder.append((String)localIterator.next());
      if (i < paramCollection.size() - 1) {
        localStringBuilder.append(paramString);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(long[] paramArrayOfLong, String paramString)
  {
    String[] arrayOfString = new String[paramArrayOfLong.length];
    int i = 0;
    while (i < paramArrayOfLong.length)
    {
      arrayOfString[i] = String.valueOf(paramArrayOfLong[i]);
      i += 1;
    }
    return a(arrayOfString, paramString);
  }
  
  public static String a(Object[] paramArrayOfObject, String paramString)
  {
    String[] arrayOfString = new String[paramArrayOfObject.length];
    int i = 0;
    while (i < paramArrayOfObject.length)
    {
      arrayOfString[i] = String.valueOf(paramArrayOfObject[i]);
      i += 1;
    }
    return a(arrayOfString, paramString);
  }
  
  public static String a(String[] paramArrayOfString, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      localStringBuilder.append(paramArrayOfString[i]);
      if (i < paramArrayOfString.length - 1) {
        localStringBuilder.append(paramString);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static CharSequence b(String paramString1, String paramString2, String paramString3)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    localSpannableStringBuilder.append(paramString2);
    paramString2 = new ForegroundColorSpan(Color.parseColor(paramString3));
    int i = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(paramString1);
    localSpannableStringBuilder.setSpan(paramString2, i, localSpannableStringBuilder.length(), 17);
    return localSpannableStringBuilder;
  }
  
  public static String b(double paramDouble)
  {
    if (Math.abs(paramDouble) < 100000.0D) {
      return String.format("%.2f", new Object[] { Double.valueOf(paramDouble) });
    }
    return a(paramDouble);
  }
  
  public static String b(String paramString)
  {
    if (!j.a(paramString)) {
      return "--";
    }
    double d = j.b(paramString);
    if (Math.abs(d) < 100000.0D) {
      return String.format("%.2f", new Object[] { Double.valueOf(d) });
    }
    return a(d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */