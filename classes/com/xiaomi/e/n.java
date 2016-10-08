package com.xiaomi.e;

import com.xiaomi.e.c.a;
import com.xiaomi.e.c.e;
import com.xiaomi.e.c.f;
import com.xiaomi.e.c.k;
import com.xiaomi.e.e.g;
import java.util.Collection;
import java.util.Iterator;

public final class n
  extends e
{
  public o a;
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<bind ");
    if (d() != null) {
      localStringBuilder.append("id=\"" + d() + "\" ");
    }
    if (this.r != null) {
      localStringBuilder.append("to=\"").append(g.a(this.r)).append("\" ");
    }
    if (this.s != null) {
      localStringBuilder.append("from=\"").append(g.a(this.s)).append("\" ");
    }
    if (this.t != null) {
      localStringBuilder.append(" chid=\"").append(g.a(this.t)).append("\" ");
    }
    if (this.a == null) {
      localStringBuilder.append("type=\"result\">");
    }
    while (e() != null)
    {
      localObject = e().iterator();
      while (((Iterator)localObject).hasNext()) {
        localStringBuilder.append(((a)((Iterator)localObject).next()).b());
      }
      localStringBuilder.append("type=\"").append(this.a).append("\">");
    }
    Object localObject = this.v;
    if (localObject != null) {
      localStringBuilder.append(((k)localObject).b());
    }
    localStringBuilder.append("</bind>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */