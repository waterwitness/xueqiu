package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.LangUtils;

@NotThreadSafe
public final class RouteTracker
  implements Cloneable, RouteInfo
{
  private boolean connected;
  private RouteInfo.LayerType layered;
  private final InetAddress localAddress;
  private HttpHost[] proxyChain;
  private boolean secure;
  private final HttpHost targetHost;
  private RouteInfo.TunnelType tunnelled;
  
  public RouteTracker(HttpHost paramHttpHost, InetAddress paramInetAddress)
  {
    Args.notNull(paramHttpHost, "Target host");
    this.targetHost = paramHttpHost;
    this.localAddress = paramInetAddress;
    this.tunnelled = RouteInfo.TunnelType.PLAIN;
    this.layered = RouteInfo.LayerType.PLAIN;
  }
  
  public RouteTracker(HttpRoute paramHttpRoute)
  {
    this(paramHttpRoute.getTargetHost(), paramHttpRoute.getLocalAddress());
  }
  
  public final Object clone()
  {
    return super.clone();
  }
  
  public final void connectProxy(HttpHost paramHttpHost, boolean paramBoolean)
  {
    Args.notNull(paramHttpHost, "Proxy host");
    if (!this.connected) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Already connected");
      this.connected = true;
      this.proxyChain = new HttpHost[] { paramHttpHost };
      this.secure = paramBoolean;
      return;
    }
  }
  
  public final void connectTarget(boolean paramBoolean)
  {
    if (!this.connected) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Already connected");
      this.connected = true;
      this.secure = paramBoolean;
      return;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof RouteTracker)) {
        return false;
      }
      paramObject = (RouteTracker)paramObject;
    } while ((this.connected == ((RouteTracker)paramObject).connected) && (this.secure == ((RouteTracker)paramObject).secure) && (this.tunnelled == ((RouteTracker)paramObject).tunnelled) && (this.layered == ((RouteTracker)paramObject).layered) && (LangUtils.equals(this.targetHost, ((RouteTracker)paramObject).targetHost)) && (LangUtils.equals(this.localAddress, ((RouteTracker)paramObject).localAddress)) && (LangUtils.equals(this.proxyChain, ((RouteTracker)paramObject).proxyChain)));
    return false;
  }
  
  public final int getHopCount()
  {
    int i = 0;
    if (this.connected)
    {
      if (this.proxyChain == null) {
        i = 1;
      }
    }
    else {
      return i;
    }
    return this.proxyChain.length + 1;
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
      return this.proxyChain[paramInt];
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
  
  public final HttpHost getProxyHost()
  {
    if (this.proxyChain == null) {
      return null;
    }
    return this.proxyChain[0];
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
    int k = i;
    if (this.proxyChain != null)
    {
      HttpHost[] arrayOfHttpHost = this.proxyChain;
      int m = arrayOfHttpHost.length;
      int j = 0;
      for (;;)
      {
        k = i;
        if (j >= m) {
          break;
        }
        i = LangUtils.hashCode(i, arrayOfHttpHost[j]);
        j += 1;
      }
    }
    return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(k, this.connected), this.secure), this.tunnelled), this.layered);
  }
  
  public final boolean isConnected()
  {
    return this.connected;
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
  
  public final void layerProtocol(boolean paramBoolean)
  {
    Asserts.check(this.connected, "No layered protocol unless connected");
    this.layered = RouteInfo.LayerType.LAYERED;
    this.secure = paramBoolean;
  }
  
  public final void reset()
  {
    this.connected = false;
    this.proxyChain = null;
    this.tunnelled = RouteInfo.TunnelType.PLAIN;
    this.layered = RouteInfo.LayerType.PLAIN;
    this.secure = false;
  }
  
  public final HttpRoute toRoute()
  {
    if (!this.connected) {
      return null;
    }
    return new HttpRoute(this.targetHost, this.localAddress, this.proxyChain, this.secure, this.tunnelled, this.layered);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(getHopCount() * 30 + 50);
    localStringBuilder.append("RouteTracker[");
    if (this.localAddress != null)
    {
      localStringBuilder.append(this.localAddress);
      localStringBuilder.append("->");
    }
    localStringBuilder.append('{');
    if (this.connected) {
      localStringBuilder.append('c');
    }
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
      HttpHost[] arrayOfHttpHost = this.proxyChain;
      int j = arrayOfHttpHost.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(arrayOfHttpHost[i]);
        localStringBuilder.append("->");
        i += 1;
      }
    }
    localStringBuilder.append(this.targetHost);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public final void tunnelProxy(HttpHost paramHttpHost, boolean paramBoolean)
  {
    Args.notNull(paramHttpHost, "Proxy host");
    Asserts.check(this.connected, "No tunnel unless connected");
    Asserts.notNull(this.proxyChain, "No tunnel without proxy");
    HttpHost[] arrayOfHttpHost = new HttpHost[this.proxyChain.length + 1];
    System.arraycopy(this.proxyChain, 0, arrayOfHttpHost, 0, this.proxyChain.length);
    arrayOfHttpHost[(arrayOfHttpHost.length - 1)] = paramHttpHost;
    this.proxyChain = arrayOfHttpHost;
    this.secure = paramBoolean;
  }
  
  public final void tunnelTarget(boolean paramBoolean)
  {
    Asserts.check(this.connected, "No tunnel unless connected");
    Asserts.notNull(this.proxyChain, "No tunnel without proxy");
    this.tunnelled = RouteInfo.TunnelType.TUNNELLED;
    this.secure = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\routing\RouteTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */