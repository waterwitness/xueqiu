package org.apache.http.conn.params;

import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@Deprecated
public class ConnConnectionParamBean
  extends HttpAbstractParamBean
{
  public ConnConnectionParamBean(HttpParams paramHttpParams)
  {
    super(paramHttpParams);
  }
  
  @Deprecated
  public void setMaxStatusLineGarbage(int paramInt)
  {
    this.params.setIntParameter("http.connection.max-status-line-garbage", paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\params\ConnConnectionParamBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */