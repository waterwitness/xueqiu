package com.pingan.paphone.extension.http;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.security.KeyStore;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public class AsyncHttpClient
{
  private static final int DEFAULT_MAX_CONNECTIONS = 10;
  private static final int DEFAULT_MAX_RETRIES = 5;
  private static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
  private static final int DEFAULT_SOCKET_TIMEOUT = 20000;
  private static final String ENCODING_GZIP = "gzip";
  private static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
  private static final String VERSION = "1.4.3";
  private static int maxConnections = 10;
  private static int socketTimeout = 20000;
  private final Map<String, String> clientHeaderMap;
  private final DefaultHttpClient httpClient;
  private final HttpContext httpContext;
  private final Map<Context, List<WeakReference<Future<?>>>> requestMap;
  private ThreadPoolExecutor threadPool;
  
  public AsyncHttpClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, socketTimeout);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(maxConnections));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, socketTimeout);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, socketTimeout);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[] { "1.4.3" }));
    ThreadSafeClientConnManager localThreadSafeClientConnManager = new ThreadSafeClientConnManager(localBasicHttpParams, getSchemeRegistry());
    this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
    this.httpClient = new DefaultHttpClient(localThreadSafeClientConnManager, localBasicHttpParams);
    this.httpClient.addRequestInterceptor(new HttpRequestInterceptor()
    {
      public void process(HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
      {
        if (!paramAnonymousHttpRequest.containsHeader("Accept-Encoding")) {
          paramAnonymousHttpRequest.addHeader("Accept-Encoding", "gzip");
        }
        paramAnonymousHttpContext = AsyncHttpClient.this.clientHeaderMap.keySet().iterator();
        while (paramAnonymousHttpContext.hasNext())
        {
          String str = (String)paramAnonymousHttpContext.next();
          paramAnonymousHttpRequest.addHeader(str, (String)AsyncHttpClient.this.clientHeaderMap.get(str));
        }
      }
    });
    this.httpClient.addResponseInterceptor(new HttpResponseInterceptor()
    {
      public void process(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
      {
        paramAnonymousHttpContext = paramAnonymousHttpResponse.getEntity();
        if (paramAnonymousHttpContext == null) {}
        for (;;)
        {
          return;
          paramAnonymousHttpContext = paramAnonymousHttpContext.getContentEncoding();
          if (paramAnonymousHttpContext != null)
          {
            paramAnonymousHttpContext = paramAnonymousHttpContext.getElements();
            int j = paramAnonymousHttpContext.length;
            int i = 0;
            while (i < j)
            {
              if (paramAnonymousHttpContext[i].getName().equalsIgnoreCase("gzip"))
              {
                paramAnonymousHttpResponse.setEntity(new AsyncHttpClient.InflatingEntity(paramAnonymousHttpResponse.getEntity()));
                return;
              }
              i += 1;
            }
          }
        }
      }
    });
    this.httpClient.setHttpRequestRetryHandler(new RetryHandler(5));
    this.threadPool = ((ThreadPoolExecutor)Executors.newCachedThreadPool());
    this.requestMap = new WeakHashMap();
    this.clientHeaderMap = new HashMap();
  }
  
  private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity != null) {
      paramHttpEntityEnclosingRequestBase.setEntity(paramHttpEntity);
    }
    return paramHttpEntityEnclosingRequestBase;
  }
  
  /* Error */
  public static SSLSocketFactory createSSLSocketFactory()
  {
    // Byte code:
    //   0: invokestatic 196	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   3: invokestatic 200	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   6: astore_0
    //   7: aload_0
    //   8: aconst_null
    //   9: aconst_null
    //   10: invokevirtual 204	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   13: new 206	com/pingan/paphone/extension/http/MySSLSocketFactory
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 209	com/pingan/paphone/extension/http/MySSLSocketFactory:<init>	(Ljava/security/KeyStore;)V
    //   21: astore_0
    //   22: aload_0
    //   23: getstatic 213	com/pingan/paphone/extension/http/MySSLSocketFactory:ALLOW_ALL_HOSTNAME_VERIFIER	Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    //   26: invokevirtual 217	com/pingan/paphone/extension/http/MySSLSocketFactory:setHostnameVerifier	(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    //   29: aload_0
    //   30: areturn
    //   31: astore_1
    //   32: aconst_null
    //   33: astore_0
    //   34: aload_1
    //   35: invokevirtual 220	java/lang/Exception:printStackTrace	()V
    //   38: aload_0
    //   39: areturn
    //   40: astore_1
    //   41: goto -7 -> 34
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	33	0	localObject	Object
    //   31	4	1	localException1	Exception
    //   40	1	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	22	31	java/lang/Exception
    //   22	29	40	java/lang/Exception
  }
  
  public static SchemeRegistry getSchemeRegistry()
  {
    try
    {
      Object localObject1 = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject1).load(null, null);
      localObject1 = new MySSLSocketFactory((KeyStore)localObject1);
      ((SSLSocketFactory)localObject1).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      Object localObject2 = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject2, 30000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject2, 30000);
      HttpProtocolParams.setVersion((HttpParams)localObject2, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject2, "UTF-8");
      localObject2 = new SchemeRegistry();
      ((SchemeRegistry)localObject2).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      ((SchemeRegistry)localObject2).register(new Scheme("https", (SocketFactory)localObject1, 443));
      return (SchemeRegistry)localObject2;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static String getUrlWithQueryString(String paramString, RequestParams paramRequestParams)
  {
    String str = paramString;
    if (paramRequestParams != null)
    {
      paramRequestParams = paramRequestParams.getParamString();
      if (paramString.indexOf("?") == -1) {
        str = paramString + "?" + paramRequestParams;
      }
    }
    else
    {
      return str;
    }
    return paramString + "&" + paramRequestParams;
  }
  
  private HttpEntity paramsToEntity(RequestParams paramRequestParams)
  {
    HttpEntity localHttpEntity = null;
    if (paramRequestParams != null) {
      localHttpEntity = paramRequestParams.getEntity();
    }
    return localHttpEntity;
  }
  
  public void addHeader(String paramString1, String paramString2)
  {
    this.clientHeaderMap.put(paramString1, paramString2);
  }
  
  public void cancelRequests(Context paramContext, boolean paramBoolean)
  {
    Object localObject = (List)this.requestMap.get(paramContext);
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Future localFuture = (Future)((WeakReference)((Iterator)localObject).next()).get();
        if (localFuture != null) {
          localFuture.cancel(paramBoolean);
        }
      }
    }
    this.requestMap.remove(paramContext);
  }
  
  public void delete(Context paramContext, String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString = new HttpDelete(paramString);
    sendRequest(this.httpClient, this.httpContext, paramString, null, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void delete(Context paramContext, String paramString, Header[] paramArrayOfHeader, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString = new HttpDelete(paramString);
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    sendRequest(this.httpClient, this.httpContext, paramString, null, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void delete(String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    delete(null, paramString, paramAsyncHttpResponseHandler);
  }
  
  public void get(Context paramContext, String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    get(paramContext, paramString, null, paramAsyncHttpResponseHandler);
  }
  
  public void get(Context paramContext, String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(paramString, paramRequestParams)), null, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void get(Context paramContext, String paramString, Header[] paramArrayOfHeader, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString = new HttpGet(getUrlWithQueryString(paramString, paramRequestParams));
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    sendRequest(this.httpClient, this.httpContext, paramString, null, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void get(String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    get(null, paramString, null, paramAsyncHttpResponseHandler);
  }
  
  public void get(String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    get(null, paramString, paramRequestParams, paramAsyncHttpResponseHandler);
  }
  
  public HttpClient getHttpClient()
  {
    return this.httpClient;
  }
  
  public HttpContext getHttpContext()
  {
    return this.httpContext;
  }
  
  public void post(Context paramContext, String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    post(paramContext, paramString, paramsToEntity(paramRequestParams), null, paramAsyncHttpResponseHandler);
  }
  
  public void post(Context paramContext, String paramString1, HttpEntity paramHttpEntity, String paramString2, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(paramString1), paramHttpEntity), paramString2, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void post(Context paramContext, String paramString1, Header[] paramArrayOfHeader, RequestParams paramRequestParams, String paramString2, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString1 = new HttpPost(paramString1);
    if (paramRequestParams != null) {
      paramString1.setEntity(paramsToEntity(paramRequestParams));
    }
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void post(Context paramContext, String paramString1, Header[] paramArrayOfHeader, HttpEntity paramHttpEntity, String paramString2, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString1 = addEntityToRequestBase(new HttpPost(paramString1), paramHttpEntity);
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void post(String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    post(null, paramString, null, paramAsyncHttpResponseHandler);
  }
  
  public void post(String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    post(null, paramString, paramRequestParams, paramAsyncHttpResponseHandler);
  }
  
  public void put(Context paramContext, String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    put(paramContext, paramString, paramsToEntity(paramRequestParams), null, paramAsyncHttpResponseHandler);
  }
  
  public void put(Context paramContext, String paramString1, HttpEntity paramHttpEntity, String paramString2, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(paramString1), paramHttpEntity), paramString2, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void put(Context paramContext, String paramString1, Header[] paramArrayOfHeader, HttpEntity paramHttpEntity, String paramString2, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    paramString1 = addEntityToRequestBase(new HttpPut(paramString1), paramHttpEntity);
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramAsyncHttpResponseHandler, paramContext);
  }
  
  public void put(String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    put(null, paramString, null, paramAsyncHttpResponseHandler);
  }
  
  public void put(String paramString, RequestParams paramRequestParams, AsyncHttpResponseHandler paramAsyncHttpResponseHandler)
  {
    put(null, paramString, paramRequestParams, paramAsyncHttpResponseHandler);
  }
  
  protected void sendRequest(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, AsyncHttpResponseHandler paramAsyncHttpResponseHandler, Context paramContext)
  {
    if (paramString != null) {
      paramHttpUriRequest.addHeader("Content-Type", paramString);
    }
    paramHttpUriRequest = this.threadPool.submit(new AsyncHttpRequest(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramAsyncHttpResponseHandler));
    if (paramContext != null)
    {
      paramHttpContext = (List)this.requestMap.get(paramContext);
      paramDefaultHttpClient = paramHttpContext;
      if (paramHttpContext == null)
      {
        paramDefaultHttpClient = new LinkedList();
        this.requestMap.put(paramContext, paramDefaultHttpClient);
      }
      paramDefaultHttpClient.add(new WeakReference(paramHttpUriRequest));
    }
  }
  
  public void setBasicAuth(String paramString1, String paramString2)
  {
    setBasicAuth(paramString1, paramString2, AuthScope.ANY);
  }
  
  public void setBasicAuth(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    paramString1 = new UsernamePasswordCredentials(paramString1, paramString2);
    this.httpClient.getCredentialsProvider().setCredentials(paramAuthScope, paramString1);
  }
  
  public void setCookieStore(CookieStore paramCookieStore)
  {
    this.httpContext.setAttribute("http.cookie-store", paramCookieStore);
  }
  
  public void setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", paramSSLSocketFactory, 443));
  }
  
  public void setThreadPool(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    this.threadPool = paramThreadPoolExecutor;
  }
  
  public void setTimeout(int paramInt)
  {
    HttpParams localHttpParams = this.httpClient.getParams();
    ConnManagerParams.setTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setSoTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
  }
  
  public void setUserAgent(String paramString)
  {
    HttpProtocolParams.setUserAgent(this.httpClient.getParams(), paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\AsyncHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */