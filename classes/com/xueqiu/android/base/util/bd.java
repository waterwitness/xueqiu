package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.xueqiu.android.base.b;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class bd
{
  public static boolean a(String paramString, int paramInt)
  {
    b.a();
    Context localContext = b.d();
    Intent localIntent;
    Object localObject;
    String str;
    if (paramInt == 1)
    {
      paramString = Uri.parse(paramString);
      localIntent = localContext.getPackageManager().getLaunchIntentForPackage(paramString.getScheme());
      if (localIntent != null)
      {
        localObject = paramString.getQueryParameterNames().iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          localIntent.putExtra(str, paramString.getQueryParameter(str));
        }
        localIntent.setFlags(268435456);
        localContext.startActivity(localIntent);
        return true;
      }
    }
    else if (paramInt == 2)
    {
      localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setFlags(268435456);
      localIntent.setData(Uri.parse(paramString));
      paramString = localContext.getPackageManager().queryIntentActivities(localIntent, 65536);
      if ((paramString != null) && (paramString.size() > 0))
      {
        localContext.startActivity(localIntent);
        return true;
      }
    }
    else if (paramInt == 3)
    {
      paramString = Uri.parse(paramString);
      localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramString.getScheme() + "://"));
      localIntent.setFlags(268435456);
      localObject = localContext.getPackageManager().queryIntentActivities(localIntent, 65536);
      if ((localObject != null) && (((List)localObject).size() > 0))
      {
        localObject = paramString.getQueryParameterNames().iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          localIntent.putExtra(str, paramString.getQueryParameter(str));
        }
        localContext.startActivity(localIntent);
        return true;
      }
    }
    else
    {
      aa.a("该版本不支持，请更新雪球客户端");
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */