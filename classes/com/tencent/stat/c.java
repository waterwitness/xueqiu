package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.RC4;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.event.Event;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

final class c
{
  static StatLogger a = ;
  static Context d = null;
  private static long e = -1L;
  private static c f = null;
  DefaultHttpClient b = null;
  Handler c = null;
  
  private c()
  {
    try
    {
      Object localObject = new HandlerThread("StatDispatcher");
      ((HandlerThread)localObject).start();
      e = ((HandlerThread)localObject).getId();
      this.c = new Handler(((HandlerThread)localObject).getLooper());
      localObject = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject, 10000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject, 10000);
      this.b = new DefaultHttpClient((HttpParams)localObject);
      this.b.setKeepAliveStrategy(new DefaultConnectionKeepAliveStrategy()
      {
        public final long getKeepAliveDuration(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
        {
          long l2 = super.getKeepAliveDuration(paramAnonymousHttpResponse, paramAnonymousHttpContext);
          long l1 = l2;
          if (l2 == -1L) {
            l1 = 20000L;
          }
          return l1;
        }
      });
      if (StatConfig.getStatHttpProxy() != null) {
        this.b.getParams().setParameter("http.route.default-proxy", StatConfig.getStatHttpProxy());
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      a.e(localThrowable);
    }
  }
  
  static Context a()
  {
    return d;
  }
  
  static void a(Context paramContext)
  {
    d = paramContext.getApplicationContext();
  }
  
  static c b()
  {
    if (f == null) {
      f = new c();
    }
    return f;
  }
  
  final void send(Event paramEvent, b paramb)
  {
    send(Arrays.asList(new String[] { paramEvent.toJsonString() }), paramb);
  }
  
  final void send(final List<String> paramList, final b paramb)
  {
    if ((paramList.isEmpty()) || (this.c == null)) {
      return;
    }
    this.c.post(new Runnable()
    {
      public final void run()
      {
        int j = 0;
        Object localObject3 = c.this;
        Object localObject1 = paramList;
        b localb = paramb;
        Object localObject5 = new StringBuilder();
        ((StringBuilder)localObject5).append("[");
        int i = 0;
        while (i < ((List)localObject1).size())
        {
          ((StringBuilder)localObject5).append((String)((List)localObject1).get(i));
          if (i != ((List)localObject1).size() - 1) {
            ((StringBuilder)localObject5).append(",");
          }
          i += 1;
        }
        ((StringBuilder)localObject5).append("]");
        localObject1 = StatConfig.getStatReportUrl();
        c.a.i("[" + (String)localObject1 + "]Send request(" + ((StringBuilder)localObject5).toString().length() + "bytes):" + ((StringBuilder)localObject5).toString());
        Object localObject4 = new HttpPost((String)localObject1);
        ByteArrayOutputStream localByteArrayOutputStream;
        long l;
        try
        {
          ((HttpPost)localObject4).addHeader("Accept-Encoding", "gzip");
          ((HttpPost)localObject4).setHeader("Connection", "Keep-Alive");
          ((HttpPost)localObject4).removeHeaders("Cache-Control");
          HttpHost localHttpHost = StatCommonHelper.getHttpProxy(c.d);
          i = j;
          if (localHttpHost != null)
          {
            ((c)localObject3).b.getParams().setParameter("http.route.default-proxy", StatCommonHelper.getHttpProxy(c.d));
            ((HttpPost)localObject4).addHeader("X-Online-Host", "pingma.qq.com:80");
            ((HttpPost)localObject4).addHeader("Accept", "*/*");
            ((HttpPost)localObject4).addHeader("Content-Type", "json");
            i = 1;
          }
          localByteArrayOutputStream = new ByteArrayOutputStream();
          localObject1 = ((StringBuilder)localObject5).toString().getBytes("UTF-8");
          j = localObject1.length;
          if (((StringBuilder)localObject5).length() < 256)
          {
            if (localHttpHost == null) {
              ((HttpPost)localObject4).addHeader("Content-Encoding", "rc4");
            }
            for (;;)
            {
              ((HttpPost)localObject4).setEntity(new ByteArrayEntity(RC4.encrypt((byte[])localObject1)));
              localObject1 = ((c)localObject3).b.execute((HttpUriRequest)localObject4);
              if (i != 0) {
                ((c)localObject3).b.getParams().removeParameter("http.route.default-proxy");
              }
              localObject3 = ((HttpResponse)localObject1).getEntity();
              i = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
              l = ((HttpEntity)localObject3).getContentLength();
              c.a.i("recv response status code:" + i + ", content length:" + l);
              if (l != 0L) {
                break label626;
              }
              EntityUtils.toString((HttpEntity)localObject3);
              if (i != 200) {
                break;
              }
              if (localb == null) {
                return;
              }
              localb.a();
              return;
              ((HttpPost)localObject4).addHeader("X-Content-Encoding", "rc4");
            }
          }
          if (localHttpHost != null) {
            break label589;
          }
        }
        catch (Throwable localThrowable)
        {
          localThrowable = localThrowable;
          c.a.e(localThrowable);
          if (localb == null) {
            return;
          }
          localb.b();
          return;
        }
        finally {}
        ((HttpPost)localObject4).addHeader("Content-Encoding", "rc4,gzip");
        Object localObject2;
        for (;;)
        {
          localByteArrayOutputStream.write(new byte[4]);
          localObject5 = new GZIPOutputStream(localByteArrayOutputStream);
          ((GZIPOutputStream)localObject5).write(arrayOfByte);
          ((GZIPOutputStream)localObject5).close();
          localObject2 = localByteArrayOutputStream.toByteArray();
          ByteBuffer.wrap((byte[])localObject2, 0, 4).putInt(j);
          c.a.d("before Gzip:" + j + " bytes, after Gzip:" + localObject2.length + " bytes");
          break;
          label589:
          ((HttpPost)localObject4).addHeader("X-Content-Encoding", "rc4,gzip");
        }
        c.a.error("Server response error code:" + i);
        return;
        label626:
        if (l > 0L)
        {
          localObject4 = ((HttpEntity)localObject3).getContent();
          localObject5 = new DataInputStream((InputStream)localObject4);
          localObject3 = new byte[(int)((HttpEntity)localObject3).getContentLength()];
          ((DataInputStream)localObject5).readFully((byte[])localObject3);
          localObject5 = ((HttpResponse)localObject2).getFirstHeader("Content-Encoding");
          localObject2 = localObject3;
          if (localObject5 != null)
          {
            if (((Header)localObject5).getValue().equalsIgnoreCase("gzip,rc4")) {
              localObject2 = RC4.decrypt(StatCommonHelper.deocdeGZipContent((byte[])localObject3));
            }
          }
          else {
            if (i != 200) {
              break label869;
            }
          }
          try
          {
            c.a.d(new String((byte[])localObject2, "UTF-8"));
            localObject2 = new JSONObject(new String((byte[])localObject2, "UTF-8")).getJSONObject("cfg");
            if (localObject2 != null) {
              StatConfig.updateOnlineConfig((JSONObject)localObject2);
            }
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              c.a.i(localJSONException.toString());
            }
          }
          if (localb != null) {
            localb.a();
          }
          for (;;)
          {
            ((InputStream)localObject4).close();
            return;
            if (((Header)localObject5).getValue().equalsIgnoreCase("rc4,gzip"))
            {
              localObject2 = StatCommonHelper.deocdeGZipContent(RC4.decrypt((byte[])localObject3));
              break;
            }
            if (((Header)localObject5).getValue().equalsIgnoreCase("gzip"))
            {
              localObject2 = StatCommonHelper.deocdeGZipContent((byte[])localObject3);
              break;
            }
            localObject2 = localObject3;
            if (!((Header)localObject5).getValue().equalsIgnoreCase("rc4")) {
              break;
            }
            localObject2 = RC4.decrypt((byte[])localObject3);
            break;
            label869:
            c.a.error("Server response error code:" + i + ", error:" + new String(localJSONException, "UTF-8"));
          }
        }
        EntityUtils.toString((HttpEntity)localObject3);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */