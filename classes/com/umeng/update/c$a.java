package com.umeng.update;

import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.content.Context;
import android.os.Build.VERSION;
import com.umeng.update.util.b;

class c$a
  extends b
{
  private String e = "";
  private String f = "";
  
  public c$a(c paramc, Context paramContext)
  {
    super(paramContext);
  }
  
  public Notification a()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return this.d.build();
    }
    if (Build.VERSION.SDK_INT >= 14) {
      return this.d.getNotification();
    }
    this.c.setLatestEventInfo(this.b, this.e, this.f, this.c.contentIntent);
    return this.c;
  }
  
  public a a(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setContentText(paramCharSequence);
    }
    this.f = paramCharSequence.toString();
    return this;
  }
  
  public a b(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      this.d.setContentTitle(paramCharSequence);
    }
    this.e = paramCharSequence.toString();
    return this;
  }
  
  public a c(CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      this.d.setStyle(new Notification.BigTextStyle().bigText(paramCharSequence));
    }
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\c$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */