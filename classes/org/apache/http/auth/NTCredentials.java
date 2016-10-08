package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
public class NTCredentials
  implements Serializable, Credentials
{
  private static final long serialVersionUID = -7385699315228907265L;
  private final String password;
  private final NTUserPrincipal principal;
  private final String workstation;
  
  public NTCredentials(String paramString)
  {
    Args.notNull(paramString, "Username:password string");
    int i = paramString.indexOf(':');
    if (i >= 0)
    {
      String str = paramString.substring(0, i);
      this.password = paramString.substring(i + 1);
      paramString = str;
      i = paramString.indexOf('/');
      if (i < 0) {
        break label97;
      }
    }
    label97:
    for (this.principal = new NTUserPrincipal(paramString.substring(0, i).toUpperCase(Locale.ROOT), paramString.substring(i + 1));; this.principal = new NTUserPrincipal(null, paramString.substring(i + 1)))
    {
      this.workstation = null;
      return;
      this.password = null;
      break;
    }
  }
  
  public NTCredentials(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Args.notNull(paramString1, "User name");
    this.principal = new NTUserPrincipal(paramString4, paramString1);
    this.password = paramString2;
    if (paramString3 != null)
    {
      this.workstation = paramString3.toUpperCase(Locale.ROOT);
      return;
    }
    this.workstation = null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof NTCredentials)) {
        break;
      }
      paramObject = (NTCredentials)paramObject;
    } while ((LangUtils.equals(this.principal, ((NTCredentials)paramObject).principal)) && (LangUtils.equals(this.workstation, ((NTCredentials)paramObject).workstation)));
    return false;
  }
  
  public String getDomain()
  {
    return this.principal.getDomain();
  }
  
  public String getPassword()
  {
    return this.password;
  }
  
  public String getUserName()
  {
    return this.principal.getUsername();
  }
  
  public Principal getUserPrincipal()
  {
    return this.principal;
  }
  
  public String getWorkstation()
  {
    return this.workstation;
  }
  
  public int hashCode()
  {
    return LangUtils.hashCode(LangUtils.hashCode(17, this.principal), this.workstation);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[principal: ");
    localStringBuilder.append(this.principal);
    localStringBuilder.append("][workstation: ");
    localStringBuilder.append(this.workstation);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\NTCredentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */