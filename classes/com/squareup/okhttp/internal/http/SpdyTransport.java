package com.squareup.okhttp.internal.http;

import c.g;
import c.m;
import c.r;
import c.t;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.ErrorCode;
import com.squareup.okhttp.internal.spdy.Header;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyStream;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class SpdyTransport
  implements Transport
{
  private static final List<g> HTTP_2_PROHIBITED_HEADERS = Util.immutableList(new g[] { g.a("connection"), g.a("host"), g.a("keep-alive"), g.a("proxy-connection"), g.a("te"), g.a("transfer-encoding"), g.a("encoding"), g.a("upgrade") });
  private static final List<g> SPDY_3_PROHIBITED_HEADERS = Util.immutableList(new g[] { g.a("connection"), g.a("host"), g.a("keep-alive"), g.a("proxy-connection"), g.a("transfer-encoding") });
  private final HttpEngine httpEngine;
  private final SpdyConnection spdyConnection;
  private SpdyStream stream;
  
  public SpdyTransport(HttpEngine paramHttpEngine, SpdyConnection paramSpdyConnection)
  {
    this.httpEngine = paramHttpEngine;
    this.spdyConnection = paramSpdyConnection;
  }
  
  private static boolean isProhibitedHeader(Protocol paramProtocol, g paramg)
  {
    if (paramProtocol == Protocol.SPDY_3) {
      return SPDY_3_PROHIBITED_HEADERS.contains(paramg);
    }
    if (paramProtocol == Protocol.HTTP_2) {
      return HTTP_2_PROHIBITED_HEADERS.contains(paramg);
    }
    throw new AssertionError(paramProtocol);
  }
  
  private static String joinOnNull(String paramString1, String paramString2)
  {
    return paramString1 + '\000' + paramString2;
  }
  
  public static Response.Builder readNameValueBlock(List<Header> paramList, Protocol paramProtocol)
  {
    Object localObject1 = null;
    Object localObject2 = "HTTP/1.1";
    Headers.Builder localBuilder = new Headers.Builder();
    localBuilder.set(OkHeaders.SELECTED_PROTOCOL, paramProtocol.toString());
    int n = paramList.size();
    int i = 0;
    while (i < n)
    {
      g localg = ((Header)paramList.get(i)).name;
      String str2 = ((Header)paramList.get(i)).value.a();
      int j = 0;
      if (j < str2.length())
      {
        int m = str2.indexOf(0, j);
        int k = m;
        if (m == -1) {
          k = str2.length();
        }
        String str1 = str2.substring(j, k);
        if (localg.equals(Header.RESPONSE_STATUS)) {
          localObject1 = str1;
        }
        for (;;)
        {
          j = k + 1;
          break;
          if (localg.equals(Header.VERSION)) {
            localObject2 = str1;
          } else if (!isProhibitedHeader(paramProtocol, localg)) {
            localBuilder.add(localg.a(), str1);
          }
        }
      }
      i += 1;
    }
    if (localObject1 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    paramList = StatusLine.parse((String)localObject2 + " " + (String)localObject1);
    return new Response.Builder().protocol(paramProtocol).code(paramList.code).message(paramList.message).headers(localBuilder.build());
  }
  
  public static List<Header> writeNameValueBlock(Request paramRequest, Protocol paramProtocol, String paramString)
  {
    Headers localHeaders = paramRequest.headers();
    ArrayList localArrayList = new ArrayList(localHeaders.size() + 10);
    localArrayList.add(new Header(Header.TARGET_METHOD, paramRequest.method()));
    localArrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(paramRequest.url())));
    String str = HttpEngine.hostHeader(paramRequest.url());
    int i;
    if (Protocol.SPDY_3 == paramProtocol)
    {
      localArrayList.add(new Header(Header.VERSION, paramString));
      localArrayList.add(new Header(Header.TARGET_HOST, str));
      localArrayList.add(new Header(Header.TARGET_SCHEME, paramRequest.url().getProtocol()));
      paramRequest = new LinkedHashSet();
      int k = localHeaders.size();
      i = 0;
      label165:
      if (i >= k) {
        break label429;
      }
      paramString = g.a(localHeaders.name(i).toLowerCase(Locale.US));
      str = localHeaders.value(i);
      if ((!isProhibitedHeader(paramProtocol, paramString)) && (!paramString.equals(Header.TARGET_METHOD)) && (!paramString.equals(Header.TARGET_PATH)) && (!paramString.equals(Header.TARGET_SCHEME)) && (!paramString.equals(Header.TARGET_AUTHORITY)) && (!paramString.equals(Header.TARGET_HOST)) && (!paramString.equals(Header.VERSION)))
      {
        if (!paramRequest.add(paramString)) {
          break label339;
        }
        localArrayList.add(new Header(paramString, str));
      }
    }
    label339:
    label427:
    for (;;)
    {
      i += 1;
      break label165;
      if (Protocol.HTTP_2 == paramProtocol)
      {
        localArrayList.add(new Header(Header.TARGET_AUTHORITY, str));
        break;
      }
      throw new AssertionError();
      int j = 0;
      for (;;)
      {
        if (j >= localArrayList.size()) {
          break label427;
        }
        if (((Header)localArrayList.get(j)).name.equals(paramString))
        {
          localArrayList.set(j, new Header(paramString, joinOnNull(((Header)localArrayList.get(j)).value.a(), str)));
          break;
        }
        j += 1;
      }
    }
    label429:
    return localArrayList;
  }
  
  public final boolean canReuseConnection()
  {
    return true;
  }
  
  public final r createRequestBody(Request paramRequest, long paramLong)
  {
    return this.stream.getSink();
  }
  
  public final void disconnect(HttpEngine paramHttpEngine)
  {
    if (this.stream != null) {
      this.stream.close(ErrorCode.CANCEL);
    }
  }
  
  public final void finishRequest()
  {
    this.stream.getSink().close();
  }
  
  public final ResponseBody openResponseBody(Response paramResponse)
  {
    return new RealResponseBody(paramResponse.headers(), m.a(this.stream.getSource()));
  }
  
  public final Response.Builder readResponseHeaders()
  {
    return readNameValueBlock(this.stream.getResponseHeaders(), this.spdyConnection.getProtocol());
  }
  
  public final void releaseConnectionOnIdle() {}
  
  public final void writeRequestBody(RetryableSink paramRetryableSink)
  {
    paramRetryableSink.writeToSocket(this.stream.getSink());
  }
  
  public final void writeRequestHeaders(Request paramRequest)
  {
    if (this.stream != null) {
      return;
    }
    this.httpEngine.writingRequestHeaders();
    boolean bool = this.httpEngine.permitsRequestBody();
    String str = RequestLine.version(this.httpEngine.getConnection().getProtocol());
    this.stream = this.spdyConnection.newStream(writeNameValueBlock(paramRequest, this.spdyConnection.getProtocol(), str), bool, true);
    this.stream.readTimeout().timeout(this.httpEngine.client.getReadTimeout(), TimeUnit.MILLISECONDS);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\SpdyTransport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */