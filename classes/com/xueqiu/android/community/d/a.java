package com.xueqiu.android.community.d;

import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.parser.PagedIdList;
import com.xueqiu.android.community.b.b;
import com.xueqiu.android.community.b.c;
import com.xueqiu.android.community.c.m;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;

public final class a
  implements b
{
  public c a;
  long b = 0L;
  long c = 0L;
  boolean d = false;
  private int e = 0;
  private int f = 0;
  
  public a(c paramc, int paramInt)
  {
    this.a = paramc;
    this.f = paramInt;
  }
  
  public final void a()
  {
    b(true);
    com.xueqiu.android.base.q.a().b().b(new p((m)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  public final void a(final boolean paramBoolean)
  {
    if (this.d) {}
    do
    {
      return;
      if (!paramBoolean) {
        break;
      }
    } while (this.c <= 0L);
    long l = this.c;
    ai localai;
    int i;
    Object localObject;
    if (this.f == 0)
    {
      localai = com.xueqiu.android.base.q.a().b();
      i = this.e;
      localObject = new p((m)this.a)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          a.this.d = false;
        }
      };
      localai.g.a(i, l, (p)localObject);
    }
    for (;;)
    {
      this.d = true;
      return;
      l = 0L;
      break;
      localai = com.xueqiu.android.base.q.a().b();
      i = this.e;
      localObject = new p((m)this.a)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
          a.this.d = false;
        }
      };
      localai.g.b(i, l, (p)localObject);
    }
  }
  
  public final void b() {}
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (this.e = 0;; this.e = 1)
    {
      a(false);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */