package com.xiaomi.mipush.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.a.a.d.d;
import com.xiaomi.push.service.o;

final class u
  extends ContentObserver
{
  u(s params, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public final void onChange(boolean paramBoolean)
  {
    s.a(this.a, Integer.valueOf(o.a(s.a(this.a)).a()));
    if (s.b(this.a).intValue() != 0)
    {
      s.a(this.a).getContentResolver().unregisterContentObserver(this);
      if (d.a(s.a(this.a))) {
        this.a.d();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */