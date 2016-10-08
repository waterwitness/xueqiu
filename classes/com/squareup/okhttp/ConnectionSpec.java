package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class ConnectionSpec
{
  public static final ConnectionSpec CLEARTEXT = new ConnectionSpec.Builder(false).build();
  public static final ConnectionSpec COMPATIBLE_TLS;
  public static final ConnectionSpec MODERN_TLS = new ConnectionSpec.Builder(true).cipherSuites(new CipherSuite[] { CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA }).tlsVersions(new TlsVersion[] { TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0 }).supportsTlsExtensions(true).build();
  private final String[] cipherSuites;
  final boolean supportsTlsExtensions;
  final boolean tls;
  private final String[] tlsVersions;
  
  static
  {
    COMPATIBLE_TLS = new ConnectionSpec.Builder(MODERN_TLS).tlsVersions(new TlsVersion[] { TlsVersion.TLS_1_0 }).supportsTlsExtensions(true).build();
  }
  
  private ConnectionSpec(ConnectionSpec.Builder paramBuilder)
  {
    this.tls = ConnectionSpec.Builder.access$000(paramBuilder);
    this.cipherSuites = ConnectionSpec.Builder.access$100(paramBuilder);
    this.tlsVersions = ConnectionSpec.Builder.access$200(paramBuilder);
    this.supportsTlsExtensions = ConnectionSpec.Builder.access$300(paramBuilder);
  }
  
  private ConnectionSpec supportedSpec(SSLSocket paramSSLSocket)
  {
    if (this.cipherSuites != null) {
      arrayOfString = paramSSLSocket.getEnabledCipherSuites();
    }
    for (String[] arrayOfString = (String[])Util.intersect(String.class, this.cipherSuites, arrayOfString);; arrayOfString = null)
    {
      paramSSLSocket = paramSSLSocket.getEnabledProtocols();
      paramSSLSocket = (String[])Util.intersect(String.class, this.tlsVersions, paramSSLSocket);
      return new ConnectionSpec.Builder(this).cipherSuites(arrayOfString).tlsVersions(paramSSLSocket).build();
    }
  }
  
  final void apply(SSLSocket paramSSLSocket, Route paramRoute)
  {
    ConnectionSpec localConnectionSpec = supportedSpec(paramSSLSocket);
    paramSSLSocket.setEnabledProtocols(localConnectionSpec.tlsVersions);
    Object localObject1 = localConnectionSpec.cipherSuites;
    Object localObject2 = localObject1;
    if (paramRoute.shouldSendTlsFallbackIndicator)
    {
      localObject2 = localObject1;
      if (Arrays.asList(paramSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
        if (localObject1 == null) {
          break label128;
        }
      }
    }
    for (;;)
    {
      localObject2 = new String[localObject1.length + 1];
      System.arraycopy(localObject1, 0, localObject2, 0, localObject1.length);
      localObject2[(localObject2.length - 1)] = "TLS_FALLBACK_SCSV";
      if (localObject2 != null) {
        paramSSLSocket.setEnabledCipherSuites((String[])localObject2);
      }
      localObject1 = Platform.get();
      if (localConnectionSpec.supportsTlsExtensions) {
        ((Platform)localObject1).configureTlsExtensions(paramSSLSocket, paramRoute.address.uriHost, paramRoute.address.protocols);
      }
      return;
      label128:
      localObject1 = paramSSLSocket.getEnabledCipherSuites();
    }
  }
  
  public final List<CipherSuite> cipherSuites()
  {
    if (this.cipherSuites == null) {
      return null;
    }
    CipherSuite[] arrayOfCipherSuite = new CipherSuite[this.cipherSuites.length];
    int i = 0;
    while (i < this.cipherSuites.length)
    {
      arrayOfCipherSuite[i] = CipherSuite.forJavaName(this.cipherSuites[i]);
      i += 1;
    }
    return Util.immutableList(arrayOfCipherSuite);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ConnectionSpec)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (ConnectionSpec)paramObject;
    } while ((this.tls != ((ConnectionSpec)paramObject).tls) || ((this.tls) && ((!Arrays.equals(this.cipherSuites, ((ConnectionSpec)paramObject).cipherSuites)) || (!Arrays.equals(this.tlsVersions, ((ConnectionSpec)paramObject).tlsVersions)) || (this.supportsTlsExtensions != ((ConnectionSpec)paramObject).supportsTlsExtensions))));
    return true;
  }
  
  public final int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (this.tls)
    {
      j = Arrays.hashCode(this.cipherSuites);
      k = Arrays.hashCode(this.tlsVersions);
      if (!this.supportsTlsExtensions) {
        break label53;
      }
    }
    label53:
    for (i = 0;; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }
  
  public final boolean isTls()
  {
    return this.tls;
  }
  
  public final boolean supportsTlsExtensions()
  {
    return this.supportsTlsExtensions;
  }
  
  public final List<TlsVersion> tlsVersions()
  {
    TlsVersion[] arrayOfTlsVersion = new TlsVersion[this.tlsVersions.length];
    int i = 0;
    while (i < this.tlsVersions.length)
    {
      arrayOfTlsVersion[i] = TlsVersion.forJavaName(this.tlsVersions[i]);
      i += 1;
    }
    return Util.immutableList(arrayOfTlsVersion);
  }
  
  public final String toString()
  {
    if (this.tls)
    {
      Object localObject = cipherSuites();
      if (localObject == null) {}
      for (localObject = "[use default]";; localObject = localObject.toString()) {
        return "ConnectionSpec(cipherSuites=" + (String)localObject + ", tlsVersions=" + tlsVersions() + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ")";
      }
    }
    return "ConnectionSpec()";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\ConnectionSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */