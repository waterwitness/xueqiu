package com.flurry.sdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class km
{
  private final HashMap<String, String> a = new HashMap();
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = this.a.entrySet();
    if (((Set)localObject).size() > 0)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        localStringBuilder.append(lt.c((String)localEntry.getKey()));
        localStringBuilder.append("=");
        localStringBuilder.append(lt.c((String)localEntry.getValue()));
        localStringBuilder.append("&");
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    }
    return localStringBuilder.toString();
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    this.a.put(paramString1, paramString2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (km)paramObject;
      if (this.a == null) {
        break;
      }
    } while (this.a.equals(((km)paramObject).a));
    while (((km)paramObject).a != null) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    if (this.a != null) {
      return this.a.hashCode();
    }
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\km.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */