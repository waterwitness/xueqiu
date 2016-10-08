package com.squareup.okhttp;

import c.c;
import c.g;
import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

public final class CertificatePinner
{
  public static final CertificatePinner DEFAULT = new CertificatePinner.Builder().build();
  private final Map<String, List<g>> hostnameToPins;
  
  private CertificatePinner(CertificatePinner.Builder paramBuilder)
  {
    this.hostnameToPins = Util.immutableMap(CertificatePinner.Builder.access$000(paramBuilder));
  }
  
  public static String pin(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha1/" + c.a(sha1((X509Certificate)paramCertificate).c);
  }
  
  private static g sha1(X509Certificate paramX509Certificate)
  {
    return Util.sha1(g.a(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public final void check(String paramString, List<Certificate> paramList)
  {
    int j = 0;
    List localList = (List)this.hostnameToPins.get(paramString);
    if (localList == null) {
      return;
    }
    int k = paramList.size();
    int i = 0;
    for (;;)
    {
      if (i >= k) {
        break label72;
      }
      if (localList.contains(sha1((X509Certificate)paramList.get(i)))) {
        break;
      }
      i += 1;
    }
    label72:
    StringBuilder localStringBuilder = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
    k = paramList.size();
    i = 0;
    while (i < k)
    {
      X509Certificate localX509Certificate = (X509Certificate)paramList.get(i);
      localStringBuilder.append("\n    ").append(pin(localX509Certificate)).append(": ").append(localX509Certificate.getSubjectDN().getName());
      i += 1;
    }
    localStringBuilder.append("\n  Pinned certificates for ").append(paramString).append(":");
    k = localList.size();
    i = j;
    while (i < k)
    {
      paramString = (g)localList.get(i);
      localStringBuilder.append("\n    sha1/").append(c.a(paramString.c));
      i += 1;
    }
    throw new SSLPeerUnverifiedException(localStringBuilder.toString());
  }
  
  public final void check(String paramString, Certificate... paramVarArgs)
  {
    check(paramString, Arrays.asList(paramVarArgs));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\CertificatePinner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */