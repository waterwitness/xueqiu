package android.support.v4.a;

import android.app.Notification;

class bb
  implements ay
{
  public Notification a(av paramav)
  {
    Notification localNotification = paramav.B;
    localNotification.setLatestEventInfo(paramav.a, paramav.b, paramav.c, paramav.d);
    if (paramav.j > 0) {
      localNotification.flags |= 0x80;
    }
    return localNotification;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */