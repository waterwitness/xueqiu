package com.f.a.a.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.Random;

public final class g
{
  private static String a()
  {
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = (int)System.nanoTime();
    int k = new Random().nextInt();
    int m = new Random().nextInt();
    byte[] arrayOfByte1 = f.a(i);
    byte[] arrayOfByte2 = f.a(j);
    byte[] arrayOfByte3 = f.a(k);
    byte[] arrayOfByte4 = f.a(m);
    byte[] arrayOfByte5 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte5, 0, 4);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte5, 4, 4);
    System.arraycopy(arrayOfByte3, 0, arrayOfByte5, 8, 4);
    System.arraycopy(arrayOfByte4, 0, arrayOfByte5, 12, 4);
    return b.a(arrayOfByte5, 2);
  }
  
  public static String a(Context paramContext)
  {
    localObject2 = null;
    localObject1 = localObject2;
    if (paramContext != null) {}
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext == null) {
        break label50;
      }
      paramContext = paramContext.getDeviceId();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        localObject1 = localObject2;
        continue;
        paramContext = null;
      }
    }
    localObject1 = paramContext;
    paramContext = (Context)localObject1;
    if (h.a((String)localObject1)) {
      paramContext = a();
    }
    return paramContext;
  }
  
  public static String b(Context paramContext)
  {
    localObject2 = null;
    localObject1 = localObject2;
    if (paramContext != null) {}
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext == null) {
        break label50;
      }
      paramContext = paramContext.getSubscriberId();
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        localObject1 = localObject2;
        continue;
        paramContext = null;
      }
    }
    localObject1 = paramContext;
    paramContext = (Context)localObject1;
    if (h.a((String)localObject1)) {
      paramContext = a();
    }
    return paramContext;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */