package org.apache.http.conn.params;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.util.Args;

@Deprecated
@ThreadSafe
public final class ConnPerRouteBean
  implements ConnPerRoute
{
  public static final int DEFAULT_MAX_CONNECTIONS_PER_ROUTE = 2;
  private volatile int defaultMax;
  private final ConcurrentHashMap<HttpRoute, Integer> maxPerHostMap = new ConcurrentHashMap();
  
  public ConnPerRouteBean()
  {
    this(2);
  }
  
  public ConnPerRouteBean(int paramInt)
  {
    setDefaultMaxPerRoute(paramInt);
  }
  
  public final int getDefaultMax()
  {
    return this.defaultMax;
  }
  
  public final int getDefaultMaxPerRoute()
  {
    return this.defaultMax;
  }
  
  public final int getMaxForRoute(HttpRoute paramHttpRoute)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    paramHttpRoute = (Integer)this.maxPerHostMap.get(paramHttpRoute);
    if (paramHttpRoute != null) {
      return paramHttpRoute.intValue();
    }
    return this.defaultMax;
  }
  
  public final void setDefaultMaxPerRoute(int paramInt)
  {
    Args.positive(paramInt, "Default max per route");
    this.defaultMax = paramInt;
  }
  
  public final void setMaxForRoute(HttpRoute paramHttpRoute, int paramInt)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    Args.positive(paramInt, "Max per route");
    this.maxPerHostMap.put(paramHttpRoute, Integer.valueOf(paramInt));
  }
  
  public final void setMaxForRoutes(Map<HttpRoute, Integer> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    this.maxPerHostMap.clear();
    this.maxPerHostMap.putAll(paramMap);
  }
  
  public final String toString()
  {
    return this.maxPerHostMap.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\params\ConnPerRouteBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */