package com.paic.openapi.demo.util;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.config.RequestConfig.Builder;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;

public final class a
{
  private static RequestConfig a = RequestConfig.custom().setSocketTimeout(20000).setConnectTimeout(5000).build();
  
  public static String a(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    return b(paramString1, paramString2, paramMap);
  }
  
  private static String b(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    Object localObject = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout((HttpParams)localObject, 3000);
    HttpConnectionParams.setSoTimeout((HttpParams)localObject, 5000);
    localObject = new DefaultHttpClient((HttpParams)localObject);
    paramString1 = new HttpPost(paramString1);
    paramString1.setHeader("Content-Type", "application/x-www-form-urlencoded");
    if (paramMap != null) {
      try
      {
        if (paramMap.size() > 0)
        {
          Iterator localIterator = paramMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            paramString1.setHeader(str, (String)paramMap.get(str));
          }
        }
        paramString1.setEntity(new StringEntity(paramString2, "UTF-8"));
      }
      catch (Exception paramString1)
      {
        paramString1 = paramString1;
        throw new Exception(paramString1);
      }
      finally {}
    }
    paramString1 = ((HttpClient)localObject).execute(paramString1).getEntity();
    if (paramString1 != null)
    {
      paramString2 = EntityUtils.toString(paramString1, "UTF-8");
      paramString1.consumeContent();
      return paramString2;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\paic\openapi\demo\util\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */