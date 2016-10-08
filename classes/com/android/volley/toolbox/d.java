package com.android.volley.toolbox;

import com.android.volley.z;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class d
{
  public long a;
  public String b;
  public String c;
  public long d;
  public long e;
  public long f;
  public Map<String, String> g;
  
  private d() {}
  
  public d(String paramString, com.android.volley.c paramc)
  {
    this.b = paramString;
    this.a = paramc.a.length;
    this.c = paramc.b;
    this.d = paramc.c;
    this.e = paramc.d;
    this.f = paramc.e;
    this.g = paramc.f;
  }
  
  public static d a(InputStream paramInputStream)
  {
    d locald = new d();
    if (c.a(paramInputStream) != 538183203) {
      throw new IOException();
    }
    locald.b = c.c(paramInputStream);
    locald.c = c.c(paramInputStream);
    if (locald.c.equals("")) {
      locald.c = null;
    }
    locald.d = c.b(paramInputStream);
    locald.e = c.b(paramInputStream);
    locald.f = c.b(paramInputStream);
    locald.g = c.d(paramInputStream);
    return locald;
  }
  
  public final boolean a(OutputStream paramOutputStream)
  {
    for (;;)
    {
      try
      {
        c.a(paramOutputStream, 538183203);
        c.a(paramOutputStream, this.b);
        if (this.c == null)
        {
          localObject = "";
          c.a(paramOutputStream, (String)localObject);
          c.a(paramOutputStream, this.d);
          c.a(paramOutputStream, this.e);
          c.a(paramOutputStream, this.f);
          localObject = this.g;
          if (localObject == null) {
            break;
          }
          c.a(paramOutputStream, ((Map)localObject).size());
          localObject = ((Map)localObject).entrySet().iterator();
          if (!((Iterator)localObject).hasNext()) {
            break label164;
          }
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          c.a(paramOutputStream, (String)localEntry.getKey());
          c.a(paramOutputStream, (String)localEntry.getValue());
          continue;
        }
        Object localObject = this.c;
      }
      catch (IOException paramOutputStream)
      {
        z.b("%s", new Object[] { paramOutputStream.toString() });
        return false;
      }
    }
    c.a(paramOutputStream, 0);
    label164:
    paramOutputStream.flush();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */