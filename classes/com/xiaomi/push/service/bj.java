package com.xiaomi.push.service;

import com.xiaomi.a.a.d.d;
import com.xiaomi.f.j;
import java.io.IOException;
import java.net.URL;

final class bj
  implements com.xiaomi.d.h
{
  public final String a(String paramString)
  {
    paramString = new URL(paramString);
    if (paramString.getPort() == -1) {}
    for (i = 80;; i = paramString.getPort()) {
      try
      {
        long l1 = System.currentTimeMillis();
        String str = d.a(com.xiaomi.e.e.h.a, paramString);
        long l2 = System.currentTimeMillis();
        j.a(paramString.getHost() + ":" + i, (int)(l2 - l1), null);
        return str;
      }
      catch (IOException localIOException)
      {
        j.a(paramString.getHost() + ":" + i, -1, localIOException);
        throw localIOException;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */