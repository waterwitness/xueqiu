package com.xiaomi.mipush.sdk;

import com.xiaomi.a.a.f.d;
import com.xiaomi.g.a.a;
import com.xiaomi.g.a.p;
import com.xiaomi.push.service.ak;
import java.util.HashMap;
import java.util.Map;

final class m
  implements Runnable
{
  public final void run()
  {
    if (ak.b(b.b()) != null)
    {
      p localp = new p();
      localp.d = j.a(b.b()).b.a;
      localp.e = "client_info_update";
      localp.c = b.a();
      localp.h = new HashMap();
      localp.h.put("imei_md5", d.a(ak.b(b.b())));
      s.a(b.b()).a(localp, a.i, false, null);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */