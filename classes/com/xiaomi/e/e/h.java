package com.xiaomi.e.e;

import android.content.Context;
import android.util.Base64;
import com.xiaomi.a.a.b.c;
import com.xiaomi.push.service.ak;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class h
{
  public static Context a;
  private static String b;
  
  public static String a()
  {
    String str;
    if (b == null)
    {
      str = ak.b(a);
      if (str == null) {}
    }
    try
    {
      b = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(str.getBytes()), 8).substring(0, 16);
      return b;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        c.a(localNoSuchAlgorithmException);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */