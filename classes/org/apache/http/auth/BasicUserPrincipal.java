package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
public final class BasicUserPrincipal
  implements Serializable, Principal
{
  private static final long serialVersionUID = -2266305184969850467L;
  private final String username;
  
  public BasicUserPrincipal(String paramString)
  {
    Args.notNull(paramString, "User name");
    this.username = paramString;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof BasicUserPrincipal)) {
        break;
      }
      paramObject = (BasicUserPrincipal)paramObject;
    } while (LangUtils.equals(this.username, ((BasicUserPrincipal)paramObject).username));
    return false;
  }
  
  public final String getName()
  {
    return this.username;
  }
  
  public final int hashCode()
  {
    return LangUtils.hashCode(17, this.username);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[principal: ");
    localStringBuilder.append(this.username);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\BasicUserPrincipal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */