package com.xueqiu.android.community.d;

import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.ReplierProfileActivity;
import com.xueqiu.android.community.b.e;
import com.xueqiu.android.community.b.f;
import com.xueqiu.android.community.model.User;

public class b
  implements e
{
  private static final String b = b.class.getSimpleName();
  public boolean a = false;
  private f c;
  private long d;
  
  public b(f paramf, long paramLong)
  {
    this.c = paramf;
    this.d = paramLong;
  }
  
  public final void a()
  {
    long l = this.d;
    v.a(b, "getUserInfo userId = " + l);
    Object localObject = new p((ReplierProfileActivity)this.c)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    com.xueqiu.android.base.q.a().b().g(l, (p)localObject);
    l = this.d;
    localObject = new p((ReplierProfileActivity)this.c)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    com.xueqiu.android.base.q.a().b().h.f(String.valueOf(l), (p)localObject);
  }
  
  public final void b() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */