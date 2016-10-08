package org.apache.http.impl.cookie;

import org.apache.http.annotation.ThreadSafe;

@Deprecated
@ThreadSafe
public class BestMatchSpec
  extends DefaultCookieSpec
{
  public BestMatchSpec()
  {
    this(null, false);
  }
  
  public BestMatchSpec(String[] paramArrayOfString, boolean paramBoolean)
  {
    super(paramArrayOfString, paramBoolean);
  }
  
  public String toString()
  {
    return "best-match";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BestMatchSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */