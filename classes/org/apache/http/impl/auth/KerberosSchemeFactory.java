package org.apache.http.impl.auth;

import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@Immutable
public class KerberosSchemeFactory
  implements AuthSchemeFactory, AuthSchemeProvider
{
  private final boolean stripPort;
  private final boolean useCanonicalHostname;
  
  public KerberosSchemeFactory()
  {
    this(true, true);
  }
  
  public KerberosSchemeFactory(boolean paramBoolean)
  {
    this.stripPort = paramBoolean;
    this.useCanonicalHostname = true;
  }
  
  public KerberosSchemeFactory(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.stripPort = paramBoolean1;
    this.useCanonicalHostname = paramBoolean2;
  }
  
  public AuthScheme create(HttpContext paramHttpContext)
  {
    return new KerberosScheme(this.stripPort, this.useCanonicalHostname);
  }
  
  public boolean isStripPort()
  {
    return this.stripPort;
  }
  
  public boolean isUseCanonicalHostname()
  {
    return this.useCanonicalHostname;
  }
  
  public AuthScheme newInstance(HttpParams paramHttpParams)
  {
    return new KerberosScheme(this.stripPort, this.useCanonicalHostname);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\KerberosSchemeFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */