package android.support.v4.a;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.widget.RemoteViews;

final class bd
  extends bb
{
  public final Notification a(av paramav)
  {
    Object localObject2 = paramav.a;
    Notification localNotification = paramav.B;
    Object localObject1 = paramav.b;
    CharSequence localCharSequence1 = paramav.c;
    CharSequence localCharSequence2 = paramav.h;
    RemoteViews localRemoteViews = paramav.f;
    int i = paramav.i;
    PendingIntent localPendingIntent2 = paramav.d;
    PendingIntent localPendingIntent1 = paramav.e;
    paramav = paramav.g;
    localObject2 = new Notification.Builder((Context)localObject2).setWhen(localNotification.when).setSmallIcon(localNotification.icon, localNotification.iconLevel).setContent(localNotification.contentView).setTicker(localNotification.tickerText, localRemoteViews).setSound(localNotification.sound, localNotification.audioStreamType).setVibrate(localNotification.vibrate).setLights(localNotification.ledARGB, localNotification.ledOnMS, localNotification.ledOffMS);
    if ((localNotification.flags & 0x2) != 0)
    {
      bool = true;
      localObject2 = ((Notification.Builder)localObject2).setOngoing(bool);
      if ((localNotification.flags & 0x8) == 0) {
        break label275;
      }
      bool = true;
      label169:
      localObject2 = ((Notification.Builder)localObject2).setOnlyAlertOnce(bool);
      if ((localNotification.flags & 0x10) == 0) {
        break label281;
      }
      bool = true;
      label191:
      localObject1 = ((Notification.Builder)localObject2).setAutoCancel(bool).setDefaults(localNotification.defaults).setContentTitle((CharSequence)localObject1).setContentText(localCharSequence1).setContentInfo(localCharSequence2).setContentIntent(localPendingIntent2).setDeleteIntent(localNotification.deleteIntent);
      if ((localNotification.flags & 0x80) == 0) {
        break label287;
      }
    }
    label275:
    label281:
    label287:
    for (boolean bool = true;; bool = false)
    {
      return ((Notification.Builder)localObject1).setFullScreenIntent(localPendingIntent1, bool).setLargeIcon(paramav).setNumber(i).getNotification();
      bool = false;
      break;
      bool = false;
      break label169;
      bool = false;
      break label191;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */