package org.apache.http.impl.cookie;

import java.util.Date;
import java.util.TimeZone;
import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public final class DateUtils
{
  public static final TimeZone GMT = TimeZone.getTimeZone("GMT");
  public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
  public static final String PATTERN_RFC1036 = "EEE, dd-MMM-yy HH:mm:ss zzz";
  public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
  
  public static String formatDate(Date paramDate)
  {
    return org.apache.http.client.utils.DateUtils.formatDate(paramDate);
  }
  
  public static String formatDate(Date paramDate, String paramString)
  {
    return org.apache.http.client.utils.DateUtils.formatDate(paramDate, paramString);
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
    paramArrayOfString = org.apache.http.client.utils.DateUtils.parseDate(paramString, paramArrayOfString, paramDate);
    if (paramArrayOfString == null) {
      throw new DateParseException("Unable to parse the date " + paramString);
    }
    return paramArrayOfString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\DateUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */