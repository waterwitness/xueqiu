package u.a;

import android.content.Context;
import android.content.res.Resources;

public class c
{
  private static final String a = c.class.getName();
  private static c b = null;
  private Resources c;
  private final String d;
  private final String e = "drawable";
  private final String f = "id";
  private final String g = "layout";
  private final String h = "anim";
  private final String i = "style";
  private final String j = "string";
  private final String k = "array";
  
  private c(Context paramContext)
  {
    this.c = paramContext.getResources();
    this.d = paramContext.getPackageName();
  }
  
  public static c a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new c(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  public final int a(String paramString1, String paramString2)
  {
    int n = this.c.getIdentifier(paramString1, paramString2, this.d);
    int m = n;
    if (n == 0)
    {
      b.b(a, "getRes(" + paramString2 + "/ " + paramString1 + ")");
      b.b(a, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. ");
      m = 0;
    }
    return m;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */