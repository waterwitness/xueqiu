package com.e.a.a;

import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class b
{
  final c a;
  final com.e.a.a.a.c b;
  private final String c;
  
  public b(String paramString, com.e.a.a.a.c paramc)
  {
    com.e.b.a.a(paramString, "Name");
    com.e.b.a.a(paramc, "Body");
    this.c = paramString;
    this.b = paramc;
    this.a = new c();
    paramString = new StringBuilder();
    paramString.append("form-data; name=\"");
    paramString.append(this.c);
    paramString.append("\"");
    if (paramc.c() != null)
    {
      paramString.append("; filename=\"");
      paramString.append(paramc.c());
      paramString.append("\"");
    }
    a("Content-Disposition", paramString.toString());
    if ((paramc instanceof com.e.a.a.a.a))
    {
      paramString = ((com.e.a.a.a.a)paramc).a;
      if (paramString == null) {
        break label161;
      }
      a("Content-Type", paramString.toString());
    }
    for (;;)
    {
      a("Content-Transfer-Encoding", paramc.d());
      return;
      paramString = null;
      break;
      label161:
      paramString = new StringBuilder();
      paramString.append(paramc.a());
      if (paramc.b() != null)
      {
        paramString.append("; charset=");
        paramString.append(paramc.b());
      }
      a("Content-Type", paramString.toString());
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    com.e.b.a.a(paramString1, "Field name");
    c localc = this.a;
    i locali = new i(paramString1, paramString2);
    String str = locali.a.toLowerCase(Locale.ENGLISH);
    paramString2 = (List)localc.b.get(str);
    paramString1 = paramString2;
    if (paramString2 == null)
    {
      paramString1 = new LinkedList();
      localc.b.put(str, paramString1);
    }
    paramString1.add(locali);
    localc.a.add(locali);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */