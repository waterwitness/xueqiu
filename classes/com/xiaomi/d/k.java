package com.xiaomi.d;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.a.a.d.d;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class k
{
  private static int a(j paramj, String paramString1, String paramString2)
  {
    if (paramj.a == 1)
    {
      int j = paramString1.length();
      int i = a(paramString2);
      return j + ((i + 243) / 1448 * 132 + 1080) + i;
    }
    if (paramj.a == 2) {
      throw new NullPointerException();
    }
    return -1;
  }
  
  private static int a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0;
    }
    try
    {
      int i = paramString.getBytes("UTF-8").length;
      return i;
    }
    catch (UnsupportedEncodingException paramString) {}
    return 0;
  }
  
  public static String a(Context paramContext, String paramString, j paramj)
  {
    if (d.a(paramContext)) {
      for (;;)
      {
        try
        {
          localObject = new ArrayList();
          localb = f.a().a(paramString);
          if (localb != null) {
            localObject = localb.a(paramString);
          }
          if (!((ArrayList)localObject).contains(paramString)) {
            ((ArrayList)localObject).add(paramString);
          }
          Iterator localIterator = ((ArrayList)localObject).iterator();
          paramString = null;
          if (!localIterator.hasNext()) {
            break;
          }
          str = (String)localIterator.next();
          l1 = System.currentTimeMillis();
        }
        catch (MalformedURLException paramContext)
        {
          Object localObject;
          b localb;
          String str;
          long l1;
          paramContext.printStackTrace();
        }
        try
        {
          localObject = paramj.a(paramContext, str);
          paramString = (String)localObject;
          try
          {
            if (!TextUtils.isEmpty(paramString))
            {
              if (localb != null)
              {
                long l2 = System.currentTimeMillis();
                int i = a(paramj, str, paramString);
                long l3 = i;
                try
                {
                  localb.a(new URL(str).getHost(), l2 - l1, l3);
                  return paramString;
                }
                catch (MalformedURLException paramContext) {}
              }
              return paramString;
            }
            if (localb != null) {
              localb.a(str, System.currentTimeMillis() - l1, a(paramj, str, paramString), null);
            }
          }
          catch (IOException localIOException1) {}
        }
        catch (IOException localIOException2)
        {
          continue;
        }
        if (localb != null) {
          localb.a(str, System.currentTimeMillis() - l1, a(paramj, str, paramString), localIOException1);
        }
        localIOException1.printStackTrace();
      }
    }
    return null;
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */