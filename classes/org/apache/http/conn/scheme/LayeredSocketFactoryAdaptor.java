package org.apache.http.conn.scheme;

import java.net.Socket;

@Deprecated
class LayeredSocketFactoryAdaptor
  extends SocketFactoryAdaptor
  implements LayeredSocketFactory
{
  private final LayeredSchemeSocketFactory factory;
  
  LayeredSocketFactoryAdaptor(LayeredSchemeSocketFactory paramLayeredSchemeSocketFactory)
  {
    super(paramLayeredSchemeSocketFactory);
    this.factory = paramLayeredSchemeSocketFactory;
  }
  
  public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return this.factory.createLayeredSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\LayeredSocketFactoryAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */