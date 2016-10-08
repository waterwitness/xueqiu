package com.xueqiu.android.base.b;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.TencentOpenAPI;
import com.tencent.tauth.bean.OpenId;
import com.tencent.tauth.bean.UserInfo;
import com.tencent.tauth.http.Callback;
import com.xueqiu.android.common.SNBTAuthView;
import java.util.Iterator;
import java.util.List;

public final class m
  implements g
{
  Activity a = null;
  public Tencent b = null;
  public String c = null;
  public String d = null;
  public long e;
  public String f = null;
  h g = null;
  o h = null;
  private h i = null;
  
  public m(Activity paramActivity, h paramh)
  {
    this.g = paramh;
    this.a = paramActivity;
    this.b = Tencent.createInstance("100229413", paramActivity);
    if (this.h == null)
    {
      this.h = new o(this);
      paramActivity = new IntentFilter();
      paramActivity.addAction("com.tencent.auth.BROWSER");
      this.a.registerReceiver(this.h, paramActivity);
    }
  }
  
  public static boolean a(Activity paramActivity)
  {
    paramActivity = paramActivity.getPackageManager().getInstalledPackages(0).iterator();
    while (paramActivity.hasNext()) {
      if (((PackageInfo)paramActivity.next()).packageName.contains("com.tencent.mobileqq")) {
        return true;
      }
    }
    return false;
  }
  
  private boolean b()
  {
    PackageManager localPackageManager = this.a.getPackageManager();
    try
    {
      localPackageManager.getPackageInfo("com.tencent.mobileqq", 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      try
      {
        localPackageManager.getPackageInfo("com.qzone", 1);
        return true;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1) {}
    }
    return false;
  }
  
  public final void a()
  {
    if (b())
    {
      this.b.login(this.a, "all", new n(this));
      return;
    }
    Intent localIntent = new Intent(this.a, SNBTAuthView.class);
    localIntent.putExtra("client_id", "100229413");
    localIntent.putExtra("scope", "get_user_info,add_share");
    localIntent.putExtra("target", "_self");
    localIntent.putExtra("callback", "tencentauth://auth.qq.com");
    this.a.startActivity(localIntent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */