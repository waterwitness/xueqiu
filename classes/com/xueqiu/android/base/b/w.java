package com.xueqiu.android.base.b;

import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import java.net.HttpURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.NameValuePair;

public final class w
  extends v
{
  public w(String paramString1, String paramString2, SSLSocketFactory paramSSLSocketFactory)
  {
    super(paramString1, paramString2, paramSSLSocketFactory);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, NameValuePair... paramVarArgs)
  {
    super.a(paramHttpURLConnection, paramVarArgs);
    paramHttpURLConnection.addRequestProperty("Cookie", String.format("domain=%s;xq_a_token=%s", new Object[] { "xueqiu.com", u.a().a }));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */