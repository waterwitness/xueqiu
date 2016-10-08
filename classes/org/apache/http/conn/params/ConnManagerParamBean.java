package org.apache.http.conn.params;

import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@Deprecated
@NotThreadSafe
public class ConnManagerParamBean
  extends HttpAbstractParamBean
{
  public ConnManagerParamBean(HttpParams paramHttpParams)
  {
    super(paramHttpParams);
  }
  
  public void setConnectionsPerRoute(ConnPerRouteBean paramConnPerRouteBean)
  {
    this.params.setParameter("http.conn-manager.max-per-route", paramConnPerRouteBean);
  }
  
  public void setMaxTotalConnections(int paramInt)
  {
    this.params.setIntParameter("http.conn-manager.max-total", paramInt);
  }
  
  public void setTimeout(long paramLong)
  {
    this.params.setLongParameter("http.conn-manager.timeout", paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\params\ConnManagerParamBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */