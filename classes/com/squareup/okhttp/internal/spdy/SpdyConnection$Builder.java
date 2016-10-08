package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import java.net.InetSocketAddress;
import java.net.Socket;

public class SpdyConnection$Builder
{
  private boolean client;
  private IncomingStreamHandler handler = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
  private String hostName;
  private Protocol protocol = Protocol.SPDY_3;
  private PushObserver pushObserver = PushObserver.CANCEL;
  private Socket socket;
  
  public SpdyConnection$Builder(String paramString, boolean paramBoolean, Socket paramSocket)
  {
    this.hostName = paramString;
    this.client = paramBoolean;
    this.socket = paramSocket;
  }
  
  public SpdyConnection$Builder(boolean paramBoolean, Socket paramSocket)
  {
    this(((InetSocketAddress)paramSocket.getRemoteSocketAddress()).getHostName(), paramBoolean, paramSocket);
  }
  
  public SpdyConnection build()
  {
    return new SpdyConnection(this, null);
  }
  
  public Builder handler(IncomingStreamHandler paramIncomingStreamHandler)
  {
    this.handler = paramIncomingStreamHandler;
    return this;
  }
  
  public Builder protocol(Protocol paramProtocol)
  {
    this.protocol = paramProtocol;
    return this;
  }
  
  public Builder pushObserver(PushObserver paramPushObserver)
  {
    this.pushObserver = paramPushObserver;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyConnection$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */