package u.aly;

import android.content.Context;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class gr
{
  static final byte[] a = "pbl0".getBytes();
  bn b = null;
  Context c;
  
  public gr(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public static String a(bn parambn)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = new TreeMap(parambn.a).entrySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.append(parambn.b);
        return ex.a(localStringBuilder.toString()).toLowerCase(Locale.US);
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append(((bt)localEntry.getValue()).a);
      localStringBuilder.append(((bt)localEntry.getValue()).b);
      localStringBuilder.append(((bt)localEntry.getValue()).c);
    }
  }
  
  public final bn a()
  {
    try
    {
      bn localbn = this.b;
      return localbn;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */