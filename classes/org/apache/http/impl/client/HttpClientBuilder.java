package org.apache.http.impl.client;

import java.io.Closeable;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.BackoffManager;
import org.apache.http.client.ConnectionBackoffStrategy;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.ServiceUnavailableRetryStrategy;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.InputStreamFactory;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.apache.http.client.protocol.RequestAddCookies;
import org.apache.http.client.protocol.RequestAuthCache;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.protocol.RequestDefaultHeaders;
import org.apache.http.client.protocol.RequestExpectContinue;
import org.apache.http.client.protocol.ResponseContentEncoding;
import org.apache.http.client.protocol.ResponseProcessCookies;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.DefaultHostnameVerifier;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.conn.util.PublicSuffixMatcherLoader;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.NoConnectionReuseStrategy;
import org.apache.http.impl.auth.BasicSchemeFactory;
import org.apache.http.impl.auth.DigestSchemeFactory;
import org.apache.http.impl.auth.KerberosSchemeFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.auth.SPNegoSchemeFactory;
import org.apache.http.impl.conn.DefaultProxyRoutePlanner;
import org.apache.http.impl.conn.DefaultRoutePlanner;
import org.apache.http.impl.conn.DefaultSchemePortResolver;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.impl.conn.SystemDefaultRoutePlanner;
import org.apache.http.impl.execchain.BackoffStrategyExec;
import org.apache.http.impl.execchain.ClientExecChain;
import org.apache.http.impl.execchain.MainClientExec;
import org.apache.http.impl.execchain.ProtocolExec;
import org.apache.http.impl.execchain.RedirectExec;
import org.apache.http.impl.execchain.RetryExec;
import org.apache.http.impl.execchain.ServiceUnavailableRetryExec;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpProcessorBuilder;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.ssl.SSLContexts;
import org.apache.http.util.TextUtils;
import org.apache.http.util.VersionInfo;

@NotThreadSafe
public class HttpClientBuilder
{
  private boolean authCachingDisabled;
  private Lookup<AuthSchemeProvider> authSchemeRegistry;
  private boolean automaticRetriesDisabled;
  private BackoffManager backoffManager;
  private List<Closeable> closeables;
  private HttpClientConnectionManager connManager;
  private boolean connManagerShared;
  private long connTimeToLive = -1L;
  private TimeUnit connTimeToLiveTimeUnit = TimeUnit.MILLISECONDS;
  private ConnectionBackoffStrategy connectionBackoffStrategy;
  private boolean connectionStateDisabled;
  private boolean contentCompressionDisabled;
  private Map<String, InputStreamFactory> contentDecoderMap;
  private boolean cookieManagementDisabled;
  private Lookup<CookieSpecProvider> cookieSpecRegistry;
  private CookieStore cookieStore;
  private CredentialsProvider credentialsProvider;
  private ConnectionConfig defaultConnectionConfig;
  private Collection<? extends Header> defaultHeaders;
  private RequestConfig defaultRequestConfig;
  private SocketConfig defaultSocketConfig;
  private boolean evictExpiredConnections;
  private boolean evictIdleConnections;
  private HostnameVerifier hostnameVerifier;
  private HttpProcessor httpprocessor;
  private ConnectionKeepAliveStrategy keepAliveStrategy;
  private int maxConnPerRoute = 0;
  private int maxConnTotal = 0;
  private long maxIdleTime;
  private TimeUnit maxIdleTimeUnit;
  private HttpHost proxy;
  private AuthenticationStrategy proxyAuthStrategy;
  private PublicSuffixMatcher publicSuffixMatcher;
  private boolean redirectHandlingDisabled;
  private RedirectStrategy redirectStrategy;
  private HttpRequestExecutor requestExec;
  private LinkedList<HttpRequestInterceptor> requestFirst;
  private LinkedList<HttpRequestInterceptor> requestLast;
  private LinkedList<HttpResponseInterceptor> responseFirst;
  private LinkedList<HttpResponseInterceptor> responseLast;
  private HttpRequestRetryHandler retryHandler;
  private ConnectionReuseStrategy reuseStrategy;
  private HttpRoutePlanner routePlanner;
  private SchemePortResolver schemePortResolver;
  private ServiceUnavailableRetryStrategy serviceUnavailStrategy;
  private SSLContext sslContext;
  private LayeredConnectionSocketFactory sslSocketFactory;
  private boolean systemProperties;
  private AuthenticationStrategy targetAuthStrategy;
  private String userAgent;
  private UserTokenHandler userTokenHandler;
  
  public static HttpClientBuilder create()
  {
    return new HttpClientBuilder();
  }
  
  private static String[] split(String paramString)
  {
    if (TextUtils.isBlank(paramString)) {
      return null;
    }
    return paramString.split(" *, *");
  }
  
  protected void addCloseable(Closeable paramCloseable)
  {
    if (paramCloseable == null) {
      return;
    }
    if (this.closeables == null) {
      this.closeables = new ArrayList();
    }
    this.closeables.add(paramCloseable);
  }
  
  public final HttpClientBuilder addInterceptorFirst(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    if (paramHttpRequestInterceptor == null) {
      return this;
    }
    if (this.requestFirst == null) {
      this.requestFirst = new LinkedList();
    }
    this.requestFirst.addFirst(paramHttpRequestInterceptor);
    return this;
  }
  
  public final HttpClientBuilder addInterceptorFirst(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    if (paramHttpResponseInterceptor == null) {
      return this;
    }
    if (this.responseFirst == null) {
      this.responseFirst = new LinkedList();
    }
    this.responseFirst.addFirst(paramHttpResponseInterceptor);
    return this;
  }
  
  public final HttpClientBuilder addInterceptorLast(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    if (paramHttpRequestInterceptor == null) {
      return this;
    }
    if (this.requestLast == null) {
      this.requestLast = new LinkedList();
    }
    this.requestLast.addLast(paramHttpRequestInterceptor);
    return this;
  }
  
  public final HttpClientBuilder addInterceptorLast(HttpResponseInterceptor paramHttpResponseInterceptor)
  {
    if (paramHttpResponseInterceptor == null) {
      return this;
    }
    if (this.responseLast == null) {
      this.responseLast = new LinkedList();
    }
    this.responseLast.addLast(paramHttpResponseInterceptor);
    return this;
  }
  
  public CloseableHttpClient build()
  {
    Object localObject5 = this.publicSuffixMatcher;
    if (localObject5 == null) {
      localObject5 = PublicSuffixMatcherLoader.getDefault();
    }
    for (;;)
    {
      Object localObject7 = this.requestExec;
      if (localObject7 == null) {
        localObject7 = new HttpRequestExecutor();
      }
      for (;;)
      {
        Object localObject1 = this.connManager;
        final Object localObject6 = localObject1;
        final Object localObject2;
        label91:
        Object localObject3;
        if (localObject1 == null)
        {
          localObject2 = this.sslSocketFactory;
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            if (!this.systemProperties) {
              break label580;
            }
            localObject1 = split(System.getProperty("https.protocols"));
            if (!this.systemProperties) {
              break label585;
            }
            localObject2 = split(System.getProperty("https.cipherSuites"));
            localObject3 = this.hostnameVerifier;
            if (localObject3 != null) {
              break label1686;
            }
            localObject3 = new DefaultHostnameVerifier((PublicSuffixMatcher)localObject5);
          }
        }
        label132:
        label171:
        label346:
        label419:
        label580:
        label585:
        label632:
        label639:
        label646:
        label952:
        label983:
        label1024:
        label1423:
        label1442:
        label1495:
        label1507:
        label1643:
        label1648:
        label1656:
        label1671:
        label1674:
        label1683:
        label1686:
        for (;;)
        {
          long l;
          Object localObject8;
          Object localObject9;
          Object localObject10;
          Object localObject4;
          if (this.sslContext != null)
          {
            localObject1 = new SSLConnectionSocketFactory(this.sslContext, (String[])localObject1, (String[])localObject2, (HostnameVerifier)localObject3);
            localObject2 = RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", localObject1).build();
            l = this.connTimeToLive;
            if (this.connTimeToLiveTimeUnit == null) {
              break label632;
            }
            localObject1 = this.connTimeToLiveTimeUnit;
            localObject6 = new PoolingHttpClientConnectionManager((Registry)localObject2, null, null, null, l, (TimeUnit)localObject1);
            if (this.defaultSocketConfig != null) {
              ((PoolingHttpClientConnectionManager)localObject6).setDefaultSocketConfig(this.defaultSocketConfig);
            }
            if (this.defaultConnectionConfig != null) {
              ((PoolingHttpClientConnectionManager)localObject6).setDefaultConnectionConfig(this.defaultConnectionConfig);
            }
            if ((this.systemProperties) && ("true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true"))))
            {
              int i = Integer.parseInt(System.getProperty("http.maxConnections", "5"));
              ((PoolingHttpClientConnectionManager)localObject6).setDefaultMaxPerRoute(i);
              ((PoolingHttpClientConnectionManager)localObject6).setMaxTotal(i * 2);
            }
            if (this.maxConnTotal > 0) {
              ((PoolingHttpClientConnectionManager)localObject6).setMaxTotal(this.maxConnTotal);
            }
            if (this.maxConnPerRoute > 0) {
              ((PoolingHttpClientConnectionManager)localObject6).setDefaultMaxPerRoute(this.maxConnPerRoute);
            }
            localObject2 = this.reuseStrategy;
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              if ((!this.systemProperties) || ("true".equalsIgnoreCase(System.getProperty("http.keepAlive", "true")))) {
                break label639;
              }
              localObject1 = NoConnectionReuseStrategy.INSTANCE;
            }
            localObject2 = this.keepAliveStrategy;
            localObject8 = localObject2;
            if (localObject2 == null) {
              localObject8 = DefaultConnectionKeepAliveStrategy.INSTANCE;
            }
            localObject2 = this.targetAuthStrategy;
            localObject9 = localObject2;
            if (localObject2 == null) {
              localObject9 = TargetAuthenticationStrategy.INSTANCE;
            }
            localObject2 = this.proxyAuthStrategy;
            localObject10 = localObject2;
            if (localObject2 == null) {
              localObject10 = ProxyAuthenticationStrategy.INSTANCE;
            }
            localObject3 = this.userTokenHandler;
            localObject2 = localObject3;
            if (localObject3 == null)
            {
              if (this.connectionStateDisabled) {
                break label646;
              }
              localObject2 = DefaultUserTokenHandler.INSTANCE;
            }
            localObject4 = this.userAgent;
            localObject3 = localObject4;
            if (localObject4 != null) {
              break label1683;
            }
            if (this.systemProperties) {
              localObject4 = System.getProperty("http.agent");
            }
            localObject3 = localObject4;
            if (localObject4 != null) {
              break label1683;
            }
            localObject3 = VersionInfo.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass());
          }
          for (;;)
          {
            localObject4 = decorateMainExec(createMainExec((HttpRequestExecutor)localObject7, (HttpClientConnectionManager)localObject6, (ConnectionReuseStrategy)localObject1, (ConnectionKeepAliveStrategy)localObject8, new ImmutableHttpProcessor(new HttpRequestInterceptor[] { new RequestTargetHost(), new RequestUserAgent((String)localObject3) }), (AuthenticationStrategy)localObject9, (AuthenticationStrategy)localObject10, (UserTokenHandler)localObject2));
            localObject2 = this.httpprocessor;
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject1 = HttpProcessorBuilder.create();
              if (this.requestFirst != null)
              {
                localObject2 = this.requestFirst.iterator();
                for (;;)
                {
                  if (((Iterator)localObject2).hasNext())
                  {
                    ((HttpProcessorBuilder)localObject1).addFirst((HttpRequestInterceptor)((Iterator)localObject2).next());
                    continue;
                    localObject1 = null;
                    break;
                    localObject2 = null;
                    break label91;
                    if (this.systemProperties)
                    {
                      localObject1 = new SSLConnectionSocketFactory((SSLSocketFactory)SSLSocketFactory.getDefault(), (String[])localObject1, (String[])localObject2, (HostnameVerifier)localObject3);
                      break label132;
                    }
                    localObject1 = new SSLConnectionSocketFactory(SSLContexts.createDefault(), (HostnameVerifier)localObject3);
                    break label132;
                    localObject1 = TimeUnit.MILLISECONDS;
                    break label171;
                    localObject1 = DefaultConnectionReuseStrategy.INSTANCE;
                    break label346;
                    localObject2 = NoopUserTokenHandler.INSTANCE;
                    break label419;
                  }
                }
              }
              if (this.responseFirst != null)
              {
                localObject2 = this.responseFirst.iterator();
                while (((Iterator)localObject2).hasNext()) {
                  ((HttpProcessorBuilder)localObject1).addFirst((HttpResponseInterceptor)((Iterator)localObject2).next());
                }
              }
              ((HttpProcessorBuilder)localObject1).addAll(new HttpRequestInterceptor[] { new RequestDefaultHeaders(this.defaultHeaders), new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent((String)localObject3), new RequestExpectContinue() });
              if (!this.cookieManagementDisabled) {
                ((HttpProcessorBuilder)localObject1).add(new RequestAddCookies());
              }
              if (!this.contentCompressionDisabled)
              {
                if (this.contentDecoderMap == null) {
                  break label952;
                }
                localObject2 = new ArrayList(this.contentDecoderMap.keySet());
                Collections.sort((List)localObject2);
                ((HttpProcessorBuilder)localObject1).add(new RequestAcceptEncoding((List)localObject2));
              }
              for (;;)
              {
                if (!this.authCachingDisabled) {
                  ((HttpProcessorBuilder)localObject1).add(new RequestAuthCache());
                }
                if (!this.cookieManagementDisabled) {
                  ((HttpProcessorBuilder)localObject1).add(new ResponseProcessCookies());
                }
                if (this.contentCompressionDisabled) {
                  break label983;
                }
                if (this.contentDecoderMap == null) {
                  break label1024;
                }
                localObject2 = RegistryBuilder.create();
                localObject3 = this.contentDecoderMap.entrySet().iterator();
                while (((Iterator)localObject3).hasNext())
                {
                  localObject7 = (Map.Entry)((Iterator)localObject3).next();
                  ((RegistryBuilder)localObject2).register((String)((Map.Entry)localObject7).getKey(), ((Map.Entry)localObject7).getValue());
                }
                ((HttpProcessorBuilder)localObject1).add(new RequestAcceptEncoding());
              }
              ((HttpProcessorBuilder)localObject1).add(new ResponseContentEncoding(((RegistryBuilder)localObject2).build()));
              while (this.requestLast != null)
              {
                localObject2 = this.requestLast.iterator();
                while (((Iterator)localObject2).hasNext()) {
                  ((HttpProcessorBuilder)localObject1).addLast((HttpRequestInterceptor)((Iterator)localObject2).next());
                }
                ((HttpProcessorBuilder)localObject1).add(new ResponseContentEncoding());
              }
              if (this.responseLast != null)
              {
                localObject2 = this.responseLast.iterator();
                while (((Iterator)localObject2).hasNext()) {
                  ((HttpProcessorBuilder)localObject1).addLast((HttpResponseInterceptor)((Iterator)localObject2).next());
                }
              }
              localObject1 = ((HttpProcessorBuilder)localObject1).build();
            }
            localObject2 = decorateProtocolExec(new ProtocolExec((ClientExecChain)localObject4, (HttpProcessor)localObject1));
            if (!this.automaticRetriesDisabled)
            {
              localObject3 = this.retryHandler;
              localObject1 = localObject3;
              if (localObject3 == null) {
                localObject1 = DefaultHttpRequestRetryHandler.INSTANCE;
              }
              localObject2 = new RetryExec((ClientExecChain)localObject2, (HttpRequestRetryHandler)localObject1);
            }
            for (;;)
            {
              localObject3 = this.routePlanner;
              localObject1 = localObject3;
              if (localObject3 == null)
              {
                localObject3 = this.schemePortResolver;
                localObject1 = localObject3;
                if (localObject3 == null) {
                  localObject1 = DefaultSchemePortResolver.INSTANCE;
                }
                if (this.proxy != null) {
                  localObject1 = new DefaultProxyRoutePlanner(this.proxy, (SchemePortResolver)localObject1);
                }
              }
              else
              {
                localObject3 = localObject2;
                if (!this.redirectHandlingDisabled)
                {
                  localObject4 = this.redirectStrategy;
                  localObject3 = localObject4;
                  if (localObject4 == null) {
                    localObject3 = DefaultRedirectStrategy.INSTANCE;
                  }
                  localObject3 = new RedirectExec((ClientExecChain)localObject2, (HttpRoutePlanner)localObject1, (RedirectStrategy)localObject3);
                }
                localObject4 = this.serviceUnavailStrategy;
                localObject2 = localObject3;
                if (localObject4 != null) {
                  localObject2 = new ServiceUnavailableRetryExec((ClientExecChain)localObject3, (ServiceUnavailableRetryStrategy)localObject4);
                }
                if ((this.backoffManager == null) || (this.connectionBackoffStrategy == null)) {
                  break label1674;
                }
              }
              for (localObject7 = new BackoffStrategyExec((ClientExecChain)localObject2, this.connectionBackoffStrategy, this.backoffManager);; localObject7 = localObject2)
              {
                localObject2 = this.authSchemeRegistry;
                localObject8 = localObject2;
                if (localObject2 == null) {
                  localObject8 = RegistryBuilder.create().register("Basic", new BasicSchemeFactory()).register("Digest", new DigestSchemeFactory()).register("NTLM", new NTLMSchemeFactory()).register("Negotiate", new SPNegoSchemeFactory()).register("Kerberos", new KerberosSchemeFactory()).build();
                }
                localObject2 = this.cookieSpecRegistry;
                localObject9 = localObject2;
                if (localObject2 == null) {
                  localObject9 = CookieSpecRegistries.createDefault((PublicSuffixMatcher)localObject5);
                }
                localObject2 = this.cookieStore;
                localObject5 = localObject2;
                if (localObject2 == null) {
                  localObject5 = new BasicCookieStore();
                }
                localObject2 = this.credentialsProvider;
                localObject3 = localObject2;
                if (localObject2 == null)
                {
                  if (this.systemProperties) {
                    localObject3 = new SystemDefaultCredentialsProvider();
                  }
                }
                else
                {
                  if (this.closeables == null) {
                    break label1643;
                  }
                  localObject2 = new ArrayList(this.closeables);
                  if (this.connManagerShared) {
                    break label1671;
                  }
                  localObject4 = localObject2;
                  if (localObject2 == null) {
                    localObject4 = new ArrayList(1);
                  }
                  if ((this.evictExpiredConnections) || (this.evictIdleConnections))
                  {
                    if (this.maxIdleTime <= 0L) {
                      break label1648;
                    }
                    l = this.maxIdleTime;
                    if (this.maxIdleTimeUnit == null) {
                      break label1656;
                    }
                    localObject2 = this.maxIdleTimeUnit;
                    localObject2 = new IdleConnectionEvictor((HttpClientConnectionManager)localObject6, l, (TimeUnit)localObject2);
                    ((List)localObject4).add(new Closeable()
                    {
                      public void close()
                      {
                        localObject2.shutdown();
                      }
                    });
                    ((IdleConnectionEvictor)localObject2).start();
                  }
                  ((List)localObject4).add(new Closeable()
                  {
                    public void close()
                    {
                      localObject6.shutdown();
                    }
                  });
                  localObject2 = localObject4;
                }
                for (;;)
                {
                  if (this.defaultRequestConfig != null) {}
                  for (localObject4 = this.defaultRequestConfig;; localObject4 = RequestConfig.DEFAULT)
                  {
                    return new InternalHttpClient((ClientExecChain)localObject7, (HttpClientConnectionManager)localObject6, (HttpRoutePlanner)localObject1, (Lookup)localObject9, (Lookup)localObject8, (CookieStore)localObject5, (CredentialsProvider)localObject3, (RequestConfig)localObject4, (List)localObject2);
                    if (this.systemProperties)
                    {
                      localObject1 = new SystemDefaultRoutePlanner((SchemePortResolver)localObject1, ProxySelector.getDefault());
                      break;
                    }
                    localObject1 = new DefaultRoutePlanner((SchemePortResolver)localObject1);
                    break;
                    localObject3 = new BasicCredentialsProvider();
                    break label1423;
                    localObject2 = null;
                    break label1442;
                    l = 10L;
                    break label1495;
                    localObject2 = TimeUnit.SECONDS;
                    break label1507;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  protected ClientExecChain createMainExec(HttpRequestExecutor paramHttpRequestExecutor, HttpClientConnectionManager paramHttpClientConnectionManager, ConnectionReuseStrategy paramConnectionReuseStrategy, ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy, HttpProcessor paramHttpProcessor, AuthenticationStrategy paramAuthenticationStrategy1, AuthenticationStrategy paramAuthenticationStrategy2, UserTokenHandler paramUserTokenHandler)
  {
    return new MainClientExec(paramHttpRequestExecutor, paramHttpClientConnectionManager, paramConnectionReuseStrategy, paramConnectionKeepAliveStrategy, paramHttpProcessor, paramAuthenticationStrategy1, paramAuthenticationStrategy2, paramUserTokenHandler);
  }
  
  protected ClientExecChain decorateMainExec(ClientExecChain paramClientExecChain)
  {
    return paramClientExecChain;
  }
  
  protected ClientExecChain decorateProtocolExec(ClientExecChain paramClientExecChain)
  {
    return paramClientExecChain;
  }
  
  public final HttpClientBuilder disableAuthCaching()
  {
    this.authCachingDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder disableAutomaticRetries()
  {
    this.automaticRetriesDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder disableConnectionState()
  {
    this.connectionStateDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder disableContentCompression()
  {
    this.contentCompressionDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder disableCookieManagement()
  {
    this.cookieManagementDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder disableRedirectHandling()
  {
    this.redirectHandlingDisabled = true;
    return this;
  }
  
  public final HttpClientBuilder evictExpiredConnections()
  {
    this.evictExpiredConnections = true;
    return this;
  }
  
  public final HttpClientBuilder evictIdleConnections(long paramLong, TimeUnit paramTimeUnit)
  {
    this.evictIdleConnections = true;
    this.maxIdleTime = paramLong;
    this.maxIdleTimeUnit = paramTimeUnit;
    return this;
  }
  
  @Deprecated
  public final HttpClientBuilder evictIdleConnections(Long paramLong, TimeUnit paramTimeUnit)
  {
    return evictIdleConnections(paramLong.longValue(), paramTimeUnit);
  }
  
  public final HttpClientBuilder setBackoffManager(BackoffManager paramBackoffManager)
  {
    this.backoffManager = paramBackoffManager;
    return this;
  }
  
  public final HttpClientBuilder setConnectionBackoffStrategy(ConnectionBackoffStrategy paramConnectionBackoffStrategy)
  {
    this.connectionBackoffStrategy = paramConnectionBackoffStrategy;
    return this;
  }
  
  public final HttpClientBuilder setConnectionManager(HttpClientConnectionManager paramHttpClientConnectionManager)
  {
    this.connManager = paramHttpClientConnectionManager;
    return this;
  }
  
  public final HttpClientBuilder setConnectionManagerShared(boolean paramBoolean)
  {
    this.connManagerShared = paramBoolean;
    return this;
  }
  
  public final HttpClientBuilder setConnectionReuseStrategy(ConnectionReuseStrategy paramConnectionReuseStrategy)
  {
    this.reuseStrategy = paramConnectionReuseStrategy;
    return this;
  }
  
  public final HttpClientBuilder setConnectionTimeToLive(long paramLong, TimeUnit paramTimeUnit)
  {
    this.connTimeToLive = paramLong;
    this.connTimeToLiveTimeUnit = paramTimeUnit;
    return this;
  }
  
  public final HttpClientBuilder setContentDecoderRegistry(Map<String, InputStreamFactory> paramMap)
  {
    this.contentDecoderMap = paramMap;
    return this;
  }
  
  public final HttpClientBuilder setDefaultAuthSchemeRegistry(Lookup<AuthSchemeProvider> paramLookup)
  {
    this.authSchemeRegistry = paramLookup;
    return this;
  }
  
  public final HttpClientBuilder setDefaultConnectionConfig(ConnectionConfig paramConnectionConfig)
  {
    this.defaultConnectionConfig = paramConnectionConfig;
    return this;
  }
  
  public final HttpClientBuilder setDefaultCookieSpecRegistry(Lookup<CookieSpecProvider> paramLookup)
  {
    this.cookieSpecRegistry = paramLookup;
    return this;
  }
  
  public final HttpClientBuilder setDefaultCookieStore(CookieStore paramCookieStore)
  {
    this.cookieStore = paramCookieStore;
    return this;
  }
  
  public final HttpClientBuilder setDefaultCredentialsProvider(CredentialsProvider paramCredentialsProvider)
  {
    this.credentialsProvider = paramCredentialsProvider;
    return this;
  }
  
  public final HttpClientBuilder setDefaultHeaders(Collection<? extends Header> paramCollection)
  {
    this.defaultHeaders = paramCollection;
    return this;
  }
  
  public final HttpClientBuilder setDefaultRequestConfig(RequestConfig paramRequestConfig)
  {
    this.defaultRequestConfig = paramRequestConfig;
    return this;
  }
  
  public final HttpClientBuilder setDefaultSocketConfig(SocketConfig paramSocketConfig)
  {
    this.defaultSocketConfig = paramSocketConfig;
    return this;
  }
  
  @Deprecated
  public final HttpClientBuilder setHostnameVerifier(X509HostnameVerifier paramX509HostnameVerifier)
  {
    this.hostnameVerifier = paramX509HostnameVerifier;
    return this;
  }
  
  public final HttpClientBuilder setHttpProcessor(HttpProcessor paramHttpProcessor)
  {
    this.httpprocessor = paramHttpProcessor;
    return this;
  }
  
  public final HttpClientBuilder setKeepAliveStrategy(ConnectionKeepAliveStrategy paramConnectionKeepAliveStrategy)
  {
    this.keepAliveStrategy = paramConnectionKeepAliveStrategy;
    return this;
  }
  
  public final HttpClientBuilder setMaxConnPerRoute(int paramInt)
  {
    this.maxConnPerRoute = paramInt;
    return this;
  }
  
  public final HttpClientBuilder setMaxConnTotal(int paramInt)
  {
    this.maxConnTotal = paramInt;
    return this;
  }
  
  public final HttpClientBuilder setProxy(HttpHost paramHttpHost)
  {
    this.proxy = paramHttpHost;
    return this;
  }
  
  public final HttpClientBuilder setProxyAuthenticationStrategy(AuthenticationStrategy paramAuthenticationStrategy)
  {
    this.proxyAuthStrategy = paramAuthenticationStrategy;
    return this;
  }
  
  public final HttpClientBuilder setPublicSuffixMatcher(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this.publicSuffixMatcher = paramPublicSuffixMatcher;
    return this;
  }
  
  public final HttpClientBuilder setRedirectStrategy(RedirectStrategy paramRedirectStrategy)
  {
    this.redirectStrategy = paramRedirectStrategy;
    return this;
  }
  
  public final HttpClientBuilder setRequestExecutor(HttpRequestExecutor paramHttpRequestExecutor)
  {
    this.requestExec = paramHttpRequestExecutor;
    return this;
  }
  
  public final HttpClientBuilder setRetryHandler(HttpRequestRetryHandler paramHttpRequestRetryHandler)
  {
    this.retryHandler = paramHttpRequestRetryHandler;
    return this;
  }
  
  public final HttpClientBuilder setRoutePlanner(HttpRoutePlanner paramHttpRoutePlanner)
  {
    this.routePlanner = paramHttpRoutePlanner;
    return this;
  }
  
  public final HttpClientBuilder setSSLContext(SSLContext paramSSLContext)
  {
    this.sslContext = paramSSLContext;
    return this;
  }
  
  public final HttpClientBuilder setSSLHostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    this.hostnameVerifier = paramHostnameVerifier;
    return this;
  }
  
  public final HttpClientBuilder setSSLSocketFactory(LayeredConnectionSocketFactory paramLayeredConnectionSocketFactory)
  {
    this.sslSocketFactory = paramLayeredConnectionSocketFactory;
    return this;
  }
  
  public final HttpClientBuilder setSchemePortResolver(SchemePortResolver paramSchemePortResolver)
  {
    this.schemePortResolver = paramSchemePortResolver;
    return this;
  }
  
  public final HttpClientBuilder setServiceUnavailableRetryStrategy(ServiceUnavailableRetryStrategy paramServiceUnavailableRetryStrategy)
  {
    this.serviceUnavailStrategy = paramServiceUnavailableRetryStrategy;
    return this;
  }
  
  @Deprecated
  public final HttpClientBuilder setSslcontext(SSLContext paramSSLContext)
  {
    return setSSLContext(paramSSLContext);
  }
  
  public final HttpClientBuilder setTargetAuthenticationStrategy(AuthenticationStrategy paramAuthenticationStrategy)
  {
    this.targetAuthStrategy = paramAuthenticationStrategy;
    return this;
  }
  
  public final HttpClientBuilder setUserAgent(String paramString)
  {
    this.userAgent = paramString;
    return this;
  }
  
  public final HttpClientBuilder setUserTokenHandler(UserTokenHandler paramUserTokenHandler)
  {
    this.userTokenHandler = paramUserTokenHandler;
    return this;
  }
  
  public final HttpClientBuilder useSystemProperties()
  {
    this.systemProperties = true;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\HttpClientBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */