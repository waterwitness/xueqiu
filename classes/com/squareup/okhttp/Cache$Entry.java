package com.squareup.okhttp;

import c.c;
import c.e;
import c.f;
import c.g;
import c.m;
import c.s;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.List;

final class Cache$Entry
{
  private final int code;
  private final Handshake handshake;
  private final String message;
  private final Protocol protocol;
  private final String requestMethod;
  private final Headers responseHeaders;
  private final String url;
  private final Headers varyHeaders;
  
  public Cache$Entry(s params)
  {
    try
    {
      f localf1 = m.a(params);
      this.url = localf1.n();
      this.requestMethod = localf1.n();
      Object localObject = new Headers.Builder();
      int k = Cache.access$1000(localf1);
      int i = 0;
      while (i < k)
      {
        ((Headers.Builder)localObject).addLenient(localf1.n());
        i += 1;
      }
      this.varyHeaders = ((Headers.Builder)localObject).build();
      localObject = StatusLine.parse(localf1.n());
      this.protocol = ((StatusLine)localObject).protocol;
      this.code = ((StatusLine)localObject).code;
      this.message = ((StatusLine)localObject).message;
      localObject = new Headers.Builder();
      k = Cache.access$1000(localf1);
      i = j;
      while (i < k)
      {
        ((Headers.Builder)localObject).addLenient(localf1.n());
        i += 1;
      }
      this.responseHeaders = ((Headers.Builder)localObject).build();
      if (isHttps())
      {
        localObject = localf1.n();
        if (((String)localObject).length() > 0) {
          throw new IOException("expected \"\" but was \"" + (String)localObject + "\"");
        }
      }
    }
    finally
    {
      params.close();
    }
    for (this.handshake = Handshake.get(localf2.n(), readCertificateList(localf2), readCertificateList(localf2));; this.handshake = null)
    {
      params.close();
      return;
    }
  }
  
  public Cache$Entry(Response paramResponse)
  {
    this.url = paramResponse.request().urlString();
    this.varyHeaders = OkHeaders.varyHeaders(paramResponse);
    this.requestMethod = paramResponse.request().method();
    this.protocol = paramResponse.protocol();
    this.code = paramResponse.code();
    this.message = paramResponse.message();
    this.responseHeaders = paramResponse.headers();
    this.handshake = paramResponse.handshake();
  }
  
  private boolean isHttps()
  {
    return this.url.startsWith("https://");
  }
  
  /* Error */
  private List<Certificate> readCertificateList(f paramf)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 47	com/squareup/okhttp/Cache:access$1000	(Lc/f;)I
    //   4: istore 7
    //   6: iload 7
    //   8: iconst_m1
    //   9: if_icmpne +9 -> 18
    //   12: invokestatic 168	java/util/Collections:emptyList	()Ljava/util/List;
    //   15: astore_2
    //   16: aload_2
    //   17: areturn
    //   18: ldc -86
    //   20: invokestatic 176	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   23: astore 4
    //   25: new 178	java/util/ArrayList
    //   28: dup
    //   29: iload 7
    //   31: invokespecial 181	java/util/ArrayList:<init>	(I)V
    //   34: astore_3
    //   35: iconst_0
    //   36: istore 6
    //   38: aload_3
    //   39: astore_2
    //   40: iload 6
    //   42: iload 7
    //   44: if_icmpge -28 -> 16
    //   47: aload_1
    //   48: invokeinterface 34 1 0
    //   53: astore_2
    //   54: new 183	c/d
    //   57: dup
    //   58: invokespecial 184	c/d:<init>	()V
    //   61: astore 5
    //   63: aload 5
    //   65: aload_2
    //   66: invokestatic 190	c/g:b	(Ljava/lang/String;)Lc/g;
    //   69: invokevirtual 193	c/d:a	(Lc/g;)Lc/d;
    //   72: pop
    //   73: aload_3
    //   74: aload 4
    //   76: aload 5
    //   78: invokevirtual 197	c/d:e	()Ljava/io/InputStream;
    //   81: invokevirtual 201	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   84: invokeinterface 207 2 0
    //   89: pop
    //   90: iload 6
    //   92: iconst_1
    //   93: iadd
    //   94: istore 6
    //   96: goto -58 -> 38
    //   99: astore_1
    //   100: new 86	java/io/IOException
    //   103: dup
    //   104: aload_1
    //   105: invokevirtual 210	java/security/cert/CertificateException:getMessage	()Ljava/lang/String;
    //   108: invokespecial 103	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	Entry
    //   0	112	1	paramf	f
    //   15	51	2	localObject	Object
    //   34	40	3	localArrayList	java.util.ArrayList
    //   23	52	4	localCertificateFactory	java.security.cert.CertificateFactory
    //   61	16	5	locald	c.d
    //   36	59	6	i	int
    //   4	41	7	j	int
    // Exception table:
    //   from	to	target	type
    //   18	35	99	java/security/cert/CertificateException
    //   47	90	99	java/security/cert/CertificateException
  }
  
  private void writeCertList(e parame, List<Certificate> paramList)
  {
    try
    {
      parame.j(paramList.size());
      parame.g(10);
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        parame.b(c.a(g.a(((Certificate)paramList.get(i)).getEncoded()).c));
        parame.g(10);
        i += 1;
      }
      return;
    }
    catch (CertificateEncodingException parame)
    {
      throw new IOException(parame.getMessage());
    }
  }
  
  public final boolean matches(Request paramRequest, Response paramResponse)
  {
    return (this.url.equals(paramRequest.urlString())) && (this.requestMethod.equals(paramRequest.method())) && (OkHeaders.varyMatches(paramResponse, this.varyHeaders, paramRequest));
  }
  
  public final Response response(Request paramRequest, DiskLruCache.Snapshot paramSnapshot)
  {
    paramRequest = this.responseHeaders.get("Content-Type");
    String str = this.responseHeaders.get("Content-Length");
    Request localRequest = new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build();
    return new Response.Builder().request(localRequest).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new Cache.CacheResponseBody(paramSnapshot, paramRequest, str)).handshake(this.handshake).build();
  }
  
  public final void writeTo(DiskLruCache.Editor paramEditor)
  {
    int j = 0;
    paramEditor = m.a(paramEditor.newSink(0));
    paramEditor.b(this.url);
    paramEditor.g(10);
    paramEditor.b(this.requestMethod);
    paramEditor.g(10);
    paramEditor.j(this.varyHeaders.size());
    paramEditor.g(10);
    int k = this.varyHeaders.size();
    int i = 0;
    while (i < k)
    {
      paramEditor.b(this.varyHeaders.name(i));
      paramEditor.b(": ");
      paramEditor.b(this.varyHeaders.value(i));
      paramEditor.g(10);
      i += 1;
    }
    paramEditor.b(new StatusLine(this.protocol, this.code, this.message).toString());
    paramEditor.g(10);
    paramEditor.j(this.responseHeaders.size());
    paramEditor.g(10);
    k = this.responseHeaders.size();
    i = j;
    while (i < k)
    {
      paramEditor.b(this.responseHeaders.name(i));
      paramEditor.b(": ");
      paramEditor.b(this.responseHeaders.value(i));
      paramEditor.g(10);
      i += 1;
    }
    if (isHttps())
    {
      paramEditor.g(10);
      paramEditor.b(this.handshake.cipherSuite());
      paramEditor.g(10);
      writeCertList(paramEditor, this.handshake.peerCertificates());
      writeCertList(paramEditor, this.handshake.localCertificates());
    }
    paramEditor.close();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Cache$Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */