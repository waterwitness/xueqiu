package com.xiaomi.e;

import android.text.TextUtils;
import com.xiaomi.a.a.f.b;
import com.xiaomi.e.c.e;
import com.xiaomi.e.c.f;
import com.xiaomi.e.e.g;
import com.xiaomi.push.service.bd;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class m
  extends e
{
  public m(l paraml, bd parambd, String paramString, a parama)
  {
    HashMap localHashMap = new HashMap();
    int i = parama.i();
    localHashMap.put("challenge", paramString);
    localHashMap.put("token", parambd.c);
    localHashMap.put("chid", parambd.h);
    localHashMap.put("from", parambd.b);
    localHashMap.put("id", d());
    localHashMap.put("to", "xiaomi.com");
    if (parambd.e)
    {
      localHashMap.put("kick", "1");
      if (parama.k() <= 0L) {
        break label609;
      }
      paraml = String.format("conn:%1$d,t:%2$d", new Object[] { Integer.valueOf(i), Long.valueOf(parama.k()) });
      localHashMap.put("pf", paraml);
      parama.j();
      parama.l();
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(parambd.f))
      {
        localHashMap.put("client_attrs", parambd.f);
        label210:
        if (TextUtils.isEmpty(parambd.g)) {
          break label540;
        }
        localHashMap.put("cloud_attrs", parambd.g);
        label234:
        if ((!parambd.d.equals("XIAOMI-PASS")) && (!parambd.d.equals("XMPUSH-PASS"))) {
          break label555;
        }
        paramString = b.a(parambd.d, localHashMap, parambd.i);
        label272:
        this.t = parambd.h;
        this.s = parambd.b;
        this.r = "xiaomi.com";
        this.u = parambd.a;
        parama = new com.xiaomi.e.c.a("token");
        parama.b(parambd.c);
        a(parama);
        locala = new com.xiaomi.e.c.a("kick");
        if (!parambd.e) {
          break label571;
        }
        parama = "1";
        label350:
        locala.b(parama);
        a(locala);
        parama = new com.xiaomi.e.c.a("sig");
        parama.b(paramString);
        a(parama);
        paramString = new com.xiaomi.e.c.a("method");
        if (TextUtils.isEmpty(parambd.d)) {
          break label578;
        }
        paramString.b(parambd.d);
        label414:
        a(paramString);
        parama = new com.xiaomi.e.c.a("client_attrs");
        if (parambd.f != null) {
          break label587;
        }
        paramString = "";
        label440:
        parama.b(paramString);
        a(parama);
        paramString = new com.xiaomi.e.c.a("cloud_attrs");
        if (parambd.g != null) {
          break label598;
        }
      }
      label540:
      label555:
      label571:
      label578:
      label587:
      label598:
      for (parambd = "";; parambd = g.a(parambd.g))
      {
        paramString.b(parambd);
        a(paramString);
        if (!TextUtils.isEmpty(paraml))
        {
          parambd = new com.xiaomi.e.c.a("pf");
          parambd.b(paraml);
          a(parambd);
        }
        return;
        localHashMap.put("kick", "0");
        break;
        localHashMap.put("client_attrs", "");
        break label210;
        localHashMap.put("cloud_attrs", "");
        break label234;
        parambd.d.equals("XIAOMI-SASL");
        paramString = locala;
        break label272;
        parama = "0";
        break label350;
        paramString.b("XIAOMI-SASL");
        break label414;
        paramString = g.a(parambd.f);
        break label440;
      }
      label609:
      paraml = null;
    }
  }
  
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
      localStringBuilder.append("chid=\"").append(g.a(this.t)).append("\">");
    }
    if (e() != null)
    {
      Iterator localIterator = e().iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append(((com.xiaomi.e.c.a)localIterator.next()).b());
      }
    }
    localStringBuilder.append("</bind>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */