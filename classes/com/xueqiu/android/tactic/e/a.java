package com.xueqiu.android.tactic.e;

import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.al;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.common.model.parser.PagedIdList;
import com.xueqiu.android.tactic.MyPushListActivity;
import com.xueqiu.android.tactic.b.b;
import com.xueqiu.android.tactic.b.c;
import com.xueqiu.android.tactic.d.h;

public final class a
  implements b
{
  long a = 0L;
  long b = 0L;
  c c;
  private ai d;
  
  public a(c paramc)
  {
    this.c = paramc;
    this.d = com.xueqiu.android.base.q.a().b();
  }
  
  public final void a()
  {
    a(false);
  }
  
  public final void a(final boolean paramBoolean)
  {
    long l2;
    long l1;
    if (paramBoolean)
    {
      if (this.a < 0L) {
        return;
      }
      l2 = this.a;
      l1 = 0L;
    }
    for (;;)
    {
      ai localai = this.d;
      p local1 = new p((MyPushListActivity)this.c)
      {
        public final void a(y paramAnonymousy)
        {
          a.this.c.j();
        }
      };
      localai.n.a(l1, l2, local1);
      return;
      l1 = this.b;
      l2 = 0L;
    }
  }
  
  public final void b() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */