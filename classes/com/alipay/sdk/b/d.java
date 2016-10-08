package com.alipay.sdk.b;

import java.util.Random;

public final class d
{
  private static d d;
  String a;
  String b = "sdk-and-lite";
  String c;
  
  public static d a()
  {
    try
    {
      if (d == null) {
        d = new d();
      }
      d locald = d;
      return locald;
    }
    finally {}
  }
  
  static String b()
  {
    String str = Long.toHexString(System.currentTimeMillis());
    Random localRandom = new Random();
    return str + (localRandom.nextInt(9000) + 1000);
  }
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 63	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 68	com/alipay/sdk/g/a:a	()Lcom/alipay/sdk/g/a;
    //   17: getfield 71	com/alipay/sdk/g/a:a	Landroid/content/Context;
    //   20: invokestatic 77	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   23: invokeinterface 83 1 0
    //   28: ldc 85
    //   30: aload_1
    //   31: invokeinterface 91 3 0
    //   36: invokeinterface 95 1 0
    //   41: pop
    //   42: aload_1
    //   43: putstatic 98	com/alipay/sdk/a/a:b	Ljava/lang/String;
    //   46: goto -35 -> 11
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	d
    //   0	54	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	49	finally
    //   14	46	49	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */