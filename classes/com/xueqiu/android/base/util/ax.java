package com.xueqiu.android.base.util;

import android.text.TextUtils;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import java.util.Calendar;

public final class ax
{
  private static long a;
  private static Calendar b = Calendar.getInstance(as.k);
  private static long c;
  
  public static void a()
  {
    a = System.currentTimeMillis();
    b.setTimeInMillis(a);
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      c = System.currentTimeMillis();
    }
    while (System.currentTimeMillis() - c <= 120000L) {
      return;
    }
    a();
  }
  
  public static String b()
  {
    Object localObject2 = i.b();
    u.a();
    String str = String.valueOf(UserLogonDataPrefs.getLogonUserId());
    Object localObject1 = Calendar.getInstance(as.k);
    ((Calendar)localObject1).setTimeInMillis(System.currentTimeMillis());
    int i;
    if (((Calendar)localObject1).get(5) != b.get(5))
    {
      i = 1;
      if (i != 0) {
        a();
      }
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = "--";
      }
      localObject2 = str;
      if (TextUtils.isEmpty(str)) {
        localObject2 = "--";
      }
      if (!b.a().c) {
        break label131;
      }
    }
    label131:
    for (long l = a;; l = 0L)
    {
      return String.format("%s.%s.%s.%s", new Object[] { localObject1, localObject2, String.valueOf(l), String.valueOf(System.currentTimeMillis()) });
      i = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */