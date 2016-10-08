package com.xueqiu.android.base.util;

import android.content.Context;
import com.umeng.analytics.MobclickAgent;

public final class b
{
  public static void a(Context paramContext, int paramInt)
  {
    MobclickAgent.onEvent(paramContext, paramContext.getString(paramInt));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */