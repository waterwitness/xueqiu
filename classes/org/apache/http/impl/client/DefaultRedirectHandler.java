package org.apache.http.impl.client;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Deprecated
@Immutable
public class DefaultRedirectHandler
  implements RedirectHandler
{
  private static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
  private final Log log = LogFactory.getLog(getClass());
  
  /* Error */
  public java.net.URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 37
    //   3: invokestatic 43	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   6: pop
    //   7: aload_1
    //   8: ldc 45
    //   10: invokeinterface 51 2 0
    //   15: astore_3
    //   16: aload_3
    //   17: ifnonnull +37 -> 54
    //   20: new 53	org/apache/http/ProtocolException
    //   23: dup
    //   24: new 55	java/lang/StringBuilder
    //   27: dup
    //   28: ldc 57
    //   30: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   33: aload_1
    //   34: invokeinterface 64 1 0
    //   39: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   42: ldc 70
    //   44: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokespecial 78	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;)V
    //   53: athrow
    //   54: aload_3
    //   55: invokeinterface 83 1 0
    //   60: astore 4
    //   62: aload_0
    //   63: getfield 30	org/apache/http/impl/client/DefaultRedirectHandler:log	Lorg/apache/commons/logging/Log;
    //   66: invokeinterface 89 1 0
    //   71: ifeq +34 -> 105
    //   74: aload_0
    //   75: getfield 30	org/apache/http/impl/client/DefaultRedirectHandler:log	Lorg/apache/commons/logging/Log;
    //   78: new 55	java/lang/StringBuilder
    //   81: dup
    //   82: ldc 91
    //   84: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: aload 4
    //   89: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 93
    //   94: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokeinterface 97 2 0
    //   105: new 99	java/net/URI
    //   108: dup
    //   109: aload 4
    //   111: invokespecial 100	java/net/URI:<init>	(Ljava/lang/String;)V
    //   114: astore_3
    //   115: aload_1
    //   116: invokeinterface 104 1 0
    //   121: astore 4
    //   123: aload_3
    //   124: invokevirtual 107	java/net/URI:isAbsolute	()Z
    //   127: ifne +290 -> 417
    //   130: aload 4
    //   132: ldc 109
    //   134: invokeinterface 115 2 0
    //   139: ifeq +59 -> 198
    //   142: new 53	org/apache/http/ProtocolException
    //   145: dup
    //   146: new 55	java/lang/StringBuilder
    //   149: dup
    //   150: ldc 117
    //   152: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   155: aload_3
    //   156: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   159: ldc 119
    //   161: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokespecial 78	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;)V
    //   170: athrow
    //   171: astore_1
    //   172: new 53	org/apache/http/ProtocolException
    //   175: dup
    //   176: new 55	java/lang/StringBuilder
    //   179: dup
    //   180: ldc 121
    //   182: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload 4
    //   187: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: aload_1
    //   194: invokespecial 124	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   197: athrow
    //   198: aload_2
    //   199: ldc 126
    //   201: invokeinterface 132 2 0
    //   206: checkcast 134	org/apache/http/HttpHost
    //   209: astore_1
    //   210: aload_1
    //   211: ldc -120
    //   213: invokestatic 141	org/apache/http/util/Asserts:notNull	(Ljava/lang/Object;Ljava/lang/String;)V
    //   216: aload_2
    //   217: ldc -113
    //   219: invokeinterface 132 2 0
    //   224: checkcast 145	org/apache/http/HttpRequest
    //   227: astore 5
    //   229: new 99	java/net/URI
    //   232: dup
    //   233: aload 5
    //   235: invokeinterface 149 1 0
    //   240: invokeinterface 154 1 0
    //   245: invokespecial 100	java/net/URI:<init>	(Ljava/lang/String;)V
    //   248: aload_1
    //   249: iconst_1
    //   250: invokestatic 160	org/apache/http/client/utils/URIUtils:rewriteURI	(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    //   253: aload_3
    //   254: invokestatic 164	org/apache/http/client/utils/URIUtils:resolve	(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    //   257: astore_1
    //   258: aload 4
    //   260: ldc -90
    //   262: invokeinterface 169 2 0
    //   267: ifeq +148 -> 415
    //   270: aload_2
    //   271: ldc 12
    //   273: invokeinterface 132 2 0
    //   278: checkcast 171	org/apache/http/impl/client/RedirectLocations
    //   281: astore 4
    //   283: aload 4
    //   285: astore_3
    //   286: aload 4
    //   288: ifnonnull +20 -> 308
    //   291: new 171	org/apache/http/impl/client/RedirectLocations
    //   294: dup
    //   295: invokespecial 172	org/apache/http/impl/client/RedirectLocations:<init>	()V
    //   298: astore_3
    //   299: aload_2
    //   300: ldc 12
    //   302: aload_3
    //   303: invokeinterface 176 3 0
    //   308: aload_1
    //   309: invokevirtual 179	java/net/URI:getFragment	()Ljava/lang/String;
    //   312: ifnull +93 -> 405
    //   315: aload_1
    //   316: new 134	org/apache/http/HttpHost
    //   319: dup
    //   320: aload_1
    //   321: invokevirtual 182	java/net/URI:getHost	()Ljava/lang/String;
    //   324: aload_1
    //   325: invokevirtual 186	java/net/URI:getPort	()I
    //   328: aload_1
    //   329: invokevirtual 189	java/net/URI:getScheme	()Ljava/lang/String;
    //   332: invokespecial 192	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   335: iconst_1
    //   336: invokestatic 160	org/apache/http/client/utils/URIUtils:rewriteURI	(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    //   339: astore_2
    //   340: aload_3
    //   341: aload_2
    //   342: invokevirtual 196	org/apache/http/impl/client/RedirectLocations:contains	(Ljava/net/URI;)Z
    //   345: ifeq +65 -> 410
    //   348: new 198	org/apache/http/client/CircularRedirectException
    //   351: dup
    //   352: new 55	java/lang/StringBuilder
    //   355: dup
    //   356: ldc -56
    //   358: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   361: aload_2
    //   362: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   365: ldc 93
    //   367: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   373: invokespecial 201	org/apache/http/client/CircularRedirectException:<init>	(Ljava/lang/String;)V
    //   376: athrow
    //   377: astore_1
    //   378: new 53	org/apache/http/ProtocolException
    //   381: dup
    //   382: aload_1
    //   383: invokevirtual 204	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   386: aload_1
    //   387: invokespecial 124	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: astore_1
    //   392: new 53	org/apache/http/ProtocolException
    //   395: dup
    //   396: aload_1
    //   397: invokevirtual 204	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   400: aload_1
    //   401: invokespecial 124	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   404: athrow
    //   405: aload_1
    //   406: astore_2
    //   407: goto -67 -> 340
    //   410: aload_3
    //   411: aload_2
    //   412: invokevirtual 208	org/apache/http/impl/client/RedirectLocations:add	(Ljava/net/URI;)V
    //   415: aload_1
    //   416: areturn
    //   417: aload_3
    //   418: astore_1
    //   419: goto -161 -> 258
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	422	0	this	DefaultRedirectHandler
    //   0	422	1	paramHttpResponse	HttpResponse
    //   0	422	2	paramHttpContext	HttpContext
    //   15	403	3	localObject1	Object
    //   60	227	4	localObject2	Object
    //   227	7	5	localHttpRequest	HttpRequest
    // Exception table:
    //   from	to	target	type
    //   105	115	171	java/net/URISyntaxException
    //   229	258	377	java/net/URISyntaxException
    //   315	340	391	java/net/URISyntaxException
  }
  
  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpResponse, "HTTP response");
    switch (paramHttpResponse.getStatusLine().getStatusCode())
    {
    case 304: 
    case 305: 
    case 306: 
    default: 
      return false;
    case 301: 
    case 302: 
    case 307: 
      paramHttpResponse = ((HttpRequest)paramHttpContext.getAttribute("http.request")).getRequestLine().getMethod();
      return (paramHttpResponse.equalsIgnoreCase("GET")) || (paramHttpResponse.equalsIgnoreCase("HEAD"));
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\DefaultRedirectHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */