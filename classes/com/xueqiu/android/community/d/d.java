package com.xueqiu.android.community.d;

import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.community.TopicFeaturedListActivity;
import com.xueqiu.android.community.b.k;
import com.xueqiu.android.community.b.l;
import com.xueqiu.android.community.model.TopicInfo;
import java.util.ArrayList;

public final class d
  implements k
{
  l a;
  int b = 1;
  int c = 0;
  private ai d;
  
  public d(l paraml)
  {
    this.a = paraml;
    this.d = com.xueqiu.android.base.q.a().b();
  }
  
  public final void a()
  {
    ai localai = this.d;
    p local1 = new p((TopicFeaturedListActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
        d.this.a.k();
        d.this.a.b(false);
      }
    };
    localai.g.a(local1);
  }
  
  public final void a(final boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.b = 1;
      this.c = 0;
    }
    if ((this.c != 0) && (this.b > this.c))
    {
      this.a.j();
      return;
    }
    this.d.a(this.b, 10, null, new p((TopicFeaturedListActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy, true);
      }
    });
  }
  
  public final void b() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */