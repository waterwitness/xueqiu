package com.squareup.okhttp;

import c.s;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpConnection;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpTransport;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.SpdyTransport;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyConnection.Builder;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class Connection
{
  private boolean connected = false;
  private Handshake handshake;
  private HttpConnection httpConnection;
  private long idleStartTimeNs;
  private Object owner;
  private final ConnectionPool pool;
  private Protocol protocol = Protocol.HTTP_1_1;
  private int recycleCount;
  private final Route route;
  private Socket socket;
  private SpdyConnection spdyConnection;
  
  public Connection(ConnectionPool paramConnectionPool, Route paramRoute)
  {
    this.pool = paramConnectionPool;
    this.route = paramRoute;
  }
  
  private void makeTunnel(Request paramRequest, int paramInt1, int paramInt2)
  {
    HttpConnection localHttpConnection = new HttpConnection(this.pool, this, this.socket);
    localHttpConnection.setTimeouts(paramInt1, paramInt2);
    Object localObject = paramRequest.url();
    String str = "CONNECT " + ((URL)localObject).getHost() + ":" + ((URL)localObject).getPort() + " HTTP/1.1";
    do
    {
      localHttpConnection.writeRequest(paramRequest.headers(), str);
      localHttpConnection.flush();
      paramRequest = localHttpConnection.readResponse().request(paramRequest).build();
      long l2 = OkHeaders.contentLength(paramRequest);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      localObject = localHttpConnection.newFixedLengthSource(l1);
      Util.skipAll((s)localObject, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
      ((s)localObject).close();
      switch (paramRequest.code())
      {
      default: 
        throw new IOException("Unexpected response code for CONNECT: " + paramRequest.code());
      case 200: 
        if (localHttpConnection.bufferSize() <= 0L) {
          break;
        }
        throw new IOException("TLS tunnel buffered too many bytes!");
      case 407: 
        localObject = OkHeaders.processAuthHeader(this.route.address.authenticator, paramRequest, this.route.proxy);
        paramRequest = (Request)localObject;
      }
    } while (localObject != null);
    throw new IOException("Failed to authenticate with proxy");
  }
  
  private Request tunnelRequest(Request paramRequest)
  {
    if (!this.route.requiresTunnel()) {
      return null;
    }
    String str = paramRequest.url().getHost();
    int i = Util.getEffectivePort(paramRequest.url());
    if (i == Util.getDefaultPort("https")) {}
    for (Object localObject = str;; localObject = str + ":" + i)
    {
      localObject = new Request.Builder().url(new URL("https", str, i, "/")).header("Host", (String)localObject).header("Proxy-Connection", "Keep-Alive");
      str = paramRequest.header("User-Agent");
      if (str != null) {
        ((Request.Builder)localObject).header("User-Agent", str);
      }
      paramRequest = paramRequest.header("Proxy-Authorization");
      if (paramRequest != null) {
        ((Request.Builder)localObject).header("Proxy-Authorization", paramRequest);
      }
      return ((Request.Builder)localObject).build();
    }
  }
  
  private void upgradeToTls(Request paramRequest, int paramInt1, int paramInt2)
  {
    Platform localPlatform = Platform.get();
    if (paramRequest != null) {
      makeTunnel(paramRequest, paramInt1, paramInt2);
    }
    this.socket = this.route.address.sslSocketFactory.createSocket(this.socket, this.route.address.uriHost, this.route.address.uriPort, true);
    paramRequest = (SSLSocket)this.socket;
    this.route.connectionSpec.apply(paramRequest, this.route);
    try
    {
      paramRequest.startHandshake();
      if (this.route.connectionSpec.supportsTlsExtensions())
      {
        String str = localPlatform.getSelectedProtocol(paramRequest);
        if (str != null) {
          this.protocol = Protocol.get(str);
        }
      }
      localPlatform.afterHandshake(paramRequest);
      this.handshake = Handshake.get(paramRequest.getSession());
      if (!this.route.address.hostnameVerifier.verify(this.route.address.uriHost, paramRequest.getSession()))
      {
        paramRequest = (X509Certificate)paramRequest.getSession().getPeerCertificates()[0];
        throw new SSLPeerUnverifiedException("Hostname " + this.route.address.uriHost + " not verified:\n    certificate: " + CertificatePinner.pin(paramRequest) + "\n    DN: " + paramRequest.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.allSubjectAltNames(paramRequest));
      }
    }
    finally
    {
      localPlatform.afterHandshake(paramRequest);
    }
    this.route.address.certificatePinner.check(this.route.address.uriHost, this.handshake.peerCertificates());
    if ((this.protocol == Protocol.SPDY_3) || (this.protocol == Protocol.HTTP_2))
    {
      paramRequest.setSoTimeout(0);
      this.spdyConnection = new SpdyConnection.Builder(this.route.address.getUriHost(), true, this.socket).protocol(this.protocol).build();
      this.spdyConnection.sendConnectionPreface();
      return;
    }
    this.httpConnection = new HttpConnection(this.pool, this, this.socket);
  }
  
  final boolean clearOwner()
  {
    synchronized (this.pool)
    {
      if (this.owner == null) {
        return false;
      }
      this.owner = null;
      return true;
    }
  }
  
  final void closeIfOwnedBy(Object paramObject)
  {
    if (isSpdy()) {
      throw new IllegalStateException();
    }
    synchronized (this.pool)
    {
      if (this.owner != paramObject) {
        return;
      }
      this.owner = null;
      this.socket.close();
      return;
    }
  }
  
  final void connect(int paramInt1, int paramInt2, int paramInt3, Request paramRequest)
  {
    if (this.connected) {
      throw new IllegalStateException("already connected");
    }
    if ((this.route.proxy.type() == Proxy.Type.DIRECT) || (this.route.proxy.type() == Proxy.Type.HTTP))
    {
      this.socket = this.route.address.socketFactory.createSocket();
      this.socket.setSoTimeout(paramInt2);
      Platform.get().connectSocket(this.socket, this.route.inetSocketAddress, paramInt1);
      if (this.route.address.sslSocketFactory == null) {
        break label141;
      }
      upgradeToTls(paramRequest, paramInt2, paramInt3);
    }
    for (;;)
    {
      this.connected = true;
      return;
      this.socket = new Socket(this.route.proxy);
      break;
      label141:
      this.httpConnection = new HttpConnection(this.pool, this, this.socket);
    }
  }
  
  final void connectAndSetOwner(OkHttpClient paramOkHttpClient, Object paramObject, Request paramRequest)
  {
    setOwner(paramObject);
    if (!isConnected())
    {
      paramObject = tunnelRequest(paramRequest);
      connect(paramOkHttpClient.getConnectTimeout(), paramOkHttpClient.getReadTimeout(), paramOkHttpClient.getWriteTimeout(), (Request)paramObject);
      if (isSpdy()) {
        paramOkHttpClient.getConnectionPool().share(this);
      }
      paramOkHttpClient.routeDatabase().connected(getRoute());
    }
    setTimeouts(paramOkHttpClient.getReadTimeout(), paramOkHttpClient.getWriteTimeout());
  }
  
  public final Handshake getHandshake()
  {
    return this.handshake;
  }
  
  final long getIdleStartTimeNs()
  {
    if (this.spdyConnection == null) {
      return this.idleStartTimeNs;
    }
    return this.spdyConnection.getIdleStartTimeNs();
  }
  
  final Object getOwner()
  {
    synchronized (this.pool)
    {
      Object localObject1 = this.owner;
      return localObject1;
    }
  }
  
  public final Protocol getProtocol()
  {
    return this.protocol;
  }
  
  public final Route getRoute()
  {
    return this.route;
  }
  
  public final Socket getSocket()
  {
    return this.socket;
  }
  
  final void incrementRecycleCount()
  {
    this.recycleCount += 1;
  }
  
  final boolean isAlive()
  {
    return (!this.socket.isClosed()) && (!this.socket.isInputShutdown()) && (!this.socket.isOutputShutdown());
  }
  
  final boolean isConnected()
  {
    return this.connected;
  }
  
  final boolean isIdle()
  {
    return (this.spdyConnection == null) || (this.spdyConnection.isIdle());
  }
  
  final boolean isReadable()
  {
    if (this.httpConnection != null) {
      return this.httpConnection.isReadable();
    }
    return true;
  }
  
  final boolean isSpdy()
  {
    return this.spdyConnection != null;
  }
  
  final Transport newTransport(HttpEngine paramHttpEngine)
  {
    if (this.spdyConnection != null) {
      return new SpdyTransport(paramHttpEngine, this.spdyConnection);
    }
    return new HttpTransport(paramHttpEngine, this.httpConnection);
  }
  
  final int recycleCount()
  {
    return this.recycleCount;
  }
  
  final void resetIdleStartTime()
  {
    if (this.spdyConnection != null) {
      throw new IllegalStateException("spdyConnection != null");
    }
    this.idleStartTimeNs = System.nanoTime();
  }
  
  final void setOwner(Object paramObject)
  {
    if (isSpdy()) {
      return;
    }
    synchronized (this.pool)
    {
      if (this.owner != null) {
        throw new IllegalStateException("Connection already has an owner!");
      }
    }
    this.owner = paramObject;
  }
  
  final void setProtocol(Protocol paramProtocol)
  {
    if (paramProtocol == null) {
      throw new IllegalArgumentException("protocol == null");
    }
    this.protocol = paramProtocol;
  }
  
  final void setTimeouts(int paramInt1, int paramInt2)
  {
    if (!this.connected) {
      throw new IllegalStateException("setTimeouts - not connected");
    }
    if (this.httpConnection != null)
    {
      this.socket.setSoTimeout(paramInt1);
      this.httpConnection.setTimeouts(paramInt1, paramInt2);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(this.route.address.uriHost).append(":").append(this.route.address.uriPort).append(", proxy=").append(this.route.proxy).append(" hostAddress=").append(this.route.inetSocketAddress.getAddress().getHostAddress()).append(" cipherSuite=");
    if (this.handshake != null) {}
    for (String str = this.handshake.cipherSuite();; str = "none") {
      return str + " protocol=" + this.protocol + '}';
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Connection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */