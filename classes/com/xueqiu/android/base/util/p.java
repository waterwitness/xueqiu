package com.xueqiu.android.base.util;

import android.content.Context;
import com.d.a.b.d.a;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class p
  extends a
{
  public p(Context paramContext)
  {
    super(paramContext);
  }
  
  protected final HttpURLConnection b(String paramString, Object paramObject)
  {
    paramString = super.b(paramString, paramObject);
    if ((paramObject != null) && ((paramObject instanceof Map)))
    {
      paramObject = ((Map)paramObject).entrySet().iterator();
      while (((Iterator)paramObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)paramObject).next();
        paramString.setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */