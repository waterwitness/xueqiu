package com.e.a.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class c
  implements Iterable<i>
{
  final List<i> a = new LinkedList();
  final Map<String, List<i>> b = new HashMap();
  
  public final i a(String paramString)
  {
    paramString = paramString.toLowerCase(Locale.ENGLISH);
    paramString = (List)this.b.get(paramString);
    if ((paramString != null) && (!paramString.isEmpty())) {
      return (i)paramString.get(0);
    }
    return null;
  }
  
  public final Iterator<i> iterator()
  {
    return Collections.unmodifiableList(this.a).iterator();
  }
  
  public final String toString()
  {
    return this.a.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */