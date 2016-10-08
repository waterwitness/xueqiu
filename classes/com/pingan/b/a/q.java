package com.pingan.b.a;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.Random;

public final class q
{
  private static q c = new q();
  public final String a;
  public final String b;
  
  private q()
  {
    Object localObject1 = new Random();
    this.a = (System.currentTimeMillis() + ((Random)localObject1).nextInt(999));
    String str1 = this.a;
    String str2 = Build.VERSION.RELEASE;
    String str3 = Build.MODEL.trim();
    Object localObject2 = a(Build.MANUFACTURER.trim(), str3);
    localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2)) {
      localObject1 = a(Build.BRAND.trim(), str3);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    this.b = String.format("Android/%s (%s; %s; %s)", new Object[] { "1.0.0.2", str2, (String)localObject2 + "-" + str3, str1 });
  }
  
  public static q a()
  {
    return c;
  }
  
  private static String a(String paramString1, String paramString2)
  {
    String str = paramString1.toLowerCase();
    if ((str.startsWith("unknown")) || (str.startsWith("alps")) || (str.startsWith("android")) || (str.startsWith("sprd")) || (str.startsWith("spreadtrum")) || (str.startsWith("rockchip")) || (str.startsWith("wondermedia")) || (str.startsWith("mtk")) || (str.startsWith("mt65")) || (str.startsWith("nvidia")) || (str.startsWith("brcm")) || (str.startsWith("marvell")) || (paramString2.toLowerCase().contains(str))) {
      paramString1 = null;
    }
    return paramString1;
  }
  
  public final String toString()
  {
    return this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */