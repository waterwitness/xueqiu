package org.apache.http.conn.routing;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
public final class HttpRoute
  implements Cloneable, RouteInfo
{
  private final RouteInfo.LayerType layered;
  private final InetAddress localAddress;
  private final List<HttpHost> proxyChain;
  private final boolean secure;
  private final HttpHost targetHost;
  private final RouteInfo.TunnelType tunnelled;
  
  public HttpRoute(HttpHost paramHttpHost)
  {
    this(paramHttpHost, null, Collections.emptyList(), false, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
  }
  
  private HttpRoute(HttpHost paramHttpHost, InetAddress paramInetAddress, List<HttpHost> paramList, boolean paramBoolean, RouteInfo.TunnelType paramTunnelType, RouteInfo.LayerType paramLayerType)
  {
    Args.notNull(paramHttpHost, "Target host");
    this.targetHost = normalize(paramHttpHost);
    this.localAddress = paramInetAddress;
    boolean bool;
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      this.proxyChain = new ArrayList(paramList);
      if (paramTunnelType == RouteInfo.TunnelType.TUNNELLED)
      {
        if (this.proxyChain == null) {
          break label111;
        }
        bool = true;
        label67:
        Args.check(bool, "Proxy required if tunnelled");
      }
      this.secure = paramBoolean;
      if (paramTunnelType == null) {
        break label117;
      }
      label85:
      this.tunnelled = paramTunnelType;
      if (paramLayerType == null) {
        break label125;
      }
    }
    for (;;)
    {
      this.layered = paramLayerType;
      return;
      this.proxyChain = null;
      break;
      label111:
      bool = false;
      break label67;
      label117:
      paramTunnelType = RouteInfo.TunnelType.PLAIN;
      break label85;
      label125:
      paramLayerType = RouteInfo.LayerType.PLAIN;
    }
  }
  
  public HttpRoute(HttpHost paramHttpHost1, InetAddress paramInetAddress, HttpHost paramHttpHost2, boolean paramBoolean) {}
  
  public HttpRoute(HttpHost paramHttpHost1, InetAddress paramInetAddress, HttpHost paramHttpHost2, boolean paramBoolean, RouteInfo.TunnelType paramTunnelType, RouteInfo.LayerType paramLayerType) {}
  
  public HttpRoute(HttpHost paramHttpHost, InetAddress paramInetAddress, boolean paramBoolean)
  {
    this(paramHttpHost, paramInetAddress, Collections.emptyList(), paramBoolean, RouteInfo.TunnelType.PLAIN, RouteInfo.LayerType.PLAIN);
  }
  
  public HttpRoute(HttpHost paramHttpHost, InetAddress paramInetAddress, HttpHost[] paramArrayOfHttpHost, boolean paramBoolean, RouteInfo.TunnelType paramTunnelType, RouteInfo.LayerType paramLayerType) {}
  
  public HttpRoute(HttpHost paramHttpHost1, HttpHost paramHttpHost2)
  {
    this(paramHttpHost1, null, paramHttpHost2, false);
  }
  
  private static int getDefaultPort(String paramString)
  {
    if ("http".equalsIgnoreCase(paramString)) {
      return 80;
    }
    if ("https".equalsIgnoreCase(paramString)) {
      return 443;
    }
    return -1;
  }
  
  private static HttpHost normalize(HttpHost paramHttpHost)
  {
    if (paramHttpHost.getPort() >= 0) {
      return paramHttpHost;
    }
    InetAddress localInetAddress = paramHttpHost.getAddress();
    String str = paramHttpHost.getSchemeName();
    if (localInetAddress != null) {
      return new HttpHost(localInetAddress, getDefaultPort(str), str);
    }
    return new HttpHost(paramHttpHost.getHostName(), getDefaultPort(str), str);
  }
  
  public final Object clone()
  {
    return super.clone();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof HttpRoute)) {
        break;
      }
      paramObject = (HttpRoute)paramObject;
    } while ((this.secure == ((HttpRoute)paramObject).secure) && (this.tunnelled == ((HttpRoute)paramObject).tunnelled) && (this.layered == ((HttpRoute)paramObject).layered) && (LangUtils.equals(this.targetHost, ((HttpRoute)paramObject).targetHost)) && (LangUtils.equals(this.localAddress, ((HttpRoute)paramObject).localAddress)) && (LangUtils.equals(this.proxyChain, ((HttpRoute)paramObject).proxyChain)));
    return false;
    return false;
  }
  
  public final int getHopCount()
  {
    if (this.proxyChain != null) {
      return this.proxyChain.size() + 1;
    }
    return 1;
  }
  
  public final HttpHost getHopTarget(int paramInt)
  {
    Args.notNegative(paramInt, "Hop index");
    int i = getHopCount();
    if (paramInt < i) {}
    for (boolean bool = true;; bool = false)
    {
      Args.check(bool, "Hop index exceeds tracked route length");
      if (paramInt >= i - 1) {
        break;
      }
      return (HttpHost)this.proxyChain.get(paramInt);
    }
    return this.targetHost;
  }
  
  public final RouteInfo.LayerType getLayerType()
  {
    return this.layered;
  }
  
  public final InetAddress getLocalAddress()
  {
    return this.localAddress;
  }
  
  public final InetSocketAddress getLocalSocketAddress()
  {
    if (this.localAddress != null) {
      return new InetSocketAddress(this.localAddress, 0);
    }
    return null;
  }
  
  public final HttpHost getProxyHost()
  {
    if ((this.proxyChain != null) && (!this.proxyChain.isEmpty())) {
      return (HttpHost)this.proxyChain.get(0);
    }
    return null;
  }
  
  public final HttpHost getTargetHost()
  {
    return this.targetHost;
  }
  
  public final RouteInfo.TunnelType getTunnelType()
  {
    return this.tunnelled;
  }
  
  public final int hashCode()
  {
    int i = LangUtils.hashCode(LangUtils.hashCode(17, this.targetHost), this.localAddress);
    if (this.proxyChain != null)
    {
      Iterator localIterator = this.proxyChain.iterator();
      for (;;)
      {
        j = i;
        if (!localIterator.hasNext()) {
          break;
        }
        i = LangUtils.hashCode(i, (HttpHost)localIterator.next());
      }
    }
    int j = i;
    return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(j, this.secure), this.tunnelled), this.layered);
  }
  
  public final boolean isLayered()
  {
    return this.layered == RouteInfo.LayerType.LAYERED;
  }
  
  public final boolean isSecure()
  {
    return this.secure;
  }
  
  public final boolean isTunnelled()
  {
    return this.tunnelled == RouteInfo.TunnelType.TUNNELLED;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(getHopCount() * 30 + 50);
    if (this.localAddress != null)
    {
      localStringBuilder.append(this.localAddress);
      localStringBuilder.append("->");
    }
    localStringBuilder.append('{');
    if (this.tunnelled == RouteInfo.TunnelType.TUNNELLED) {
      localStringBuilder.append('t');
    }
    if (this.layered == RouteInfo.LayerType.LAYERED) {
      localStringBuilder.append('l');
    }
    if (this.secure) {
      localStringBuilder.append('s');
    }
    localStringBuilder.append("}->");
    if (this.proxyChain != null)
    {
      Iterator localIterator = this.proxyChain.iterator();
      while (localIterator.hasNext())
      {
        localStringBuilder.append((HttpHost)localIterator.next());
        localStringBuilder.append("->");
      }
    }
    localStringBuilder.append(this.targetHost);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\routing\HttpRoute.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */