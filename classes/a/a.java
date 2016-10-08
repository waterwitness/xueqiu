package a;

import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public final class a
{
  private static List<BasicNameValuePair> a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramString2 == null) {
      return null;
    }
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        paramString2 = com.alipay.a.c.a.d(paramString2);
        if (com.alipay.a.c.a.a(paramString2)) {
          break;
        }
        ArrayList localArrayList = new ArrayList();
        StringBuilder localStringBuilder = new StringBuilder();
        if (!com.alipay.a.c.a.a(paramString1))
        {
          localArrayList.add(new BasicNameValuePair("serviceId", paramString1));
          localStringBuilder.append("serviceId=");
          localStringBuilder.append(paramString1);
          localStringBuilder.append("&");
        }
        if (!com.alipay.a.c.a.a(paramString3))
        {
          localArrayList.add(new BasicNameValuePair("version", paramString3));
          localStringBuilder.append("version=");
          localStringBuilder.append(paramString3);
          localStringBuilder.append("&");
        }
        localArrayList.add(new BasicNameValuePair("data", paramString2));
        localStringBuilder.append("data=");
        localStringBuilder.append(paramString2);
        localStringBuilder.append("02000016-0010-0080-8000-10CA006D2CA5");
        localArrayList.add(new BasicNameValuePair("sign", com.alipay.a.c.a.b(localStringBuilder.toString())));
        Log.i("ALP", localStringBuilder.toString() + localArrayList.toString());
        return localArrayList;
      }
      catch (Exception paramString1)
      {
        Log.i("ALP", paramString1.getMessage());
      }
      paramString2 = Base64.encodeToString(paramString2.getBytes(), 8);
    }
    return null;
  }
  
  public static HttpResponse a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    if (paramString3 == null) {}
    for (;;)
    {
      return null;
      try
      {
        paramString1 = new HttpPost(paramString1);
        paramString2 = a(paramString2, paramString3, paramString4, paramBoolean);
        if (paramString2 != null)
        {
          paramString1.setEntity(new UrlEncodedFormEntity(paramString2, "UTF-8"));
          paramString2 = new BasicHttpParams();
          HttpConnectionParams.setConnectionTimeout(paramString2, 5000);
          HttpConnectionParams.setSoTimeout(paramString2, 5000);
          paramString1 = new DefaultHttpClient(paramString2).execute(paramString1);
          return paramString1;
        }
      }
      catch (Exception paramString1)
      {
        Log.i("ALP", paramString1.getMessage());
      }
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */