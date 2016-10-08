package u.aly;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class gy
{
  public gw a;
  public gv b;
  private final int c = 128;
  private final int d = 256;
  private Context e;
  
  public gy(Context paramContext)
  {
    if (paramContext == null) {
      throw new RuntimeException("Context is null, can't track event");
    }
    this.e = paramContext.getApplicationContext();
    this.a = new gw(this.e);
    paramContext = this.a;
    if (AnalyticsConfig.ENABLE_MEMORY_BUFFER) {}
    for (boolean bool = false;; bool = true)
    {
      paramContext.a = bool;
      this.b = gv.a(this.e);
      return;
    }
  }
  
  public static boolean a(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.trim().getBytes().length;
      if ((i > 0) && (i <= 128)) {
        return true;
      }
    }
    es.b("MobclickAgent", "Event id is empty or too long in tracking Event");
    return false;
  }
  
  public static boolean a(Map<String, Object> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      es.b("MobclickAgent", "map is null or empty in onEvent");
      return false;
    }
    paramMap = paramMap.entrySet().iterator();
    Map.Entry localEntry;
    do
    {
      if (!paramMap.hasNext()) {
        return true;
      }
      localEntry = (Map.Entry)paramMap.next();
      if (!a((String)localEntry.getKey())) {
        return false;
      }
      if (localEntry.getValue() == null) {
        return false;
      }
    } while ((!(localEntry.getValue() instanceof String)) || (b(localEntry.getValue().toString())));
    return false;
  }
  
  public static boolean b(String paramString)
  {
    if (paramString == null) {}
    while (paramString.trim().getBytes().length <= 256) {
      return true;
    }
    es.b("MobclickAgent", "Event label or value is empty or too long in tracking Event");
    return false;
  }
  
  public final void a(String paramString1, String paramString2, long paramLong, int paramInt)
  {
    if ((!a(paramString1)) || (!b(paramString2))) {
      return;
    }
    HashMap localHashMap = new HashMap();
    String str = paramString2;
    if (paramString2 == null) {
      str = "";
    }
    localHashMap.put(paramString1, str);
    this.b.a(new c(paramString1, localHashMap, paramLong, paramInt));
  }
  
  public final void a(String paramString, Map<String, Object> paramMap, long paramLong)
  {
    try
    {
      if (!a(paramString)) {
        return;
      }
      if (a(paramMap))
      {
        this.b.a(new c(paramString, paramMap, paramLong, -1));
        return;
      }
    }
    catch (Exception paramString)
    {
      es.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */