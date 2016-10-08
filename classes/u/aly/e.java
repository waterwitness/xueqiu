package u.aly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class e
  extends ao
  implements ha
{
  public e(String paramString, Map<String, Object> paramMap)
  {
    this.a = paramString;
    a(System.currentTimeMillis());
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
      if (this.d <= 0) {
        break label265;
      }
    }
    label263:
    label265:
    for (int i = this.d;; i = 1)
    {
      a(i);
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
          break label263;
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
      break;
    }
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
      if (((bz)localObject).d == null) {
        ((bz)localObject).d = new ArrayList();
      }
      ((bz)localObject).d.add(this);
      return;
      localbz = (bz)((Iterator)localObject).next();
      if (!paramString.equals(localbz.a)) {
        break;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */