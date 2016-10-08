package org.apache.a.a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class b
  implements Serializable
{
  private static Map<Class<? extends org.apache.a.b>, Map<?, b>> d = new HashMap();
  public final String a;
  public final byte b;
  public final c c;
  
  public b(String paramString, byte paramByte, c paramc)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramc;
  }
  
  public static void a(Class<? extends org.apache.a.b> paramClass, Map<?, b> paramMap)
  {
    d.put(paramClass, paramMap);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */