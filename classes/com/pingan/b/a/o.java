package com.pingan.b.a;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

public final class o
  implements RedirectHandler
{
  /* Error */
  public final java.net.URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 17	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 19
    //   10: invokespecial 22	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_1
    //   15: ldc 24
    //   17: invokeinterface 30 2 0
    //   22: astore_3
    //   23: aload_3
    //   24: ifnonnull +37 -> 61
    //   27: new 32	org/apache/http/ProtocolException
    //   30: dup
    //   31: new 34	java/lang/StringBuilder
    //   34: dup
    //   35: ldc 36
    //   37: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   40: aload_1
    //   41: invokeinterface 41 1 0
    //   46: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   49: ldc 47
    //   51: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 55	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: aload_3
    //   62: invokeinterface 60 1 0
    //   67: ldc 62
    //   69: ldc 64
    //   71: invokevirtual 70	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   74: astore 4
    //   76: new 72	java/net/URI
    //   79: dup
    //   80: aload 4
    //   82: invokespecial 73	java/net/URI:<init>	(Ljava/lang/String;)V
    //   85: astore_3
    //   86: aload_1
    //   87: invokeinterface 77 1 0
    //   92: astore 4
    //   94: aload_3
    //   95: invokevirtual 81	java/net/URI:isAbsolute	()Z
    //   98: ifne +298 -> 396
    //   101: aload 4
    //   103: ldc 83
    //   105: invokeinterface 89 2 0
    //   110: ifeq +59 -> 169
    //   113: new 32	org/apache/http/ProtocolException
    //   116: dup
    //   117: new 34	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 91
    //   123: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_3
    //   127: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   130: ldc 93
    //   132: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokespecial 55	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;)V
    //   141: athrow
    //   142: astore_1
    //   143: new 32	org/apache/http/ProtocolException
    //   146: dup
    //   147: new 34	java/lang/StringBuilder
    //   150: dup
    //   151: ldc 95
    //   153: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   156: aload 4
    //   158: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: aload_1
    //   165: invokespecial 98	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   168: athrow
    //   169: aload_2
    //   170: ldc 100
    //   172: invokeinterface 106 2 0
    //   177: checkcast 108	org/apache/http/HttpHost
    //   180: astore_1
    //   181: aload_1
    //   182: ifnonnull +13 -> 195
    //   185: new 110	java/lang/IllegalStateException
    //   188: dup
    //   189: ldc 112
    //   191: invokespecial 113	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   194: athrow
    //   195: aload_2
    //   196: ldc 115
    //   198: invokeinterface 106 2 0
    //   203: checkcast 117	org/apache/http/HttpRequest
    //   206: astore 5
    //   208: new 72	java/net/URI
    //   211: dup
    //   212: aload 5
    //   214: invokeinterface 121 1 0
    //   219: invokeinterface 126 1 0
    //   224: invokespecial 73	java/net/URI:<init>	(Ljava/lang/String;)V
    //   227: aload_1
    //   228: iconst_1
    //   229: invokestatic 132	org/apache/http/client/utils/URIUtils:rewriteURI	(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    //   232: aload_3
    //   233: invokestatic 136	org/apache/http/client/utils/URIUtils:resolve	(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    //   236: astore_1
    //   237: aload 4
    //   239: ldc -118
    //   241: invokeinterface 141 2 0
    //   246: ifeq +148 -> 394
    //   249: aload_2
    //   250: ldc -113
    //   252: invokeinterface 106 2 0
    //   257: checkcast 145	org/apache/http/impl/client/RedirectLocations
    //   260: astore 4
    //   262: aload 4
    //   264: astore_3
    //   265: aload 4
    //   267: ifnonnull +20 -> 287
    //   270: new 145	org/apache/http/impl/client/RedirectLocations
    //   273: dup
    //   274: invokespecial 146	org/apache/http/impl/client/RedirectLocations:<init>	()V
    //   277: astore_3
    //   278: aload_2
    //   279: ldc -113
    //   281: aload_3
    //   282: invokeinterface 150 3 0
    //   287: aload_1
    //   288: invokevirtual 153	java/net/URI:getFragment	()Ljava/lang/String;
    //   291: ifnull +93 -> 384
    //   294: aload_1
    //   295: new 108	org/apache/http/HttpHost
    //   298: dup
    //   299: aload_1
    //   300: invokevirtual 156	java/net/URI:getHost	()Ljava/lang/String;
    //   303: aload_1
    //   304: invokevirtual 160	java/net/URI:getPort	()I
    //   307: aload_1
    //   308: invokevirtual 163	java/net/URI:getScheme	()Ljava/lang/String;
    //   311: invokespecial 166	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   314: iconst_1
    //   315: invokestatic 132	org/apache/http/client/utils/URIUtils:rewriteURI	(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;
    //   318: astore_2
    //   319: aload_3
    //   320: aload_2
    //   321: invokevirtual 170	org/apache/http/impl/client/RedirectLocations:contains	(Ljava/net/URI;)Z
    //   324: ifeq +65 -> 389
    //   327: new 172	org/apache/http/client/CircularRedirectException
    //   330: dup
    //   331: new 34	java/lang/StringBuilder
    //   334: dup
    //   335: ldc -82
    //   337: invokespecial 37	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload_2
    //   341: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   344: ldc -80
    //   346: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokespecial 177	org/apache/http/client/CircularRedirectException:<init>	(Ljava/lang/String;)V
    //   355: athrow
    //   356: astore_1
    //   357: new 32	org/apache/http/ProtocolException
    //   360: dup
    //   361: aload_1
    //   362: invokevirtual 180	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   365: aload_1
    //   366: invokespecial 98	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   369: athrow
    //   370: astore_1
    //   371: new 32	org/apache/http/ProtocolException
    //   374: dup
    //   375: aload_1
    //   376: invokevirtual 180	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   379: aload_1
    //   380: invokespecial 98	org/apache/http/ProtocolException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   383: athrow
    //   384: aload_1
    //   385: astore_2
    //   386: goto -67 -> 319
    //   389: aload_3
    //   390: aload_2
    //   391: invokevirtual 184	org/apache/http/impl/client/RedirectLocations:add	(Ljava/net/URI;)V
    //   394: aload_1
    //   395: areturn
    //   396: aload_3
    //   397: astore_1
    //   398: goto -161 -> 237
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	this	o
    //   0	401	1	paramHttpResponse	HttpResponse
    //   0	401	2	paramHttpContext	HttpContext
    //   22	375	3	localObject1	Object
    //   74	192	4	localObject2	Object
    //   206	7	5	localHttpRequest	org.apache.http.HttpRequest
    // Exception table:
    //   from	to	target	type
    //   76	86	142	java/net/URISyntaxException
    //   208	237	356	java/net/URISyntaxException
    //   294	319	370	java/net/URISyntaxException
  }
  
  public final boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    if (paramHttpResponse == null) {
      throw new IllegalArgumentException("HTTP response may not be null");
    }
    paramHttpResponse.getStatusLine().getStatusCode();
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */