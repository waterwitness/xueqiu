package com.xueqiu.android.base;

import android.content.Context;
import android.content.Intent;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xiaomi.mipush.sdk.d;
import com.xiaomi.mipush.sdk.e;
import com.xiaomi.mipush.sdk.h;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.q;
import java.util.List;

public class MiBroadcastReceiver
  extends h
{
  private String mAccount;
  private String mAlias;
  private String mCommand;
  private String mEndTime;
  private String mMessage;
  private String mReason;
  private String mRegId;
  private long mResultCode = -1L;
  private String mStartTime;
  private String mTopic;
  
  public void onCommandResult(Context paramContext, d paramd)
  {
    String str = paramd.a;
    Object localObject = paramd.d;
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      localObject = (String)((List)localObject).get(0);
      if (!"register".equals(str)) {
        break label107;
      }
      if (paramd.b == 0L)
      {
        this.mRegId = ((String)localObject);
        v.a("MiBroadcastReceiver", paramd.a + " " + this.mRegId);
        u.a();
        t.a(paramContext);
      }
    }
    label107:
    while ((!"set-account".equals(str)) || (paramd.b != 0L))
    {
      return;
      localObject = null;
      break;
    }
    this.mAccount = ((String)localObject);
    v.a("MiBroadcastReceiver", paramd.a + " " + this.mAccount);
  }
  
  public void onNotificationMessageArrived(Context paramContext, e parame) {}
  
  public void onNotificationMessageClicked(Context paramContext, e parame)
  {
    parame = (JsonObject)m.a().fromJson(parame.c, JsonObject.class);
    if (!r.a(parame, "plain"))
    {
      parame = parame.get("plain").getAsString();
      parame = (JsonObject)m.a().fromJson(parame, JsonObject.class);
      if (r.a(parame, "url")) {}
    }
    for (parame = q.c(parame.get("url").getAsString(), paramContext);; parame = null)
    {
      if (parame == null) {
        return;
      }
      Intent localIntent = new Intent(paramContext, MainActivity.class);
      localIntent.setFlags(872415232);
      localIntent.putExtra("extra_notification", 6);
      paramContext.startActivities(new Intent[] { localIntent, parame });
      return;
    }
  }
  
  public void onReceiveMessage(Context paramContext, e parame) {}
  
  public void onReceivePassThroughMessage(Context paramContext, e parame) {}
  
  public void onReceiveRegisterResult(Context paramContext, d paramd) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\MiBroadcastReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */