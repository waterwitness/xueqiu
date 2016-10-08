package org.apache.http.client.utils;

import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public final class DateUtils
{
  private static final String[] DEFAULT_PATTERNS = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy" };
  private static final Date DEFAULT_TWO_DIGIT_YEAR_START;
  public static final TimeZone GMT = TimeZone.getTimeZone("GMT");
  public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
  public static final String PATTERN_RFC1036 = "EEE, dd-MMM-yy HH:mm:ss zzz";
  public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
  
  static
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeZone(GMT);
    localCalendar.set(2000, 0, 1, 0, 0, 0);
    localCalendar.set(14, 0);
    DEFAULT_TWO_DIGIT_YEAR_START = localCalendar.getTime();
  }
  
  public static void clearThreadLocal() {}
  
  public static String formatDate(Date paramDate)
  {
    return formatDate(paramDate, "EEE, dd MMM yyyy HH:mm:ss zzz");
  }
  
  public static String formatDate(Date paramDate, String paramString)
  {
    Args.notNull(paramDate, "Date");
    Args.notNull(paramString, "Pattern");
    return DateUtils.DateFormatHolder.formatFor(paramString).format(paramDate);
  }
  
  public static Date parseDate(String paramString)
  {
    return parseDate(paramString, null, null);
  }
  
  public static Date parseDate(String paramString, String[] paramArrayOfString)
  {
    return parseDate(paramString, paramArrayOfString, null);
  }
  
  public static Date parseDate(String paramString, String[] paramArrayOfString, Date paramDate)
  {
    Args.notNull(paramString, "Date value");
    label15:
    String str;
    int j;
    int i;
    if (paramArrayOfString != null)
    {
      if (paramDate == null) {
        break label123;
      }
      str = paramString;
      if (paramString.length() > 1)
      {
        str = paramString;
        if (paramString.startsWith("'"))
        {
          str = paramString;
          if (paramString.endsWith("'")) {
            str = paramString.substring(1, paramString.length() - 1);
          }
        }
      }
      j = paramArrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        break label139;
      }
      Object localObject = DateUtils.DateFormatHolder.formatFor(paramArrayOfString[i]);
      ((SimpleDateFormat)localObject).set2DigitYearStart(paramDate);
      paramString = new ParsePosition(0);
      localObject = ((SimpleDateFormat)localObject).parse(str, paramString);
      if (paramString.getIndex() != 0)
      {
        return (Date)localObject;
        paramArrayOfString = DEFAULT_PATTERNS;
        break;
        label123:
        paramDate = DEFAULT_TWO_DIGIT_YEAR_START;
        break label15;
      }
      i += 1;
    }
    label139:
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\DateUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */