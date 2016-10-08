package com.squareup.okhttp.internal.http;

import c.f;
import c.s;
import c.t;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.net.Socket;

abstract class HttpConnection$AbstractSource
  implements s
{
  protected boolean closed;
  
  private HttpConnection$AbstractSource(HttpConnection paramHttpConnection) {}
  
  protected final void endOfInput(boolean paramBoolean)
  {
    if (HttpConnection.access$400(this.this$0) != 5) {
      throw new IllegalStateException("state: " + HttpConnection.access$400(this.this$0));
    }
    HttpConnection.access$402(this.this$0, 0);
    if ((paramBoolean) && (HttpConnection.access$600(this.this$0) == 1))
    {
      HttpConnection.access$602(this.this$0, 0);
      Internal.instance.recycle(HttpConnection.access$700(this.this$0), HttpConnection.access$800(this.this$0));
    }
    while (HttpConnection.access$600(this.this$0) != 2) {
      return;
    }
    HttpConnection.access$402(this.this$0, 6);
    HttpConnection.access$800(this.this$0).getSocket().close();
  }
  
  public t timeout()
  {
    return HttpConnection.access$500(this.this$0).timeout();
  }
  
  protected final void unexpectedEndOfInput()
  {
    Util.closeQuietly(HttpConnection.access$800(this.this$0).getSocket());
    HttpConnection.access$402(this.this$0, 6);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpConnection$AbstractSource.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */