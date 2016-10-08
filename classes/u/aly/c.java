package u.aly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class c
  extends ao
  implements ha
{
  public c(String paramString, Map<String, Object> paramMap, long paramLong, int paramInt)
  {
    this.a = paramString;
    a(System.currentTimeMillis());
    int i;
    if (paramMap.size() > 0)
    {
      paramString = paramMap.entrySet().iterator();
      paramMap = new HashMap();
      i = 0;
      if ((i >= 10) || (!paramString.hasNext())) {
        this.b = paramMap;
      }
    }
    else
    {
      if (paramInt <= 0) {
        break label275;
      }
    }
    for (;;)
    {
      a(paramInt);
      if (paramLong > 0L)
      {
        this.c = paramLong;
        b();
      }
      return;
      Map.Entry localEntry = (Map.Entry)paramString.next();
      cx localcx = new cx();
      Object localObject = localEntry.getValue();
      if ((localObject instanceof String)) {
        localcx.a((String)localObject);
      }
      for (;;)
      {
        if (!localcx.d()) {
          break label273;
        }
        paramMap.put((String)localEntry.getKey(), localcx);
        i += 1;
        break;
        if ((localObject instanceof Long)) {
          localcx.a(((Long)localObject).longValue());
        } else if ((localObject instanceof Integer)) {
          localcx.a(((Integer)localObject).longValue());
        } else if ((localObject instanceof Float)) {
          localcx.a(((Float)localObject).longValue());
        } else if ((localObject instanceof Double)) {
          localcx.a(((Double)localObject).longValue());
        }
      }
      label273:
      break;
      label275:
      paramInt = 1;
    }
  }
  
  public static String a(String paramString1, String paramString2)
  {
    return paramString1 + paramString2;
  }
  
  public static b a(String paramString1, String paramString2, Map<String, Object> paramMap)
  {
    b localb = new b();
    localb.b = paramString1;
    localb.c = paramString2;
    localb.d = paramMap;
    return localb;
  }
  
  public final void a(dz paramdz, String paramString)
  {
    Object localObject;
    bz localbz;
    if (paramdz.b() > 0)
    {
      localObject = paramdz.f.iterator();
      if (((Iterator)localObject).hasNext()) {}
    }
    else
    {
      localbz = null;
    }
    for (;;)
    {
      localObject = localbz;
      if (localbz == null)
      {
        localObject = new bz();
        ((bz)localObject).a = paramString;
        paramdz.a((bz)localObject);
      }
      if (((bz)localObject).c == null) {
        ((bz)localObject).c = new ArrayList();
      }
      ((bz)localObject).c.add(this);
      return;
      localbz = (bz)((Iterator)localObject).next();
      if (!paramString.equals(localbz.a)) {
        break;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */