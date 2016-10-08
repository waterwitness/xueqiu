package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;

public final class Route
{
  final Address address;
  final ConnectionSpec connectionSpec;
  final InetSocketAddress inetSocketAddress;
  final Proxy proxy;
  final boolean shouldSendTlsFallbackIndicator;
  
  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, ConnectionSpec paramConnectionSpec)
  {
    this(paramAddress, paramProxy, paramInetSocketAddress, paramConnectionSpec, false);
  }
  
  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, ConnectionSpec paramConnectionSpec, boolean paramBoolean)
  {
    if (paramAddress == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    if (paramConnectionSpec == null) {
      throw new NullPointerException("connectionConfiguration == null");
    }
    this.address = paramAddress;
    this.proxy = paramProxy;
    this.inetSocketAddress = paramInetSocketAddress;
    this.connectionSpec = paramConnectionSpec;
    this.shouldSendTlsFallbackIndicator = paramBoolean;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Route))
    {
      paramObject = (Route)paramObject;
      bool1 = bool2;
      if (this.address.equals(((Route)paramObject).address))
      {
        bool1 = bool2;
        if (this.proxy.equals(((Route)paramObject).proxy))
        {
          bool1 = bool2;
          if (this.inetSocketAddress.equals(((Route)paramObject).inetSocketAddress))
          {
            bool1 = bool2;
            if (this.connectionSpec.equals(((Route)paramObject).connectionSpec))
            {
              bool1 = bool2;
              if (this.shouldSendTlsFallbackIndicator == ((Route)paramObject).shouldSendTlsFallbackIndicator) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public final Address getAddress()
  {
    return this.address;
  }
  
  public final ConnectionSpec getConnectionSpec()
  {
    return this.connectionSpec;
  }
  
  public final Proxy getProxy()
  {
    return this.proxy;
  }
  
  public final boolean getShouldSendTlsFallbackIndicator()
  {
    return this.shouldSendTlsFallbackIndicator;
  }
  
  public final InetSocketAddress getSocketAddress()
  {
    return this.inetSocketAddress;
  }
  
  public final int hashCode()
  {
    int j = this.address.hashCode();
    int k = this.proxy.hashCode();
    int m = this.inetSocketAddress.hashCode();
    int n = this.connectionSpec.hashCode();
    if (this.shouldSendTlsFallbackIndicator) {}
    for (int i = 1;; i = 0) {
      return i + ((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31;
    }
  }
  
  public final boolean requiresTunnel()
  {
    return (this.address.sslSocketFactory != null) && (this.proxy.type() == Proxy.Type.HTTP);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Route.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */