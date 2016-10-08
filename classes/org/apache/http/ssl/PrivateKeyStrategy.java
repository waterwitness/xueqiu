package org.apache.http.ssl;

import java.net.Socket;
import java.util.Map;

public abstract interface PrivateKeyStrategy
{
  public abstract String chooseAlias(Map<String, PrivateKeyDetails> paramMap, Socket paramSocket);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ssl\PrivateKeyStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */