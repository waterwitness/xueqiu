package org.apache.http.client.utils;

import java.lang.ref.SoftReference;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

final class DateUtils$DateFormatHolder
{
  private static final ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> THREADLOCAL_FORMATS = new ThreadLocal()
  {
    protected final SoftReference<Map<String, SimpleDateFormat>> initialValue()
    {
      return new SoftReference(new HashMap());
    }
  };
  
  public static void clearThreadLocal()
  {
    THREADLOCAL_FORMATS.remove();
  }
  
  public static SimpleDateFormat formatFor(String paramString)
  {
    Object localObject = (Map)((SoftReference)THREADLOCAL_FORMATS.get()).get();
    if (localObject == null)
    {
      localObject = new HashMap();
      THREADLOCAL_FORMATS.set(new SoftReference(localObject));
    }
    for (;;)
    {
      SimpleDateFormat localSimpleDateFormat2 = (SimpleDateFormat)((Map)localObject).get(paramString);
      SimpleDateFormat localSimpleDateFormat1 = localSimpleDateFormat2;
      if (localSimpleDateFormat2 == null)
      {
        localSimpleDateFormat1 = new SimpleDateFormat(paramString, Locale.US);
        localSimpleDateFormat1.setTimeZone(TimeZone.getTimeZone("GMT"));
        ((Map)localObject).put(paramString, localSimpleDateFormat1);
      }
      return localSimpleDateFormat1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\DateUtils$DateFormatHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */