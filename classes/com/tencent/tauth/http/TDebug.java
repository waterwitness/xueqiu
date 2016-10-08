package com.tencent.tauth.http;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

public class TDebug
{
  private static boolean bDebugMode = false;
  
  public static void d(String paramString1, String paramString2)
  {
    if (bDebugMode) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (bDebugMode) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void msg(String paramString, Context paramContext)
  {
    Toast.makeText(paramContext, paramString, 0).show();
  }
  
  public static void setMode(boolean paramBoolean)
  {
    bDebugMode = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\TDebug.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */