package com.umeng.update.util;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import java.lang.reflect.Field;

public class b
{
  public Context b;
  public Notification c = new Notification();
  public Notification.Builder d;
  
  public b(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    if (Build.VERSION.SDK_INT >= 14) {
      this.d = new Notification.Builder(paramContext);
    }
  }
  
  public b a(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setSmallIcon(paramInt);
    }
    this.c.icon = paramInt;
    return this;
  }
  
  public b a(long paramLong)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setWhen(paramLong);
    }
    this.c.when = paramLong;
    return this;
  }
  
  public b a(PendingIntent paramPendingIntent)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setContentIntent(paramPendingIntent);
    }
    this.c.contentIntent = paramPendingIntent;
    return this;
  }
  
  public b a(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setOngoing(paramBoolean);
    }
    if (paramBoolean)
    {
      localNotification = this.c;
      localNotification.flags |= 0x2;
      return this;
    }
    Notification localNotification = this.c;
    localNotification.flags &= 0xFFFFFFFD;
    return this;
  }
  
  public b b(RemoteViews paramRemoteViews)
  {
    if ((Build.VERSION.SDK_INT < 16) && (Build.VERSION.SDK_INT >= 14)) {
      this.d.setContent(paramRemoteViews);
    }
    this.c.contentView = paramRemoteViews;
    return this;
  }
  
  public b b(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setAutoCancel(paramBoolean);
    }
    if (paramBoolean)
    {
      localNotification = this.c;
      localNotification.flags |= 0x10;
      return this;
    }
    Notification localNotification = this.c;
    localNotification.flags &= 0xFFFFFFEF;
    return this;
  }
  
  public b d(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setTicker(paramCharSequence);
    }
    this.c.tickerText = paramCharSequence;
    return this;
  }
  
  public void e()
  {
    if (Build.VERSION.SDK_INT >= 16) {}
    try
    {
      Field localField = Notification.Builder.class.getDeclaredField("mActions");
      localField.setAccessible(true);
      localField.set(this.d, localField.get(this.d).getClass().newInstance());
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\util\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */