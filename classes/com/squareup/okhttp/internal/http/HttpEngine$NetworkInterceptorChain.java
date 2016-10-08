package com.squareup.okhttp.internal.http;

import c.e;
import c.m;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.Interceptor.Chain;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Util;
import java.net.URL;
import java.util.List;

class HttpEngine$NetworkInterceptorChain
  implements Interceptor.Chain
{
  private int calls;
  private final int index;
  private final Request request;
  
  HttpEngine$NetworkInterceptorChain(HttpEngine paramHttpEngine, int paramInt, Request paramRequest)
  {
    this.index = paramInt;
    this.request = paramRequest;
  }
  
  public Connection connection()
  {
    return HttpEngine.access$000(this.this$0);
  }
  
  public Response proceed(Request paramRequest)
  {
    this.calls += 1;
    Object localObject1;
    Object localObject2;
    if (this.index > 0)
    {
      localObject1 = (Interceptor)this.this$0.client.networkInterceptors().get(this.index - 1);
      localObject2 = connection().getRoute().getAddress();
      if ((!paramRequest.url().getHost().equals(((Address)localObject2).getUriHost())) || (Util.getEffectivePort(paramRequest.url()) != ((Address)localObject2).getUriPort())) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
      }
      if (this.calls > 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
    }
    if (this.index < this.this$0.client.networkInterceptors().size())
    {
      paramRequest = new NetworkInterceptorChain(this.this$0, this.index + 1, paramRequest);
      localObject1 = (Interceptor)this.this$0.client.networkInterceptors().get(this.index);
      localObject2 = ((Interceptor)localObject1).intercept(paramRequest);
      if (paramRequest.calls != 1) {
        throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
      }
      return (Response)localObject2;
    }
    HttpEngine.access$100(this.this$0).writeRequestHeaders(paramRequest);
    if ((this.this$0.permitsRequestBody()) && (paramRequest.body() != null))
    {
      localObject1 = m.a(HttpEngine.access$100(this.this$0).createRequestBody(paramRequest, paramRequest.body().contentLength()));
      paramRequest.body().writeTo((e)localObject1);
      ((e)localObject1).close();
    }
    return HttpEngine.access$200(this.this$0);
  }
  
  public Request request()
  {
    return this.request;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\HttpEngine$NetworkInterceptorChain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */