package com.flurry.sdk;

import android.content.Context;
import android.telephony.TelephonyManager;

public class jm
{
  private static jm a;
  private static final String b = jm.class.getSimpleName();
  
  public static jm a()
  {
    try
    {
      if (a == null) {
        a = new jm();
      }
      jm localjm = a;
      return localjm;
    }
    finally {}
  }
  
  public static void b()
  {
    a = null;
  }
  
  public String c()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)js.a().c().getSystemService("phone");
    if (localTelephonyManager == null) {
      return null;
    }
    return localTelephonyManager.getNetworkOperatorName();
  }
  
  public String d()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)js.a().c().getSystemService("phone");
    if (localTelephonyManager == null) {
      return null;
    }
    return localTelephonyManager.getNetworkOperator();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */