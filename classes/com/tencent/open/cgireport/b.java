package com.tencent.open.cgireport;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.tencent.open.OpenConfig;
import com.tencent.open.Util;
import java.net.SocketTimeoutException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;

final class b
  extends Thread
{
  b(ReportManager paramReportManager, String paramString, Context paramContext, Bundle paramBundle) {}
  
  public final void run()
  {
    Log.i("cgi_report_debug", "ReportManager doUploadItems Thread start, url = " + this.a);
    ReportManager.a(this.d, OpenConfig.a(this.b, null).b("Common_HttpRetryCount"));
    Object localObject = this.d;
    if (ReportManager.a(this.d) == 0) {
      i = 3;
    }
    for (;;)
    {
      ReportManager.a((ReportManager)localObject, i);
      i = 0;
      int k = 0;
      int m = k + 1;
      Log.i("cgi_report_debug", "ReportManager doUploadItems Thread request count = " + m);
      try
      {
        localObject = Util.a(this.b, null, this.a);
        HttpPost localHttpPost = new HttpPost(this.a);
        localHttpPost.addHeader("Accept-Encoding", "gzip");
        localHttpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
        localHttpPost.setEntity(new ByteArrayEntity(Util.a(this.c).getBytes()));
        if (((HttpClient)localObject).execute(localHttpPost).getStatusLine().getStatusCode() != 200)
        {
          Log.e("cgi_report_debug", "ReportManager doUploadItems : HttpStatuscode != 200");
          ReportManager.a(this.d, false);
          Log.i("cgi_report_debug", "ReportManager doUploadItems Thread end, url = " + this.a);
          if (i != 1) {
            break label336;
          }
          Log.i("cgi_report_debug", "ReportManager doUploadItems Thread request success");
          return;
          i = ReportManager.a(this.d);
        }
      }
      catch (ConnectTimeoutException localConnectTimeoutException1)
      {
        for (;;)
        {
          try
          {
            Log.i("cgi_report_debug", "ReportManager doUploadItems Thread success");
            i = 1;
          }
          catch (Exception localException2)
          {
            int j;
            i = 1;
            continue;
          }
          catch (SocketTimeoutException localSocketTimeoutException2)
          {
            i = 1;
            continue;
          }
          catch (ConnectTimeoutException localConnectTimeoutException2)
          {
            i = 1;
            continue;
          }
          localConnectTimeoutException1 = localConnectTimeoutException1;
          localConnectTimeoutException1.printStackTrace();
          Log.e("cgi_report_debug", "ReportManager doUploadItems : ConnectTimeoutException");
          j = i;
          i = j;
          k = m;
          if (m < ReportManager.a(this.d)) {
            break;
          }
          i = j;
        }
      }
      catch (SocketTimeoutException localSocketTimeoutException1)
      {
        for (;;)
        {
          localSocketTimeoutException1.printStackTrace();
          j = i;
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          localException1.printStackTrace();
          Log.e("cgi_report_debug", "ReportManager doUploadItems : Exception");
        }
        label336:
        Log.e("cgi_report_debug", "ReportManager doUploadItems Thread request failed");
        ReportManager.c(this.d).a(ReportManager.b(this.d));
        return;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\cgireport\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */