package com.tencent.bugly.crashreport.inner;

import android.content.Context;
import com.tencent.bugly.crashreport.common.info.a;
import com.tencent.bugly.crashreport.crash.d;
import com.tencent.bugly.proguard.w;
import java.util.Map;

public class InnerAPI
{
  public static Context context;
  
  public static void postCocos2dxCrashAsync(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null))
    {
      w.e("post cocos2d-x fail args null", new Object[0]);
      return;
    }
    if ((paramInt != 5) && (paramInt != 6))
    {
      w.e("post cocos2d-x fail category illeagle: %d", new Object[] { Integer.valueOf(paramInt) });
      return;
    }
    w.a("post cocos2d-x crash %s %s", new Object[] { paramString1, paramString2 });
    d.a(Thread.currentThread(), paramInt, paramString1, paramString2, paramString3);
  }
  
  public static void postH5CrashAsync(Thread paramThread, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null))
    {
      w.e("post h5 fail args null", new Object[0]);
      return;
    }
    w.a("post h5 crash %s %s", new Object[] { paramString1, paramString2 });
    d.a(paramThread, paramString1, paramString2, paramString3, paramMap);
  }
  
  public static void postU3dCrashAsync(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null)) {
      w.e("post u3d fail args null", new Object[0]);
    }
    w.a("post u3d crash %s %s", new Object[] { paramString1, paramString2 });
    d.a(Thread.currentThread(), paramString1, paramString2, paramString3);
  }
  
  public static void setOuterSdkVersion(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null) {
      w.d("context is null when putsdkdata", new Object[0]);
    }
    if ((paramString1 != null) && (paramString1.trim().length() > 0))
    {
      i = 0;
      if (i == 0) {
        if ((paramString2 == null) || (paramString2.trim().length() <= 0)) {
          break label65;
        }
      }
    }
    label65:
    for (int i = 0;; i = 1)
    {
      if (i == 0) {
        break label71;
      }
      return;
      i = 1;
      break;
    }
    label71:
    String str = paramString1.replace("[a-zA-Z[0-9]]+", "");
    if (str.length() > 50)
    {
      w.d("putSdkData key length over limit %d , will drop this new key %s", new Object[] { Integer.valueOf(50), str });
      return;
    }
    paramString1 = paramString2;
    if (paramString2.length() > 200)
    {
      w.d("putSdkData value length over limit %d , has been cutted!", new Object[] { Integer.valueOf(200) });
      paramString1 = paramString2.substring(0, 200);
    }
    a.a(paramContext).b("SDK_" + str, paramString1);
    w.b("[param] putSdkData data: %s - %s", new Object[] { str, paramString1 });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\inner\InnerAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */