package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import org.apache.http.annotation.Immutable;
import org.ietf.jgss.GSSCredential;

@Immutable
public class KerberosCredentials
  implements Serializable, Credentials
{
  private static final long serialVersionUID = 487421613855550713L;
  private final GSSCredential gssCredential;
  
  public KerberosCredentials(GSSCredential paramGSSCredential)
  {
    this.gssCredential = paramGSSCredential;
  }
  
  public GSSCredential getGSSCredential()
  {
    return this.gssCredential;
  }
  
  public String getPassword()
  {
    return null;
  }
  
  public Principal getUserPrincipal()
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\KerberosCredentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */