package com.tencent.mm.sdk.a.a;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.b.c;

public final class a
{
  public static boolean a(Context paramContext, a.a parama)
  {
    if ((paramContext == null) || (parama == null))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessage", "send fail, invalid argument");
      return false;
    }
    if (c.a(parama.m))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessage", "send fail, action is null");
      return false;
    }
    String str1 = null;
    if (!c.a(parama.l)) {
      str1 = parama.l + ".permission.MM_MESSAGE";
    }
    Intent localIntent = new Intent(parama.m);
    if (parama.k != null) {
      localIntent.putExtras(parama.k);
    }
    String str2 = paramContext.getPackageName();
    localIntent.putExtra("_mmessage_sdkVersion", 570425345);
    localIntent.putExtra("_mmessage_appPackage", str2);
    localIntent.putExtra("_mmessage_content", parama.j);
    localIntent.putExtra("_mmessage_checksum", b.a(parama.j, 570425345, str2));
    paramContext.sendBroadcast(localIntent, str1);
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.MMessage", "send mm message, intent=" + localIntent + ", perm=" + str1);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */