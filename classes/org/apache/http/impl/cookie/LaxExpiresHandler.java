package org.apache.http.impl.cookie;

import java.util.BitSet;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;

@Immutable
public class LaxExpiresHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  private static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("^([0-9]{1,2})([^0-9].*)?$");
  private static final BitSet DELIMS;
  private static final Map<String, Integer> MONTHS;
  private static final Pattern MONTH_PATTERN = Pattern.compile("^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)(.*)?$", 2);
  private static final Pattern TIME_PATTERN;
  static final TimeZone UTC = TimeZone.getTimeZone("UTC");
  private static final Pattern YEAR_PATTERN = Pattern.compile("^([0-9]{2,4})([^0-9].*)?$");
  
  static
  {
    Object localObject = new BitSet();
    ((BitSet)localObject).set(9);
    int i = 32;
    while (i <= 47)
    {
      ((BitSet)localObject).set(i);
      i += 1;
    }
    i = 59;
    while (i <= 64)
    {
      ((BitSet)localObject).set(i);
      i += 1;
    }
    i = 91;
    while (i <= 96)
    {
      ((BitSet)localObject).set(i);
      i += 1;
    }
    i = 123;
    while (i <= 126)
    {
      ((BitSet)localObject).set(i);
      i += 1;
    }
    DELIMS = (BitSet)localObject;
    localObject = new ConcurrentHashMap(12);
    ((ConcurrentHashMap)localObject).put("jan", Integer.valueOf(0));
    ((ConcurrentHashMap)localObject).put("feb", Integer.valueOf(1));
    ((ConcurrentHashMap)localObject).put("mar", Integer.valueOf(2));
    ((ConcurrentHashMap)localObject).put("apr", Integer.valueOf(3));
    ((ConcurrentHashMap)localObject).put("may", Integer.valueOf(4));
    ((ConcurrentHashMap)localObject).put("jun", Integer.valueOf(5));
    ((ConcurrentHashMap)localObject).put("jul", Integer.valueOf(6));
    ((ConcurrentHashMap)localObject).put("aug", Integer.valueOf(7));
    ((ConcurrentHashMap)localObject).put("sep", Integer.valueOf(8));
    ((ConcurrentHashMap)localObject).put("oct", Integer.valueOf(9));
    ((ConcurrentHashMap)localObject).put("nov", Integer.valueOf(10));
    ((ConcurrentHashMap)localObject).put("dec", Integer.valueOf(11));
    MONTHS = (Map)localObject;
    TIME_PATTERN = Pattern.compile("^([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})([^0-9].*)?$");
  }
  
  private void copyContent(CharSequence paramCharSequence, ParserCursor paramParserCursor, StringBuilder paramStringBuilder)
  {
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int k = paramParserCursor.getUpperBound();
    while (i < k)
    {
      char c = paramCharSequence.charAt(i);
      if (DELIMS.get(c)) {
        break;
      }
      j += 1;
      paramStringBuilder.append(c);
      i += 1;
    }
    paramParserCursor.updatePos(j);
  }
  
  private void skipDelims(CharSequence paramCharSequence, ParserCursor paramParserCursor)
  {
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int k = paramParserCursor.getUpperBound();
    while (i < k)
    {
      int m = paramCharSequence.charAt(i);
      if (!DELIMS.get(m)) {
        break;
      }
      j += 1;
      i += 1;
    }
    paramParserCursor.updatePos(j);
  }
  
  public String getAttributeName()
  {
    return "expires";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    ParserCursor localParserCursor = new ParserCursor(0, paramString.length());
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = 0;
    int n = 0;
    int m = 0;
    int j = 0;
    int k = 0;
    int i4 = 0;
    int i3 = 0;
    int i = 0;
    int i2 = 0;
    int i5 = 0;
    try
    {
      while (!localParserCursor.atEnd())
      {
        skipDelims(paramString, localParserCursor);
        localStringBuilder.setLength(0);
        copyContent(paramString, localParserCursor, localStringBuilder);
        if (localStringBuilder.length() == 0) {
          break;
        }
        Matcher localMatcher;
        if (i4 == 0)
        {
          localMatcher = TIME_PATTERN.matcher(localStringBuilder);
          if (localMatcher.matches())
          {
            m = Integer.parseInt(localMatcher.group(1));
            n = Integer.parseInt(localMatcher.group(2));
            i1 = Integer.parseInt(localMatcher.group(3));
            i4 = 1;
            continue;
          }
        }
        if (i2 == 0)
        {
          localMatcher = DAY_OF_MONTH_PATTERN.matcher(localStringBuilder);
          if (localMatcher.matches())
          {
            j = Integer.parseInt(localMatcher.group(1));
            i2 = 1;
            continue;
          }
        }
        if (i3 == 0)
        {
          localMatcher = MONTH_PATTERN.matcher(localStringBuilder);
          if (localMatcher.matches())
          {
            i3 = 1;
            k = ((Integer)MONTHS.get(localMatcher.group(1).toLowerCase(Locale.ROOT))).intValue();
            continue;
          }
        }
        if (i5 == 0)
        {
          localMatcher = YEAR_PATTERN.matcher(localStringBuilder);
          if (localMatcher.matches())
          {
            i = Integer.parseInt(localMatcher.group(1));
            i5 = 1;
          }
        }
      }
      if (i4 == 0) {
        break label338;
      }
    }
    catch (NumberFormatException paramSetCookie)
    {
      throw new MalformedCookieException("Invalid 'expires' attribute: " + paramString);
    }
    if ((i2 == 0) || (i3 == 0) || (i5 == 0)) {
      label338:
      throw new MalformedCookieException("Invalid 'expires' attribute: " + paramString);
    }
    if ((i >= 70) && (i <= 99)) {
      i += 1900;
    }
    for (;;)
    {
      i2 = i;
      if (i >= 0)
      {
        i2 = i;
        if (i <= 69) {
          i2 = i + 2000;
        }
      }
      if ((j <= 0) || (j > 31) || (i2 < 1601) || (m > 23) || (n > 59) || (i1 > 59)) {
        throw new MalformedCookieException("Invalid 'expires' attribute: " + paramString);
      }
      paramString = Calendar.getInstance();
      paramString.setTimeZone(UTC);
      paramString.setTimeInMillis(0L);
      paramString.set(13, i1);
      paramString.set(12, n);
      paramString.set(11, m);
      paramString.set(5, j);
      paramString.set(2, k);
      paramString.set(1, i2);
      paramSetCookie.setExpiryDate(paramString.getTime());
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\LaxExpiresHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */