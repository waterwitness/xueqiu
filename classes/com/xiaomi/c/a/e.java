package com.xiaomi.c.a;

import com.xiaomi.a.a.b.c;
import java.text.SimpleDateFormat;
import java.util.Date;

final class e
  implements com.xiaomi.e.e
{
  e(a parama) {}
  
  public final void a(com.xiaomi.e.a parama)
  {
    c.c("SMACK " + a.a(this.a).format(new Date()) + " Connection reconnected (" + a.b(this.a).hashCode() + ")");
  }
  
  public final void a(com.xiaomi.e.a parama, int paramInt, Exception paramException)
  {
    c.c("SMACK " + a.a(this.a).format(new Date()) + " Connection closed (" + a.b(this.a).hashCode() + ")");
  }
  
  public final void a(com.xiaomi.e.a parama, Exception paramException)
  {
    c.c("SMACK " + a.a(this.a).format(new Date()) + " Reconnection failed due to an exception (" + a.b(this.a).hashCode() + ")");
    paramException.printStackTrace();
  }
  
  public final void b(com.xiaomi.e.a parama)
  {
    c.c("SMACK " + a.a(this.a).format(new Date()) + " Connection started (" + a.b(this.a).hashCode() + ")");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\c\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */