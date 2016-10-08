package com.loopj.android.http;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.lang.reflect.Field;
import java.net.URI;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.auth.BasicScheme;
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
  public static final int DEFAULT_MAX_CONNECTIONS = 10;
  public static final int DEFAULT_MAX_RETRIES = 5;
  public static final int DEFAULT_RETRY_SLEEP_TIME_MILLIS = 1500;
  public static final int DEFAULT_SOCKET_BUFFER_SIZE = 8192;
  public static final int DEFAULT_SOCKET_TIMEOUT = 10000;
  public static final String ENCODING_GZIP = "gzip";
  public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
  public static final String HEADER_CONTENT_DISPOSITION = "Content-Disposition";
  public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
  public static final String HEADER_CONTENT_RANGE = "Content-Range";
  public static final String HEADER_CONTENT_TYPE = "Content-Type";
  public static final String LOG_TAG = "AsyncHttpClient";
  private final Map<String, String> clientHeaderMap;
  private int connectTimeout = 10000;
  private final DefaultHttpClient httpClient;
  private final HttpContext httpContext;
  private boolean isUrlEncodingEnabled = true;
  private int maxConnections = 10;
  private final Map<Context, List<RequestHandle>> requestMap;
  private int responseTimeout = 10000;
  private ExecutorService threadPool;
  
  public AsyncHttpClient()
  {
    this(false, 80, 443);
  }
  
  public AsyncHttpClient(int paramInt)
  {
    this(false, paramInt, 443);
  }
  
  public AsyncHttpClient(int paramInt1, int paramInt2)
  {
    this(false, paramInt1, paramInt2);
  }
  
  public AsyncHttpClient(SchemeRegistry paramSchemeRegistry)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, this.connectTimeout);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(this.maxConnections));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, this.responseTimeout);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, this.connectTimeout);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    paramSchemeRegistry = new ThreadSafeClientConnManager(localBasicHttpParams, paramSchemeRegistry);
    this.threadPool = getDefaultThreadPool();
    this.requestMap = Collections.synchronizedMap(new WeakHashMap());
    this.clientHeaderMap = new HashMap();
    this.httpContext = new SyncBasicHttpContext(new BasicHttpContext());
    this.httpClient = new DefaultHttpClient(paramSchemeRegistry, localBasicHttpParams);
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
          if (paramAnonymousHttpRequest.containsHeader(str))
          {
            Header localHeader = paramAnonymousHttpRequest.getFirstHeader(str);
            Log.d("AsyncHttpClient", String.format("Headers were overwritten! (%s | %s) overwrites (%s | %s)", new Object[] { str, AsyncHttpClient.this.clientHeaderMap.get(str), localHeader.getName(), localHeader.getValue() }));
            paramAnonymousHttpRequest.removeHeader(localHeader);
          }
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
          Object localObject = paramAnonymousHttpContext.getContentEncoding();
          if (localObject != null)
          {
            localObject = ((Header)localObject).getElements();
            int j = localObject.length;
            int i = 0;
            while (i < j)
            {
              if (localObject[i].getName().equalsIgnoreCase("gzip"))
              {
                paramAnonymousHttpResponse.setEntity(new AsyncHttpClient.InflatingEntity(paramAnonymousHttpContext));
                return;
              }
              i += 1;
            }
          }
        }
      }
    });
    this.httpClient.addRequestInterceptor(new HttpRequestInterceptor()
    {
      public void process(HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
      {
        paramAnonymousHttpRequest = (AuthState)paramAnonymousHttpContext.getAttribute("http.auth.target-scope");
        CredentialsProvider localCredentialsProvider = (CredentialsProvider)paramAnonymousHttpContext.getAttribute("http.auth.credentials-provider");
        paramAnonymousHttpContext = (HttpHost)paramAnonymousHttpContext.getAttribute("http.target_host");
        if (paramAnonymousHttpRequest.getAuthScheme() == null)
        {
          paramAnonymousHttpContext = localCredentialsProvider.getCredentials(new AuthScope(paramAnonymousHttpContext.getHostName(), paramAnonymousHttpContext.getPort()));
          if (paramAnonymousHttpContext != null)
          {
            paramAnonymousHttpRequest.setAuthScheme(new BasicScheme());
            paramAnonymousHttpRequest.setCredentials(paramAnonymousHttpContext);
          }
        }
      }
    }, 0);
    this.httpClient.setHttpRequestRetryHandler(new RetryHandler(5, 1500));
  }
  
  public AsyncHttpClient(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this(getDefaultSchemeRegistry(paramBoolean, paramInt1, paramInt2));
  }
  
  private HttpEntityEnclosingRequestBase addEntityToRequestBase(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity != null) {
      paramHttpEntityEnclosingRequestBase.setEntity(paramHttpEntity);
    }
    return paramHttpEntityEnclosingRequestBase;
  }
  
  public static void allowRetryExceptionClass(Class<?> paramClass)
  {
    if (paramClass != null) {
      RetryHandler.addClassToWhitelist(paramClass);
    }
  }
  
  public static void blockRetryExceptionClass(Class<?> paramClass)
  {
    if (paramClass != null) {
      RetryHandler.addClassToBlacklist(paramClass);
    }
  }
  
  public static void endEntityViaReflection(HttpEntity paramHttpEntity)
  {
    if ((paramHttpEntity instanceof HttpEntityWrapper)) {}
    for (;;)
    {
      try
      {
        Field[] arrayOfField = HttpEntityWrapper.class.getDeclaredFields();
        int j = arrayOfField.length;
        int i = 0;
        Field localField;
        if (i < j)
        {
          localField = arrayOfField[i];
          if (localField.getName().equals("wrappedEntity"))
          {
            if (localField != null)
            {
              localField.setAccessible(true);
              paramHttpEntity = (HttpEntity)localField.get(paramHttpEntity);
              if (paramHttpEntity != null) {
                paramHttpEntity.consumeContent();
              }
            }
            return;
          }
          i += 1;
        }
        else
        {
          localField = null;
        }
      }
      catch (Throwable paramHttpEntity)
      {
        Log.e("AsyncHttpClient", "wrappedEntity consume", paramHttpEntity);
        return;
      }
    }
  }
  
  private static SchemeRegistry getDefaultSchemeRegistry(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean) {
      Log.d("AsyncHttpClient", "Beware! Using the fix is insecure, as it doesn't verify SSL certificates.");
    }
    int i = paramInt1;
    if (paramInt1 <= 0)
    {
      i = 80;
      Log.d("AsyncHttpClient", "Invalid HTTP port number specified, defaulting to 80");
    }
    paramInt1 = paramInt2;
    if (paramInt2 <= 0)
    {
      paramInt1 = 443;
      Log.d("AsyncHttpClient", "Invalid HTTPS port number specified, defaulting to 443");
    }
    if (paramBoolean) {}
    for (SSLSocketFactory localSSLSocketFactory = MySSLSocketFactory.getFixedSocketFactory();; localSSLSocketFactory = SSLSocketFactory.getSocketFactory())
    {
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), i));
      localSchemeRegistry.register(new Scheme("https", localSSLSocketFactory, paramInt1));
      return localSchemeRegistry;
    }
  }
  
  public static String getUrlWithQueryString(boolean paramBoolean, String paramString, RequestParams paramRequestParams)
  {
    Object localObject;
    if (paramString == null)
    {
      localObject = null;
      return (String)localObject;
    }
    if (paramBoolean) {
      paramString = paramString.replace(" ", "%20");
    }
    for (;;)
    {
      localObject = paramString;
      if (paramRequestParams == null) {
        break;
      }
      paramRequestParams = paramRequestParams.getParamString().trim();
      localObject = paramString;
      if (paramRequestParams.equals("")) {
        break;
      }
      localObject = paramString;
      if (paramRequestParams.equals("?")) {
        break;
      }
      localObject = new StringBuilder().append(paramString);
      if (paramString.contains("?")) {}
      for (paramString = "&";; paramString = "?")
      {
        paramString = paramString;
        return paramString + paramRequestParams;
      }
    }
  }
  
  public static boolean isInputStreamGZIPCompressed(PushbackInputStream paramPushbackInputStream)
  {
    if (paramPushbackInputStream == null) {}
    int i;
    int j;
    int k;
    do
    {
      return false;
      byte[] arrayOfByte = new byte[2];
      i = paramPushbackInputStream.read(arrayOfByte);
      paramPushbackInputStream.unread(arrayOfByte);
      j = arrayOfByte[0];
      k = arrayOfByte[1];
    } while ((i != 2) || (35615 != (k << 8 & 0xFF00 | j & 0xFF)));
    return true;
  }
  
  private HttpEntity paramsToEntity(RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    HttpEntity localHttpEntity = null;
    if (paramRequestParams != null) {}
    try
    {
      localHttpEntity = paramRequestParams.getEntity(paramResponseHandlerInterface);
      return localHttpEntity;
    }
    catch (IOException paramRequestParams)
    {
      if (paramResponseHandlerInterface != null)
      {
        paramResponseHandlerInterface.sendFailureMessage(0, null, null, paramRequestParams);
        return null;
      }
      paramRequestParams.printStackTrace();
    }
    return null;
  }
  
  public static void silentCloseInputStream(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream)
    {
      Log.w("AsyncHttpClient", "Cannot close input stream", paramInputStream);
    }
  }
  
  public static void silentCloseOutputStream(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException paramOutputStream)
    {
      Log.w("AsyncHttpClient", "Cannot close output stream", paramOutputStream);
    }
  }
  
  public void addHeader(String paramString1, String paramString2)
  {
    this.clientHeaderMap.put(paramString1, paramString2);
  }
  
  public void cancelAllRequests(boolean paramBoolean)
  {
    Iterator localIterator = this.requestMap.values().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (List)localIterator.next();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ((RequestHandle)((Iterator)localObject).next()).cancel(paramBoolean);
        }
      }
    }
    this.requestMap.clear();
  }
  
  public void cancelRequests(final Context paramContext, final boolean paramBoolean)
  {
    if (paramContext == null)
    {
      Log.e("AsyncHttpClient", "Passed null Context to cancelRequests");
      return;
    }
    paramContext = new Runnable()
    {
      public void run()
      {
        Object localObject = (List)AsyncHttpClient.this.requestMap.get(paramContext);
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            ((RequestHandle)((Iterator)localObject).next()).cancel(paramBoolean);
          }
          AsyncHttpClient.this.requestMap.remove(paramContext);
        }
      }
    };
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      new Thread(paramContext).start();
      return;
    }
    paramContext.run();
  }
  
  @Deprecated
  public void clearBasicAuth()
  {
    clearCredentialsProvider();
  }
  
  public void clearCredentialsProvider()
  {
    this.httpClient.getCredentialsProvider().clear();
  }
  
  public RequestHandle delete(Context paramContext, String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString = new HttpDelete(URI.create(paramString).normalize());
    return sendRequest(this.httpClient, this.httpContext, paramString, null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle delete(Context paramContext, String paramString, Header[] paramArrayOfHeader, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString = new HttpDelete(getUrlWithQueryString(this.isUrlEncodingEnabled, paramString, paramRequestParams));
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString, null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle delete(Context paramContext, String paramString, Header[] paramArrayOfHeader, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString = new HttpDelete(URI.create(paramString).normalize());
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString, null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle delete(String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return delete(null, paramString, paramResponseHandlerInterface);
  }
  
  public RequestHandle get(Context paramContext, String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return sendRequest(this.httpClient, this.httpContext, new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, paramString, paramRequestParams)), null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle get(Context paramContext, String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return get(paramContext, paramString, null, paramResponseHandlerInterface);
  }
  
  public RequestHandle get(Context paramContext, String paramString, Header[] paramArrayOfHeader, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString = new HttpGet(getUrlWithQueryString(this.isUrlEncodingEnabled, paramString, paramRequestParams));
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString, null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle get(String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return get(null, paramString, paramRequestParams, paramResponseHandlerInterface);
  }
  
  public RequestHandle get(String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return get(null, paramString, null, paramResponseHandlerInterface);
  }
  
  public int getConnectTimeout()
  {
    return this.connectTimeout;
  }
  
  protected ExecutorService getDefaultThreadPool()
  {
    return Executors.newCachedThreadPool();
  }
  
  public HttpClient getHttpClient()
  {
    return this.httpClient;
  }
  
  public HttpContext getHttpContext()
  {
    return this.httpContext;
  }
  
  public int getMaxConnections()
  {
    return this.maxConnections;
  }
  
  public int getResponseTimeout()
  {
    return this.responseTimeout;
  }
  
  public ExecutorService getThreadPool()
  {
    return this.threadPool;
  }
  
  public int getTimeout()
  {
    return this.connectTimeout;
  }
  
  public RequestHandle head(Context paramContext, String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return sendRequest(this.httpClient, this.httpContext, new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, paramString, paramRequestParams)), null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle head(Context paramContext, String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return head(paramContext, paramString, null, paramResponseHandlerInterface);
  }
  
  public RequestHandle head(Context paramContext, String paramString, Header[] paramArrayOfHeader, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString = new HttpHead(getUrlWithQueryString(this.isUrlEncodingEnabled, paramString, paramRequestParams));
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString, null, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle head(String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return head(null, paramString, paramRequestParams, paramResponseHandlerInterface);
  }
  
  public RequestHandle head(String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return head(null, paramString, null, paramResponseHandlerInterface);
  }
  
  public boolean isUrlEncodingEnabled()
  {
    return this.isUrlEncodingEnabled;
  }
  
  protected AsyncHttpRequest newAsyncHttpRequest(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, ResponseHandlerInterface paramResponseHandlerInterface, Context paramContext)
  {
    return new AsyncHttpRequest(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramResponseHandlerInterface);
  }
  
  public RequestHandle post(Context paramContext, String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return post(paramContext, paramString, paramsToEntity(paramRequestParams, paramResponseHandlerInterface), null, paramResponseHandlerInterface);
  }
  
  public RequestHandle post(Context paramContext, String paramString1, HttpEntity paramHttpEntity, String paramString2, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPost(URI.create(paramString1).normalize()), paramHttpEntity), paramString2, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle post(Context paramContext, String paramString1, Header[] paramArrayOfHeader, RequestParams paramRequestParams, String paramString2, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString1 = new HttpPost(URI.create(paramString1).normalize());
    if (paramRequestParams != null) {
      paramString1.setEntity(paramsToEntity(paramRequestParams, paramResponseHandlerInterface));
    }
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle post(Context paramContext, String paramString1, Header[] paramArrayOfHeader, HttpEntity paramHttpEntity, String paramString2, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString1 = addEntityToRequestBase(new HttpPost(URI.create(paramString1).normalize()), paramHttpEntity);
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle post(String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return post(null, paramString, paramRequestParams, paramResponseHandlerInterface);
  }
  
  public RequestHandle post(String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return post(null, paramString, null, paramResponseHandlerInterface);
  }
  
  public RequestHandle put(Context paramContext, String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return put(paramContext, paramString, paramsToEntity(paramRequestParams, paramResponseHandlerInterface), null, paramResponseHandlerInterface);
  }
  
  public RequestHandle put(Context paramContext, String paramString1, HttpEntity paramHttpEntity, String paramString2, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return sendRequest(this.httpClient, this.httpContext, addEntityToRequestBase(new HttpPut(URI.create(paramString1).normalize()), paramHttpEntity), paramString2, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle put(Context paramContext, String paramString1, Header[] paramArrayOfHeader, HttpEntity paramHttpEntity, String paramString2, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    paramString1 = addEntityToRequestBase(new HttpPut(URI.create(paramString1).normalize()), paramHttpEntity);
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    return sendRequest(this.httpClient, this.httpContext, paramString1, paramString2, paramResponseHandlerInterface, paramContext);
  }
  
  public RequestHandle put(String paramString, RequestParams paramRequestParams, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return put(null, paramString, paramRequestParams, paramResponseHandlerInterface);
  }
  
  public RequestHandle put(String paramString, ResponseHandlerInterface paramResponseHandlerInterface)
  {
    return put(null, paramString, null, paramResponseHandlerInterface);
  }
  
  public void removeAllHeaders()
  {
    this.clientHeaderMap.clear();
  }
  
  public void removeHeader(String paramString)
  {
    this.clientHeaderMap.remove(paramString);
  }
  
  protected RequestHandle sendRequest(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, ResponseHandlerInterface paramResponseHandlerInterface, Context paramContext)
  {
    if (paramHttpUriRequest == null) {
      throw new IllegalArgumentException("HttpUriRequest must not be null");
    }
    if (paramResponseHandlerInterface == null) {
      throw new IllegalArgumentException("ResponseHandler must not be null");
    }
    if (paramResponseHandlerInterface.getUseSynchronousMode()) {
      throw new IllegalArgumentException("Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead.");
    }
    if (paramString != null)
    {
      if ((!(paramHttpUriRequest instanceof HttpEntityEnclosingRequestBase)) || (((HttpEntityEnclosingRequestBase)paramHttpUriRequest).getEntity() == null)) {
        break label272;
      }
      Log.w("AsyncHttpClient", "Passed contentType will be ignored because HttpEntity sets content type");
    }
    for (;;)
    {
      paramResponseHandlerInterface.setRequestHeaders(paramHttpUriRequest.getAllHeaders());
      paramResponseHandlerInterface.setRequestURI(paramHttpUriRequest.getURI());
      paramDefaultHttpClient = newAsyncHttpRequest(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramString, paramResponseHandlerInterface, paramContext);
      this.threadPool.submit(paramDefaultHttpClient);
      paramString = new RequestHandle(paramDefaultHttpClient);
      if (paramContext != null)
      {
        paramHttpContext = (List)this.requestMap.get(paramContext);
        Map localMap = this.requestMap;
        paramDefaultHttpClient = paramHttpContext;
        if (paramHttpContext == null) {}
        try
        {
          paramDefaultHttpClient = Collections.synchronizedList(new LinkedList());
          this.requestMap.put(paramContext, paramDefaultHttpClient);
          if ((paramResponseHandlerInterface instanceof RangeFileAsyncHttpResponseHandler)) {
            ((RangeFileAsyncHttpResponseHandler)paramResponseHandlerInterface).updateRequestHeaders(paramHttpUriRequest);
          }
          paramDefaultHttpClient.add(paramString);
          paramDefaultHttpClient = paramDefaultHttpClient.iterator();
          for (;;)
          {
            if (paramDefaultHttpClient.hasNext()) {
              if (((RequestHandle)paramDefaultHttpClient.next()).shouldBeGarbageCollected())
              {
                paramDefaultHttpClient.remove();
                continue;
                label272:
                paramHttpUriRequest.setHeader("Content-Type", paramString);
                break;
              }
            }
          }
        }
        finally {}
      }
    }
    return paramString;
  }
  
  public void setAuthenticationPreemptive(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.httpClient.addRequestInterceptor(new PreemtiveAuthorizationHttpRequestInterceptor(), 0);
      return;
    }
    this.httpClient.removeRequestInterceptorByClass(PreemtiveAuthorizationHttpRequestInterceptor.class);
  }
  
  public void setBasicAuth(String paramString1, String paramString2)
  {
    setBasicAuth(paramString1, paramString2, false);
  }
  
  public void setBasicAuth(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    setBasicAuth(paramString1, paramString2, paramAuthScope, false);
  }
  
  public void setBasicAuth(String paramString1, String paramString2, AuthScope paramAuthScope, boolean paramBoolean)
  {
    setCredentials(paramAuthScope, new UsernamePasswordCredentials(paramString1, paramString2));
    setAuthenticationPreemptive(paramBoolean);
  }
  
  public void setBasicAuth(String paramString1, String paramString2, boolean paramBoolean)
  {
    setBasicAuth(paramString1, paramString2, null, paramBoolean);
  }
  
  public void setConnectTimeout(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 1000) {
      i = 10000;
    }
    this.connectTimeout = i;
    HttpParams localHttpParams = this.httpClient.getParams();
    ConnManagerParams.setTimeout(localHttpParams, this.connectTimeout);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, this.connectTimeout);
  }
  
  public void setCookieStore(CookieStore paramCookieStore)
  {
    this.httpContext.setAttribute("http.cookie-store", paramCookieStore);
  }
  
  public void setCredentials(AuthScope paramAuthScope, Credentials paramCredentials)
  {
    if (paramCredentials == null)
    {
      Log.d("AsyncHttpClient", "Provided credentials are null, not setting");
      return;
    }
    CredentialsProvider localCredentialsProvider = this.httpClient.getCredentialsProvider();
    AuthScope localAuthScope = paramAuthScope;
    if (paramAuthScope == null) {
      localAuthScope = AuthScope.ANY;
    }
    localCredentialsProvider.setCredentials(localAuthScope, paramCredentials);
  }
  
  public void setEnableRedirects(boolean paramBoolean)
  {
    setEnableRedirects(paramBoolean, paramBoolean, paramBoolean);
  }
  
  public void setEnableRedirects(boolean paramBoolean1, boolean paramBoolean2)
  {
    setEnableRedirects(paramBoolean1, paramBoolean2, true);
  }
  
  public void setEnableRedirects(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    HttpParams localHttpParams = this.httpClient.getParams();
    if (!paramBoolean2) {}
    for (paramBoolean2 = true;; paramBoolean2 = false)
    {
      localHttpParams.setBooleanParameter("http.protocol.reject-relative-redirect", paramBoolean2);
      this.httpClient.getParams().setBooleanParameter("http.protocol.allow-circular-redirects", paramBoolean3);
      this.httpClient.setRedirectHandler(new MyRedirectHandler(paramBoolean1));
      return;
    }
  }
  
  public void setMaxConnections(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0) {
      i = 10;
    }
    this.maxConnections = i;
    ConnManagerParams.setMaxConnectionsPerRoute(this.httpClient.getParams(), new ConnPerRouteBean(this.maxConnections));
  }
  
  public void setMaxRetriesAndTimeout(int paramInt1, int paramInt2)
  {
    this.httpClient.setHttpRequestRetryHandler(new RetryHandler(paramInt1, paramInt2));
  }
  
  public void setProxy(String paramString, int paramInt)
  {
    paramString = new HttpHost(paramString, paramInt);
    this.httpClient.getParams().setParameter("http.route.default-proxy", paramString);
  }
  
  public void setProxy(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    this.httpClient.getCredentialsProvider().setCredentials(new AuthScope(paramString1, paramInt), new UsernamePasswordCredentials(paramString2, paramString3));
    paramString1 = new HttpHost(paramString1, paramInt);
    this.httpClient.getParams().setParameter("http.route.default-proxy", paramString1);
  }
  
  public void setRedirectHandler(RedirectHandler paramRedirectHandler)
  {
    this.httpClient.setRedirectHandler(paramRedirectHandler);
  }
  
  public void setResponseTimeout(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 1000) {
      i = 10000;
    }
    this.responseTimeout = i;
    HttpConnectionParams.setSoTimeout(this.httpClient.getParams(), this.responseTimeout);
  }
  
  public void setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    this.httpClient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", paramSSLSocketFactory, 443));
  }
  
  public void setThreadPool(ExecutorService paramExecutorService)
  {
    this.threadPool = paramExecutorService;
  }
  
  public void setTimeout(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 1000) {
      i = 10000;
    }
    setConnectTimeout(i);
    setResponseTimeout(i);
  }
  
  public void setURLEncodingEnabled(boolean paramBoolean)
  {
    this.isUrlEncodingEnabled = paramBoolean;
  }
  
  public void setUserAgent(String paramString)
  {
    HttpProtocolParams.setUserAgent(this.httpClient.getParams(), paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\AsyncHttpClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */