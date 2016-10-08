package com.xiaomi.d;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;

public final class m
{
  private static m e;
  List<n> a = new ArrayList();
  Timer b = new Timer("Upload Http Record Timer");
  boolean c = false;
  private final Random d = new Random();
  private Context f = null;
  
  private m(Context paramContext)
  {
    this.f = paramContext.getApplicationContext();
  }
  
  public static m a()
  {
    try
    {
      m localm = e;
      return localm;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static String a(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(b(paramString));
      paramString = String.format("%1$032X", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      if (e == null) {
        e = new m(paramContext);
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private static byte[] b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes();
  }
  
  public final void a(n paramn)
  {
    try
    {
      this.a.add(paramn);
      return;
    }
    finally
    {
      paramn = finally;
      throw paramn;
    }
  }
  
  public final void b(n paramn)
  {
    try
    {
      this.a.remove(paramn);
      return;
    }
    finally
    {
      paramn = finally;
      throw paramn;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */