package com.squareup.okhttp.internal.spdy;

public abstract interface IncomingStreamHandler
{
  public static final IncomingStreamHandler REFUSE_INCOMING_STREAMS = new IncomingStreamHandler()
  {
    public final void receive(SpdyStream paramAnonymousSpdyStream)
    {
      paramAnonymousSpdyStream.close(ErrorCode.REFUSED_STREAM);
    }
  };
  
  public abstract void receive(SpdyStream paramSpdyStream);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\IncomingStreamHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */