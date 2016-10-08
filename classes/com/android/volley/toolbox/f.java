package com.android.volley.toolbox;

import com.android.volley.c;
import com.android.volley.k;
import java.util.Date;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class f
{
  public static long a(String paramString)
  {
    try
    {
      long l = DateUtils.parseDate(paramString).getTime();
      return l;
    }
    catch (DateParseException paramString) {}
    return 0L;
  }
  
  public static c a(k paramk)
  {
    int i = 0;
    long l4 = 0L;
    long l5 = System.currentTimeMillis();
    Map localMap = paramk.c;
    Object localObject1 = (String)localMap.get("Date");
    if (localObject1 != null) {}
    for (long l2 = a((String)localObject1);; l2 = 0L)
    {
      localObject1 = (String)localMap.get("Cache-Control");
      long l1;
      Object localObject2;
      if (localObject1 != null)
      {
        localObject1 = ((String)localObject1).split(",");
        i = 0;
        l1 = 0L;
        if (i < localObject1.length)
        {
          localObject2 = localObject1[i].trim();
          if ((((String)localObject2).equals("no-cache")) || (((String)localObject2).equals("no-store"))) {
            return null;
          }
          if (((String)localObject2).startsWith("max-age=")) {}
          for (;;)
          {
            try
            {
              l3 = Long.parseLong(((String)localObject2).substring(8));
              l1 = l3;
            }
            catch (Exception localException)
            {
              continue;
              long l3 = 0L;
              continue;
            }
            i += 1;
            break;
            if ((((String)localObject2).equals("must-revalidate")) || (((String)localObject2).equals("proxy-revalidate"))) {
              l1 = 0L;
            }
          }
        }
        i = 1;
      }
      for (;;)
      {
        localObject1 = (String)localMap.get("Expires");
        if (localObject1 != null)
        {
          l3 = a((String)localObject1);
          localObject1 = (String)localMap.get("ETag");
          if (i != 0) {
            l1 = 1000L * l1 + l5;
          }
          for (;;)
          {
            localObject2 = new c();
            ((c)localObject2).a = paramk.b;
            ((c)localObject2).b = ((String)localObject1);
            ((c)localObject2).e = l1;
            ((c)localObject2).d = ((c)localObject2).e;
            ((c)localObject2).c = l2;
            ((c)localObject2).f = localMap;
            return (c)localObject2;
            l1 = l4;
            if (l2 > 0L)
            {
              l1 = l4;
              if (l3 >= l2) {
                l1 = l3 - l2 + l5;
              }
            }
          }
        }
        l1 = 0L;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */