package u.aly;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class fo
  implements Serializable
{
  private static Map<Class<? extends fa>, Map<? extends fg, fo>> d = new HashMap();
  public final String a;
  public final byte b;
  public final fp c;
  
  public fo(String paramString, byte paramByte, fp paramfp)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramfp;
  }
  
  public static void a(Class<? extends fa> paramClass, Map<? extends fg, fo> paramMap)
  {
    d.put(paramClass, paramMap);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */