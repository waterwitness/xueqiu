package com.xueqiu.android.base.util;

import android.content.Context;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class h
{
  public static final DateFormat a = new SimpleDateFormat("MM-dd HH:mm");
  public static final DateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm");
  public static final DateFormat c = new SimpleDateFormat("yyyyMMddHHmmss");
  public static final DateFormat d = new SimpleDateFormat("EEE MMM d HH:mm:ss yyyy", Locale.ENGLISH);
  
  public static int a()
  {
    return Calendar.getInstance().get(2) + 1;
  }
  
  public static int a(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = new SimpleDateFormat(paramString3);
    try
    {
      paramString1 = paramString3.parse(paramString1);
      paramString2 = paramString3.parse(paramString2);
      paramString3 = Calendar.getInstance();
      paramString3.setTime(paramString1);
      paramString1 = Calendar.getInstance();
      paramString1.setTime(paramString2);
      long l = (paramString3.getTimeInMillis() - paramString1.getTimeInMillis()) / 86400000L;
      return (int)l;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 0;
  }
  
  public static String a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 11)) {
      return null;
    }
    return com.xueqiu.android.base.r.a().getStringArray(2131492884)[paramInt];
  }
  
  public static String a(long paramLong)
  {
    Date localDate = new Date(paramLong);
    return new SimpleDateFormat("yyyyMMdd").format(localDate);
  }
  
  public static String a(String paramString1, TimeZone paramTimeZone, String paramString2, String paramString3)
  {
    try
    {
      paramString2 = new SimpleDateFormat(paramString2);
      paramString2.setTimeZone(TimeZone.getDefault());
      paramString2 = paramString2.parse(paramString1);
      paramString3 = new SimpleDateFormat(paramString3);
      paramString3.setTimeZone(paramTimeZone);
      paramTimeZone = paramString3.format(paramString2);
      return paramTimeZone;
    }
    catch (Exception paramTimeZone)
    {
      paramTimeZone.printStackTrace();
    }
    return paramString1;
  }
  
  public static String a(Date paramDate)
  {
    if (paramDate == null) {
      return "";
    }
    if (paramDate.getYear() < new Date().getYear()) {
      return b.format(paramDate);
    }
    return a.format(paramDate);
  }
  
  public static String a(Date paramDate, Context paramContext)
  {
    long l = new Date().getTime() - paramDate.getTime();
    if (l < 3000L) {
      return String.format(paramContext.getString(2131166212), new Object[] { Integer.valueOf(3) });
    }
    if (l <= 60000L) {
      return String.format(paramContext.getString(2131166212), new Object[] { Long.valueOf(l / 1000L) });
    }
    if (l <= 3600000L) {
      return String.format(paramContext.getString(2131166211), new Object[] { Long.valueOf(l / 60L / 1000L) });
    }
    int i = Calendar.getInstance().get(5);
    int j = Calendar.getInstance().get(2);
    int k = Calendar.getInstance().get(1);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    int m = localCalendar.get(5);
    int n = localCalendar.get(2);
    if ((k == localCalendar.get(1)) && (j == n) && (i == m)) {
      return String.format(paramContext.getString(2131166213), new Object[] { a(paramDate, "HH:mm") });
    }
    return a(paramDate);
  }
  
  public static String a(Date paramDate, String paramString)
  {
    return new SimpleDateFormat(paramString).format(paramDate);
  }
  
  public static Date a(String paramString)
  {
    return new Date(Long.parseLong(paramString));
  }
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong1);
    localCalendar2.setTimeInMillis(paramLong2);
    return (localCalendar1.get(1) == localCalendar2.get(1)) && (localCalendar1.get(2) == localCalendar2.get(2));
  }
  
  public static String b(long paramLong)
  {
    return a(new Date(paramLong), "HH:mm:ss");
  }
  
  public static String b(Date paramDate)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    try
    {
      Object localObject = localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date()));
      localSimpleDateFormat.applyPattern("yyyy");
      Date localDate = localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date()));
      if (paramDate.getTime() >= ((Date)localObject).getTime())
      {
        localSimpleDateFormat.applyPattern("HH:mm");
        return localSimpleDateFormat.format(paramDate);
      }
      if ((paramDate.getTime() < ((Date)localObject).getTime()) && (((Date)localObject).getTime() - paramDate.getTime() <= 86400000L))
      {
        localSimpleDateFormat.applyPattern("昨天 HH:mm");
        return localSimpleDateFormat.format(paramDate);
      }
      if ((paramDate.getTime() < ((Date)localObject).getTime()) && (((Date)localObject).getTime() - paramDate.getTime() <= 172800000L))
      {
        localSimpleDateFormat.applyPattern("前天 HH:mm");
        return localSimpleDateFormat.format(paramDate);
      }
      if (paramDate.getTime() < localDate.getTime())
      {
        localSimpleDateFormat.applyPattern("yyyy-MM-dd");
        return localSimpleDateFormat.format(paramDate);
      }
      localSimpleDateFormat.applyPattern("MM-dd");
      localObject = localSimpleDateFormat.format(paramDate);
      return (String)localObject;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return localSimpleDateFormat.format(paramDate);
  }
  
  public static Calendar b(String paramString)
  {
    String str = "";
    Object localObject;
    if (paramString != null) {
      if (paramString.length() == 30)
      {
        localObject = new StringBuilder(paramString.substring(0, 20));
        ((StringBuilder)localObject).append(paramString.substring(25));
        localObject = ((StringBuilder)localObject).toString();
        str = paramString.substring(20, 25);
      }
    }
    for (;;)
    {
      paramString = d.parse((String)localObject);
      localObject = Calendar.getInstance();
      ((Calendar)localObject).setTime(paramString);
      ((Calendar)localObject).setTimeZone(TimeZone.getTimeZone("GMT" + str));
      return (Calendar)localObject;
      if (paramString.length() == 34)
      {
        localObject = new StringBuilder(paramString.substring(0, 20));
        ((StringBuilder)localObject).append(paramString.substring(29));
        localObject = ((StringBuilder)localObject).toString();
        str = paramString.substring(23, 29);
      }
      else if (paramString.length() == 33)
      {
        localObject = new StringBuilder(paramString.substring(0, 20));
        ((StringBuilder)localObject).append(paramString.substring(28));
        localObject = ((StringBuilder)localObject).toString();
        str = paramString.substring(23, 28);
      }
      else
      {
        localObject = paramString;
        if (paramString.length() == 28)
        {
          localObject = new StringBuilder(paramString.substring(0, 20));
          ((StringBuilder)localObject).append(paramString.substring(23));
          localObject = ((StringBuilder)localObject).toString();
          str = paramString.substring(20, 24);
          continue;
          localObject = "";
        }
      }
    }
  }
  
  public static String c(long paramLong)
  {
    try
    {
      Object localObject = new Date(paramLong);
      localObject = new SimpleDateFormat("yyyy年M月").format((Date)localObject);
      return (String)localObject;
    }
    catch (Exception localException)
    {
      v.a(localException);
    }
    return "";
  }
  
  public static String c(String paramString)
  {
    String str;
    if (paramString == null) {
      str = "";
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.length() != 8);
    return String.format("%s-%s-%s", new Object[] { paramString.substring(0, 4), paramString.substring(4, 6), paramString.substring(6, 8) });
  }
  
  public static String d(String paramString)
  {
    try
    {
      paramString = c.parse(paramString);
      paramString = new SimpleDateFormat("M月d日").format(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      v.a(paramString);
    }
    return "";
  }
  
  public static String e(String paramString)
  {
    try
    {
      paramString = c.parse(paramString);
      paramString = new SimpleDateFormat("HH:mm:ss").format(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      v.a(paramString);
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */