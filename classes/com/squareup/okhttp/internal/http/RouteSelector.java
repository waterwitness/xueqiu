package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.ConnectionSpec;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;

public final class RouteSelector
{
  private final Address address;
  private final OkHttpClient client;
  private List<ConnectionSpec> connectionSpecs = Collections.emptyList();
  private List<InetSocketAddress> inetSocketAddresses = Collections.emptyList();
  private InetSocketAddress lastInetSocketAddress;
  private Proxy lastProxy;
  private ConnectionSpec lastSpec;
  private final Network network;
  private int nextInetSocketAddressIndex;
  private int nextProxyIndex;
  private int nextSpecIndex;
  private final List<Route> postponedRoutes = new ArrayList();
  private List<Proxy> proxies = Collections.emptyList();
  private final Request request;
  private final RouteDatabase routeDatabase;
  private final URI uri;
  
  private RouteSelector(Address paramAddress, URI paramURI, OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    this.address = paramAddress;
    this.uri = paramURI;
    this.client = paramOkHttpClient;
    this.routeDatabase = Internal.instance.routeDatabase(paramOkHttpClient);
    this.network = Internal.instance.network(paramOkHttpClient);
    this.request = paramRequest;
    resetNextProxy(paramURI, paramAddress.getProxy());
  }
  
  public static RouteSelector get(Address paramAddress, Request paramRequest, OkHttpClient paramOkHttpClient)
  {
    return new RouteSelector(paramAddress, paramRequest.uri(), paramOkHttpClient, paramRequest);
  }
  
  static String getHostString(InetSocketAddress paramInetSocketAddress)
  {
    InetAddress localInetAddress = paramInetSocketAddress.getAddress();
    if (localInetAddress == null) {
      return paramInetSocketAddress.getHostName();
    }
    return localInetAddress.getHostAddress();
  }
  
  private boolean hasNextConnectionSpec()
  {
    return this.nextSpecIndex < this.connectionSpecs.size();
  }
  
  private boolean hasNextInetSocketAddress()
  {
    return this.nextInetSocketAddressIndex < this.inetSocketAddresses.size();
  }
  
  private boolean hasNextPostponed()
  {
    return !this.postponedRoutes.isEmpty();
  }
  
  private boolean hasNextProxy()
  {
    return this.nextProxyIndex < this.proxies.size();
  }
  
  private ConnectionSpec nextConnectionSpec()
  {
    StringBuilder localStringBuilder;
    if (this.connectionSpecs.isEmpty())
    {
      localStringBuilder = new StringBuilder("No route to ");
      if (this.uri.getScheme() != null) {}
      for (localObject = this.uri.getScheme() + "://";; localObject = "//") {
        throw new UnknownServiceException((String)localObject + this.address.getUriHost() + "; no connection specs");
      }
    }
    if (!hasNextConnectionSpec())
    {
      localStringBuilder = new StringBuilder("No route to ");
      if (this.uri.getScheme() != null) {}
      for (localObject = this.uri.getScheme() + "://";; localObject = "//") {
        throw new SocketException((String)localObject + this.address.getUriHost() + "; exhausted connection specs: " + this.connectionSpecs);
      }
    }
    Object localObject = this.connectionSpecs;
    int i = this.nextSpecIndex;
    this.nextSpecIndex = (i + 1);
    return (ConnectionSpec)((List)localObject).get(i);
  }
  
  private InetSocketAddress nextInetSocketAddress()
  {
    if (!hasNextInetSocketAddress()) {
      throw new SocketException("No route to " + this.address.getUriHost() + "; exhausted inet socket addresses: " + this.inetSocketAddresses);
    }
    Object localObject = this.inetSocketAddresses;
    int i = this.nextInetSocketAddressIndex;
    this.nextInetSocketAddressIndex = (i + 1);
    localObject = (InetSocketAddress)((List)localObject).get(i);
    resetConnectionSpecs();
    return (InetSocketAddress)localObject;
  }
  
  private Route nextPostponed()
  {
    return (Route)this.postponedRoutes.remove(0);
  }
  
  private Proxy nextProxy()
  {
    if (!hasNextProxy()) {
      throw new SocketException("No route to " + this.address.getUriHost() + "; exhausted proxy configurations: " + this.proxies);
    }
    Object localObject = this.proxies;
    int i = this.nextProxyIndex;
    this.nextProxyIndex = (i + 1);
    localObject = (Proxy)((List)localObject).get(i);
    resetNextInetSocketAddress((Proxy)localObject);
    return (Proxy)localObject;
  }
  
  private void resetConnectionSpecs()
  {
    this.connectionSpecs = new ArrayList();
    List localList = this.address.getConnectionSpecs();
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      ConnectionSpec localConnectionSpec = (ConnectionSpec)localList.get(i);
      if (this.request.isHttps() == localConnectionSpec.isTls()) {
        this.connectionSpecs.add(localConnectionSpec);
      }
      i += 1;
    }
    this.nextSpecIndex = 0;
  }
  
  private void resetNextInetSocketAddress(Proxy paramProxy)
  {
    this.inetSocketAddresses = new ArrayList();
    if ((paramProxy.type() == Proxy.Type.DIRECT) || (paramProxy.type() == Proxy.Type.SOCKS)) {
      paramProxy = this.address.getUriHost();
    }
    InetSocketAddress localInetSocketAddress;
    for (int i = Util.getEffectivePort(this.uri); (i <= 0) || (i > 65535); i = localInetSocketAddress.getPort())
    {
      throw new SocketException("No route to " + paramProxy + ":" + i + "; port is out of range");
      paramProxy = paramProxy.address();
      if (!(paramProxy instanceof InetSocketAddress)) {
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + paramProxy.getClass());
      }
      localInetSocketAddress = (InetSocketAddress)paramProxy;
      paramProxy = getHostString(localInetSocketAddress);
    }
    paramProxy = this.network.resolveInetAddresses(paramProxy);
    int k = paramProxy.length;
    int j = 0;
    while (j < k)
    {
      localInetSocketAddress = paramProxy[j];
      this.inetSocketAddresses.add(new InetSocketAddress(localInetSocketAddress, i));
      j += 1;
    }
    this.nextInetSocketAddressIndex = 0;
  }
  
  private void resetNextProxy(URI paramURI, Proxy paramProxy)
  {
    if (paramProxy != null) {
      this.proxies = Collections.singletonList(paramProxy);
    }
    for (;;)
    {
      this.nextProxyIndex = 0;
      return;
      this.proxies = new ArrayList();
      paramURI = this.client.getProxySelector().select(paramURI);
      if (paramURI != null) {
        this.proxies.addAll(paramURI);
      }
      this.proxies.removeAll(Collections.singleton(Proxy.NO_PROXY));
      this.proxies.add(Proxy.NO_PROXY);
    }
  }
  
  private boolean shouldSendTlsFallbackIndicator(ConnectionSpec paramConnectionSpec)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramConnectionSpec != this.connectionSpecs.get(0))
    {
      bool1 = bool2;
      if (paramConnectionSpec.isTls()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final void connectFailed(Route paramRoute, IOException paramIOException)
  {
    if ((paramRoute.getProxy().type() != Proxy.Type.DIRECT) && (this.address.getProxySelector() != null)) {
      this.address.getProxySelector().connectFailed(this.uri, paramRoute.getProxy().address(), paramIOException);
    }
    this.routeDatabase.failed(paramRoute);
    if ((!(paramIOException instanceof SSLHandshakeException)) && (!(paramIOException instanceof SSLProtocolException))) {
      while (this.nextSpecIndex < this.connectionSpecs.size())
      {
        paramRoute = this.connectionSpecs;
        int i = this.nextSpecIndex;
        this.nextSpecIndex = (i + 1);
        paramRoute = (ConnectionSpec)paramRoute.get(i);
        boolean bool = shouldSendTlsFallbackIndicator(paramRoute);
        paramRoute = new Route(this.address, this.lastProxy, this.lastInetSocketAddress, paramRoute, bool);
        this.routeDatabase.failed(paramRoute);
      }
    }
  }
  
  public final boolean hasNext()
  {
    return (hasNextConnectionSpec()) || (hasNextInetSocketAddress()) || (hasNextProxy()) || (hasNextPostponed());
  }
  
  public final Route next()
  {
    for (;;)
    {
      Object localObject;
      if (!hasNextConnectionSpec()) {
        if (!hasNextInetSocketAddress()) {
          if (!hasNextProxy())
          {
            if (!hasNextPostponed()) {
              throw new NoSuchElementException();
            }
            localObject = nextPostponed();
          }
        }
      }
      Route localRoute;
      do
      {
        return (Route)localObject;
        this.lastProxy = nextProxy();
        this.lastInetSocketAddress = nextInetSocketAddress();
        this.lastSpec = nextConnectionSpec();
        boolean bool = shouldSendTlsFallbackIndicator(this.lastSpec);
        localRoute = new Route(this.address, this.lastProxy, this.lastInetSocketAddress, this.lastSpec, bool);
        localObject = localRoute;
      } while (!this.routeDatabase.shouldPostpone(localRoute));
      this.postponedRoutes.add(localRoute);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\RouteSelector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */