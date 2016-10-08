package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@ThreadSafe
public abstract class AbstractCookieSpec
  implements CookieSpec
{
  private final Map<String, CookieAttributeHandler> attribHandlerMap;
  
  public AbstractCookieSpec()
  {
    this.attribHandlerMap = new ConcurrentHashMap(10);
  }
  
  protected AbstractCookieSpec(HashMap<String, CookieAttributeHandler> paramHashMap)
  {
    Asserts.notNull(paramHashMap, "Attribute handler map");
    this.attribHandlerMap = new ConcurrentHashMap(paramHashMap);
  }
  
  protected AbstractCookieSpec(CommonCookieAttributeHandler... paramVarArgs)
  {
    this.attribHandlerMap = new ConcurrentHashMap(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      CommonCookieAttributeHandler localCommonCookieAttributeHandler = paramVarArgs[i];
      this.attribHandlerMap.put(localCommonCookieAttributeHandler.getAttributeName(), localCommonCookieAttributeHandler);
      i += 1;
    }
  }
  
  protected CookieAttributeHandler findAttribHandler(String paramString)
  {
    return (CookieAttributeHandler)this.attribHandlerMap.get(paramString);
  }
  
  protected CookieAttributeHandler getAttribHandler(String paramString)
  {
    CookieAttributeHandler localCookieAttributeHandler = findAttribHandler(paramString);
    if (localCookieAttributeHandler != null) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Handler not registered for " + paramString + " attribute");
      return localCookieAttributeHandler;
    }
  }
  
  protected Collection<CookieAttributeHandler> getAttribHandlers()
  {
    return this.attribHandlerMap.values();
  }
  
  @Deprecated
  public void registerAttribHandler(String paramString, CookieAttributeHandler paramCookieAttributeHandler)
  {
    Args.notNull(paramString, "Attribute name");
    Args.notNull(paramCookieAttributeHandler, "Attribute handler");
    this.attribHandlerMap.put(paramString, paramCookieAttributeHandler);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\AbstractCookieSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */