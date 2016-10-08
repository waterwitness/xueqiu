package com.xiaomi.e.c;

import android.os.Bundle;
import com.xiaomi.e.e.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
  extends e
{
  public c a = c.a;
  private final Map<String, String> b = new HashMap();
  
  public b() {}
  
  public b(Bundle paramBundle)
  {
    super(paramBundle);
    if (paramBundle.containsKey("ext_iq_type")) {
      this.a = c.a(paramBundle.getString("ext_iq_type"));
    }
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<iq ");
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
      localStringBuilder.append("chid=\"").append(g.a(this.t)).append("\" ");
    }
    Object localObject = this.b.entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      localStringBuilder.append(g.a((String)localEntry.getKey())).append("=\"");
      localStringBuilder.append(g.a((String)localEntry.getValue())).append("\" ");
    }
    if (this.a == null) {
      localStringBuilder.append("type=\"get\">");
    }
    for (;;)
    {
      localStringBuilder.append(f());
      localObject = this.v;
      if (localObject != null) {
        localStringBuilder.append(((k)localObject).b());
      }
      localStringBuilder.append("</iq>");
      return localStringBuilder.toString();
      localStringBuilder.append("type=\"").append(this.a).append("\">");
    }
  }
  
  public final String a(String paramString)
  {
    try
    {
      paramString = (String)this.b.get(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final void a(c paramc)
  {
    if (paramc == null)
    {
      this.a = c.a;
      return;
    }
    this.a = paramc;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      this.b.put(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final void a(Map<String, String> paramMap)
  {
    try
    {
      this.b.putAll(paramMap);
      return;
    }
    finally
    {
      paramMap = finally;
      throw paramMap;
    }
  }
  
  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (this.a != null) {
      localBundle.putString("ext_iq_type", this.a.toString());
    }
    return localBundle;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */