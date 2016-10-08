package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class Address
{
  final Authenticator authenticator;
  final CertificatePinner certificatePinner;
  final List<ConnectionSpec> connectionSpecs;
  final HostnameVerifier hostnameVerifier;
  final List<Protocol> protocols;
  final Proxy proxy;
  final ProxySelector proxySelector;
  final SocketFactory socketFactory;
  final SSLSocketFactory sslSocketFactory;
  final String uriHost;
  final int uriPort;
  
  public Address(String paramString, int paramInt, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, CertificatePinner paramCertificatePinner, Authenticator paramAuthenticator, Proxy paramProxy, List<Protocol> paramList, List<ConnectionSpec> paramList1, ProxySelector paramProxySelector)
  {
    if (paramString == null) {
      throw new NullPointerException("uriHost == null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    }
    if (paramAuthenticator == null) {
      throw new IllegalArgumentException("authenticator == null");
    }
    if (paramList == null) {
      throw new IllegalArgumentException("protocols == null");
    }
    if (paramProxySelector == null) {
      throw new IllegalArgumentException("proxySelector == null");
    }
    this.proxy = paramProxy;
    this.uriHost = paramString;
    this.uriPort = paramInt;
    this.socketFactory = paramSocketFactory;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.hostnameVerifier = paramHostnameVerifier;
    this.certificatePinner = paramCertificatePinner;
    this.authenticator = paramAuthenticator;
    this.protocols = Util.immutableList(paramList);
    this.connectionSpecs = Util.immutableList(paramList1);
    this.proxySelector = paramProxySelector;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Address))
    {
      paramObject = (Address)paramObject;
      bool1 = bool2;
      if (Util.equal(this.proxy, ((Address)paramObject).proxy))
      {
        bool1 = bool2;
        if (this.uriHost.equals(((Address)paramObject).uriHost))
        {
          bool1 = bool2;
          if (this.uriPort == ((Address)paramObject).uriPort)
          {
            bool1 = bool2;
            if (Util.equal(this.sslSocketFactory, ((Address)paramObject).sslSocketFactory))
            {
              bool1 = bool2;
              if (Util.equal(this.hostnameVerifier, ((Address)paramObject).hostnameVerifier))
              {
                bool1 = bool2;
                if (Util.equal(this.certificatePinner, ((Address)paramObject).certificatePinner))
                {
                  bool1 = bool2;
                  if (Util.equal(this.authenticator, ((Address)paramObject).authenticator))
                  {
                    bool1 = bool2;
                    if (Util.equal(this.protocols, ((Address)paramObject).protocols))
                    {
                      bool1 = bool2;
                      if (Util.equal(this.connectionSpecs, ((Address)paramObject).connectionSpecs))
                      {
                        bool1 = bool2;
                        if (Util.equal(this.proxySelector, ((Address)paramObject).proxySelector)) {
                          bool1 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final Authenticator getAuthenticator()
  {
    return this.authenticator;
  }
  
  public final List<ConnectionSpec> getConnectionSpecs()
  {
    return this.connectionSpecs;
  }
  
  public final HostnameVerifier getHostnameVerifier()
  {
    return this.hostnameVerifier;
  }
  
  public final List<Protocol> getProtocols()
  {
    return this.protocols;
  }
  
  public final Proxy getProxy()
  {
    return this.proxy;
  }
  
  public final ProxySelector getProxySelector()
  {
    return this.proxySelector;
  }
  
  public final SocketFactory getSocketFactory()
  {
    return this.socketFactory;
  }
  
  public final SSLSocketFactory getSslSocketFactory()
  {
    return this.sslSocketFactory;
  }
  
  public final String getUriHost()
  {
    return this.uriHost;
  }
  
  public final int getUriPort()
  {
    return this.uriPort;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int i;
    int n;
    int i1;
    int j;
    if (this.proxy != null)
    {
      i = this.proxy.hashCode();
      n = this.uriHost.hashCode();
      i1 = this.uriPort;
      if (this.sslSocketFactory == null) {
        break label166;
      }
      j = this.sslSocketFactory.hashCode();
      label48:
      if (this.hostnameVerifier == null) {
        break label171;
      }
    }
    label166:
    label171:
    for (int k = this.hostnameVerifier.hashCode();; k = 0)
    {
      if (this.certificatePinner != null) {
        m = this.certificatePinner.hashCode();
      }
      return (((((k + (j + (((i + 527) * 31 + n) * 31 + i1) * 31) * 31) * 31 + m) * 31 + this.authenticator.hashCode()) * 31 + this.protocols.hashCode()) * 31 + this.connectionSpecs.hashCode()) * 31 + this.proxySelector.hashCode();
      i = 0;
      break;
      j = 0;
      break label48;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Address.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */