package u.aly;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class hj
{
  public final ArrayList<hh> a = new ArrayList();
  private final Map<String, Long> b = new HashMap();
  
  public static List<cr> a(SharedPreferences paramSharedPreferences)
  {
    Object localObject = paramSharedPreferences.getString("activities", "");
    if ("".equals(localObject)) {
      return null;
    }
    paramSharedPreferences = new ArrayList();
    for (;;)
    {
      try
      {
        localObject = ((String)localObject).split(";");
        i = 0;
        int j = localObject.length;
        if (i < j) {
          continue;
        }
      }
      catch (Exception localException)
      {
        int i;
        CharSequence localCharSequence;
        localException.printStackTrace();
        continue;
      }
      if (paramSharedPreferences.size() <= 0) {
        break;
      }
      return paramSharedPreferences;
      localCharSequence = localObject[i];
      if (!TextUtils.isEmpty(localCharSequence)) {
        paramSharedPreferences.add(new f(localCharSequence));
      }
      i += 1;
    }
  }
  
  public final void a()
  {
    synchronized (this.b)
    {
      Iterator localIterator = this.b.entrySet().iterator();
      String str = null;
      long l = 0L;
      Map.Entry localEntry;
      do
      {
        if (!localIterator.hasNext())
        {
          if (str != null) {
            b(str);
          }
          return;
        }
        localEntry = (Map.Entry)localIterator.next();
      } while (((Long)localEntry.getValue()).longValue() <= l);
      l = ((Long)localEntry.getValue()).longValue();
      str = (String)localEntry.getKey();
    }
  }
  
  public final void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      synchronized (this.b)
      {
        this.b.put(paramString, Long.valueOf(System.currentTimeMillis()));
        return;
      }
    }
  }
  
  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    Long localLong;
    synchronized (this.b)
    {
      localLong = (Long)this.b.remove(paramString);
      if (localLong == null)
      {
        es.d("MobclickAgent", String.format("please call 'onPageStart(%s)' before onPageEnd", new Object[] { paramString }));
        return;
      }
    }
    long l1 = System.currentTimeMillis();
    long l2 = localLong.longValue();
    synchronized (this.a)
    {
      this.a.add(new hh(paramString, l1 - l2));
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\hj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */