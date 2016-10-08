package com.xueqiu.android.message.client;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.xueqiu.android.base.SnowBallApplication;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.community.model.Remind;
import com.xueqiu.android.message.RecentTalkActivity;
import rx.c.b;

public final class d
{
  Context a;
  private SnowBallApplication b;
  
  public d(Context paramContext, SnowBallApplication paramSnowBallApplication)
  {
    this.a = paramContext;
    this.b = paramSnowBallApplication;
  }
  
  final void a(Intent[] paramArrayOfIntent, String paramString, int paramInt)
  {
    paramArrayOfIntent = PendingIntent.getActivities(this.a.getApplicationContext(), paramInt, paramArrayOfIntent, 134217728);
    aa.a(this.a, paramArrayOfIntent, paramString, paramInt, false, true);
  }
  
  public final Intent[] a(Intent paramIntent)
  {
    Intent localIntent = new Intent(this.a, MainActivity.class);
    localIntent.setFlags(603979776);
    localIntent.putExtra("extra_notification", 6);
    return new Intent[] { localIntent, new Intent(this.a, RecentTalkActivity.class), paramIntent };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\client\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */