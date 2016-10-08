package org.apache.http.cookie.params;

import java.util.Collection;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.params.HttpAbstractParamBean;
import org.apache.http.params.HttpParams;

@Deprecated
@NotThreadSafe
public class CookieSpecParamBean
  extends HttpAbstractParamBean
{
  public CookieSpecParamBean(HttpParams paramHttpParams)
  {
    super(paramHttpParams);
  }
  
  public void setDatePatterns(Collection<String> paramCollection)
  {
    this.params.setParameter("http.protocol.cookie-datepatterns", paramCollection);
  }
  
  public void setSingleHeader(boolean paramBoolean)
  {
    this.params.setBooleanParameter("http.protocol.single-cookie-header", paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\params\CookieSpecParamBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */