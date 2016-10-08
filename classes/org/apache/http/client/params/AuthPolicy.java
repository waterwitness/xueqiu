package org.apache.http.client.params;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public final class AuthPolicy
{
  public static final String BASIC = "Basic";
  public static final String DIGEST = "Digest";
  public static final String KERBEROS = "Kerberos";
  public static final String NTLM = "NTLM";
  public static final String SPNEGO = "Negotiate";
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\params\AuthPolicy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */