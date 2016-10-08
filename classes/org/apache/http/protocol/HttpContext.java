package org.apache.http.protocol;

public abstract interface HttpContext
{
  public static final String RESERVED_PREFIX = "http.";
  
  public abstract Object getAttribute(String paramString);
  
  public abstract Object removeAttribute(String paramString);
  
  public abstract void setAttribute(String paramString, Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\protocol\HttpContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */