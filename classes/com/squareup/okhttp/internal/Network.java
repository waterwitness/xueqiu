package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

public abstract interface Network
{
  public static final Network DEFAULT = new Network()
  {
    public final InetAddress[] resolveInetAddresses(String paramAnonymousString)
    {
      if (paramAnonymousString == null) {
        throw new UnknownHostException("host == null");
      }
      return InetAddress.getAllByName(paramAnonymousString);
    }
  };
  
  public abstract InetAddress[] resolveInetAddresses(String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\Network.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */