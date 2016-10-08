package com.xueqiu.android.trade.patternlock;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.trade.SetPatternActivity;

public final class d
{
  static String a(Context paramContext)
  {
    return DefaultPrefs.getString("pref_key_pattern_sha1", DefaultPrefs.DEFAULT_PATTERN_SHA1, paramContext);
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent(paramActivity, SetPatternActivity.class);
    localIntent.putExtra("extra_request_code", paramInt);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
  
  public static boolean b(Context paramContext)
  {
    return !TextUtils.isEmpty(a(paramContext));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */