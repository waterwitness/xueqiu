package com.xueqiu.android.base.b.a;

import com.android.volley.k;
import com.android.volley.m;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Map;
import java.util.zip.GZIPInputStream;

public final class a
{
  public static String a(k paramk)
  {
    Object localObject = (String)paramk.c.get("Content-Encoding");
    if ((localObject != null) && (((String)localObject).equals("gzip")))
    {
      localObject = new StringBuilder();
      GZIPInputStream localGZIPInputStream;
      BufferedReader localBufferedReader;
      try
      {
        localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(paramk.b));
        paramk = new InputStreamReader(localGZIPInputStream, b.a(paramk.c));
        localBufferedReader = new BufferedReader(paramk);
        for (;;)
        {
          String str = localBufferedReader.readLine();
          if (str == null) {
            break;
          }
          ((StringBuilder)localObject).append(str);
        }
        paramk.close();
      }
      catch (IOException paramk)
      {
        throw new m();
      }
      localBufferedReader.close();
      localGZIPInputStream.close();
      paramk = ((StringBuilder)localObject).toString();
      return paramk;
    }
    return new String(paramk.b, b.a(paramk.c));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */