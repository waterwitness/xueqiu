package android.support.v4.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class av
{
  Notification A;
  public Notification B = new Notification();
  public ArrayList<String> C;
  public Context a;
  public CharSequence b;
  public CharSequence c;
  public PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  public Bitmap g;
  public CharSequence h;
  public int i;
  int j;
  boolean k = true;
  public boolean l;
  public bh m;
  public CharSequence n;
  int o;
  int p;
  boolean q;
  String r;
  boolean s;
  String t;
  public ArrayList<as> u = new ArrayList();
  boolean v = false;
  String w;
  Bundle x;
  int y = 0;
  int z = 0;
  
  public av(Context paramContext)
  {
    this.a = paramContext;
    this.B.when = System.currentTimeMillis();
    this.B.audioStreamType = -1;
    this.j = 0;
    this.C = new ArrayList();
  }
  
  protected static CharSequence d(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() <= 5120) {
      return paramCharSequence;
    }
    return paramCharSequence.subSequence(0, 5120);
  }
  
  public final av a()
  {
    this.o = 0;
    this.p = 0;
    this.q = true;
    return this;
  }
  
  public final av a(int paramInt)
  {
    this.B.icon = paramInt;
    return this;
  }
  
  public final av a(bh parambh)
  {
    if (this.m != parambh)
    {
      this.m = parambh;
      if (this.m != null)
      {
        parambh = this.m;
        if (parambh.d != this)
        {
          parambh.d = this;
          if (parambh.d != null) {
            parambh.d.a(parambh);
          }
        }
      }
    }
    return this;
  }
  
  public final av a(CharSequence paramCharSequence)
  {
    this.b = d(paramCharSequence);
    return this;
  }
  
  public final av a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = this.B;
      localNotification.flags |= 0x10;
      return this;
    }
    Notification localNotification = this.B;
    localNotification.flags &= 0xFFFFFFEF;
    return this;
  }
  
  public final Notification b()
  {
    ay localay = ar.a();
    new aw();
    return localay.a(this);
  }
  
  public final av b(CharSequence paramCharSequence)
  {
    this.c = d(paramCharSequence);
    return this;
  }
  
  public final av c(CharSequence paramCharSequence)
  {
    this.B.tickerText = d(paramCharSequence);
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */