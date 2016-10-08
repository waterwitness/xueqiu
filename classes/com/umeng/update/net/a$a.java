package com.umeng.update.net;

import android.os.Bundle;

class a$a
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String[] f = null;
  public boolean g = false;
  public boolean h = false;
  public boolean i = false;
  
  public a$a(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }
  
  public static a a(Bundle paramBundle)
  {
    a locala = new a(paramBundle.getString("mComponentName"), paramBundle.getString("mTitle"), paramBundle.getString("mUrl"));
    locala.d = paramBundle.getString("mMd5");
    locala.e = paramBundle.getString("mTargetMd5");
    locala.f = paramBundle.getStringArray("reporturls");
    locala.g = paramBundle.getBoolean("rich_notification");
    locala.h = paramBundle.getBoolean("mSilent");
    locala.i = paramBundle.getBoolean("mWifiOnly");
    return locala;
  }
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("mComponentName", this.a);
    localBundle.putString("mTitle", this.b);
    localBundle.putString("mUrl", this.c);
    localBundle.putString("mMd5", this.d);
    localBundle.putString("mTargetMd5", this.e);
    localBundle.putStringArray("reporturls", this.f);
    localBundle.putBoolean("rich_notification", this.g);
    localBundle.putBoolean("mSilent", this.h);
    localBundle.putBoolean("mWifiOnly", this.i);
    return localBundle;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\a$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */