package org.apache.http.impl.bootstrap;

import javax.net.ssl.SSLServerSocket;

public abstract interface SSLServerSetupHandler
{
  public abstract void initialize(SSLServerSocket paramSSLServerSocket);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\bootstrap\SSLServerSetupHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */