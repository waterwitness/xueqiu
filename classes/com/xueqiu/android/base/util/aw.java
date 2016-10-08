package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.TypedValue;
import com.xueqiu.android.community.model.User;
import java.util.Calendar;
import java.util.Date;

public final class aw
{
  public static int a(CharSequence paramCharSequence)
  {
    int j = 0;
    int i = 0;
    if ((paramCharSequence != null) && (j < paramCharSequence.length()))
    {
      Character.UnicodeBlock localUnicodeBlock = Character.UnicodeBlock.of(paramCharSequence.charAt(j));
      int k;
      if ((localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B) || (localUnicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) || (localUnicodeBlock == Character.UnicodeBlock.GENERAL_PUNCTUATION))
      {
        k = 1;
        label81:
        if (k == 0) {
          break label103;
        }
        i += 2;
      }
      for (;;)
      {
        j += 1;
        break;
        k = 0;
        break label81;
        label103:
        i += 1;
      }
    }
    return i;
  }
  
  public static int a(String paramString)
  {
    int i = 0;
    int k = 0;
    if (paramString != null)
    {
      int j = 0;
      i = k;
      while (i < paramString.length())
      {
        int m = paramString.charAt(i);
        if (((m < 97) || (m > 122)) && ((m < 65) || (m > 90)) && ((m < 48) || (m > 57)) && (m != 40) && (m != 41))
        {
          k = j;
          if (m != 47) {}
        }
        else
        {
          k = j + 1;
        }
        i += 1;
        j = k;
      }
      i = paramString.length() - j / 2;
    }
    return i;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    int i = 0;
    if (paramString == null) {
      paramContext = "";
    }
    for (;;)
    {
      return paramContext;
      try
      {
        int j = (int)TypedValue.applyDimension(1, 70.0F, paramContext.getResources().getDisplayMetrics());
        paramContext = new Paint();
        paramContext.setTextSize(15.0F);
        while ((i < paramString.length()) && (paramContext.measureText(paramString.substring(0, i)) <= j)) {
          i += 1;
        }
        paramContext = paramString;
        if (i < paramString.length())
        {
          paramContext = String.format("%s...", new Object[] { paramString.substring(0, i - 1) });
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return "";
  }
  
  public static String a(User paramUser, Date paramDate, int paramInt)
  {
    String str = paramUser.getScreenName();
    if (paramUser.getRemark() != null)
    {
      int j = (8 - a(paramUser.getRemark())) / 2 + 2;
      int i = j;
      if (!paramUser.isVerified()) {
        i = j + 1;
      }
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTime(paramDate);
      paramDate = Calendar.getInstance();
      j = i;
      if (localCalendar.get(1) == paramDate.get(1)) {
        j = i + 1;
      }
      i = j;
      if (paramInt > 480) {
        i = j + 2;
      }
      if (a(paramUser.getScreenName()) > i)
      {
        paramUser = str.subSequence(0, i).toString();
        paramInt = paramUser.length() - a(paramUser);
        if (paramInt > 0) {
          return str.subSequence(0, i + paramInt) + "...";
        }
        return paramUser + "...";
      }
    }
    return a(paramUser.getScreenName(), 12);
  }
  
  public static String a(String paramString, int paramInt)
  {
    String str = paramString;
    if (paramString != null)
    {
      int i = 0;
      int k;
      for (int j = 0; (i < paramString.length()) && (i < paramInt); j = k)
      {
        int m = paramString.charAt(i);
        if (((m < 97) || (m > 122)) && ((m < 65) || (m > 90)) && ((m < 48) || (m > 57)) && (m != 40) && (m != 41))
        {
          k = j;
          if (m != 47) {}
        }
        else
        {
          k = j + 1;
        }
        i += 1;
      }
      paramInt = j / 2 + paramInt;
      str = paramString;
      if (paramString.length() > paramInt) {
        str = paramString.subSequence(0, paramInt - 2) + "...";
      }
    }
    return str;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */