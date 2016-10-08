package org.apache.http.conn.socket;

import java.net.Socket;
import org.apache.http.protocol.HttpContext;

public abstract interface LayeredConnectionSocketFactory
  extends ConnectionSocketFactory
{
  public abstract Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpContext paramHttpContext);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\socket\LayeredConnectionSocketFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */