package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.t;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONException;

public final class ao
  extends f
{
  private XMPushService a;
  private byte[] b;
  private String c;
  private String e;
  private String f;
  
  public ao(XMPushService paramXMPushService, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    super(9);
    this.a = paramXMPushService;
    this.c = paramString1;
    this.b = paramArrayOfByte;
    this.e = paramString2;
    this.f = paramString3;
  }
  
  public final void a()
  {
    Object localObject1 = am.a(this.a);
    if (localObject1 == null)
    {
      try
      {
        al localal = am.a(this.a, this.c, this.e, this.f);
        localObject1 = localal;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          c.a(localIOException);
        }
      }
      catch (JSONException localJSONException)
      {
        c.a(localJSONException);
      }
      if (localObject1 != null) {
        break label71;
      }
      c.d("no account for mipush");
      ap.a(this.a, 70000002, "no account.");
    }
    label71:
    bd localbd;
    do
    {
      return;
      break;
      localObject2 = bb.a().c("5");
      if (((Collection)localObject2).isEmpty())
      {
        localObject1 = ((al)localObject1).a(this.a);
        this.a.a((bd)localObject1);
        bb.a().a((bd)localObject1);
      }
      for (;;)
      {
        if (!this.a.b()) {
          break label223;
        }
        try
        {
          if (((bd)localObject1).m != bf.c) {
            break;
          }
          this.a.a(this.c, this.b);
          return;
        }
        catch (t localt)
        {
          c.a(localt);
          this.a.a(10, localt);
          return;
        }
        localbd = (bd)((Collection)localObject2).iterator().next();
      }
    } while (localbd.m != bf.a);
    Object localObject2 = this.a;
    XMPushService localXMPushService = this.a;
    localXMPushService.getClass();
    ((XMPushService)localObject2).a(new b(localXMPushService, localbd), 0L);
    return;
    label223:
    this.a.a(true);
  }
  
  public final String b()
  {
    return "register app";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */