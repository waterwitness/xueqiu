package com.tencent.open;

import java.util.HashMap;

public class TemporaryStorage
{
  private static HashMap a = new HashMap();
  
  public static Object a(String paramString)
  {
    return a.remove(paramString);
  }
  
  public static Object a(String paramString, Object paramObject)
  {
    return a.put(paramString, paramObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\TemporaryStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */