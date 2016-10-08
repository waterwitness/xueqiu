package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class DateParseException
  extends Exception
{
  private static final long serialVersionUID = 4417696455000643370L;
  
  public DateParseException() {}
  
  public DateParseException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\DateParseException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */