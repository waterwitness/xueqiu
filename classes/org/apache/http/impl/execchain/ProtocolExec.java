package org.apache.http.impl.execchain;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolException;
import org.apache.http.RequestLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.util.Args;

@Immutable
public class ProtocolExec
  implements ClientExecChain
{
  private final HttpProcessor httpProcessor;
  private final Log log = LogFactory.getLog(getClass());
  private final ClientExecChain requestExecutor;
  
  public ProtocolExec(ClientExecChain paramClientExecChain, HttpProcessor paramHttpProcessor)
  {
    Args.notNull(paramClientExecChain, "HTTP client request executor");
    Args.notNull(paramHttpProcessor, "HTTP protocol processor");
    this.requestExecutor = paramClientExecChain;
    this.httpProcessor = paramHttpProcessor;
  }
  
  public CloseableHttpResponse execute(HttpRoute paramHttpRoute, HttpRequestWrapper paramHttpRequestWrapper, HttpClientContext paramHttpClientContext, HttpExecutionAware paramHttpExecutionAware)
  {
    Args.notNull(paramHttpRoute, "HTTP route");
    Args.notNull(paramHttpRequestWrapper, "HTTP request");
    Args.notNull(paramHttpClientContext, "HTTP context");
    Object localObject1 = paramHttpRequestWrapper.getOriginal();
    Object localObject2;
    Object localObject5;
    Object localObject4;
    if ((localObject1 instanceof HttpUriRequest))
    {
      localObject2 = ((HttpUriRequest)localObject1).getURI();
      paramHttpRequestWrapper.setURI((URI)localObject2);
      rewriteRequestURI(paramHttpRequestWrapper, paramHttpRoute);
      localObject5 = (HttpHost)paramHttpRequestWrapper.getParams().getParameter("http.virtual-host");
      localObject4 = localObject5;
      if (localObject5 != null)
      {
        localObject4 = localObject5;
        if (((HttpHost)localObject5).getPort() == -1)
        {
          int i = paramHttpRoute.getTargetHost().getPort();
          localObject1 = localObject5;
          if (i != -1) {
            localObject1 = new HttpHost(((HttpHost)localObject5).getHostName(), i, ((HttpHost)localObject5).getSchemeName());
          }
          localObject4 = localObject1;
          if (this.log.isDebugEnabled())
          {
            this.log.debug("Using virtual host" + localObject1);
            localObject4 = localObject1;
          }
        }
      }
      if (localObject4 == null) {
        break label435;
      }
      localObject1 = localObject4;
    }
    for (;;)
    {
      label192:
      localObject4 = localObject1;
      if (localObject1 == null) {
        localObject4 = paramHttpRequestWrapper.getTarget();
      }
      if (localObject4 == null) {}
      for (localObject1 = paramHttpRoute.getTargetHost();; localObject1 = localObject4)
      {
        if (localObject2 != null)
        {
          localObject5 = ((URI)localObject2).getUserInfo();
          if (localObject5 != null)
          {
            localObject4 = paramHttpClientContext.getCredentialsProvider();
            localObject2 = localObject4;
            if (localObject4 == null)
            {
              localObject2 = new BasicCredentialsProvider();
              paramHttpClientContext.setCredentialsProvider((CredentialsProvider)localObject2);
            }
            ((CredentialsProvider)localObject2).setCredentials(new AuthScope((HttpHost)localObject1), new UsernamePasswordCredentials((String)localObject5));
          }
        }
        paramHttpClientContext.setAttribute("http.target_host", localObject1);
        paramHttpClientContext.setAttribute("http.route", paramHttpRoute);
        paramHttpClientContext.setAttribute("http.request", paramHttpRequestWrapper);
        this.httpProcessor.process(paramHttpRequestWrapper, paramHttpClientContext);
        paramHttpRoute = this.requestExecutor.execute(paramHttpRoute, paramHttpRequestWrapper, paramHttpClientContext, paramHttpExecutionAware);
        try
        {
          paramHttpClientContext.setAttribute("http.response", paramHttpRoute);
          this.httpProcessor.process(paramHttpRoute, paramHttpClientContext);
          return paramHttpRoute;
        }
        catch (RuntimeException paramHttpRequestWrapper)
        {
          Object localObject3;
          paramHttpRoute.close();
          throw paramHttpRequestWrapper;
        }
        catch (IOException paramHttpRequestWrapper)
        {
          paramHttpRoute.close();
          throw paramHttpRequestWrapper;
        }
        catch (HttpException paramHttpRequestWrapper)
        {
          label435:
          paramHttpRoute.close();
          throw paramHttpRequestWrapper;
        }
        localObject1 = ((HttpRequest)localObject1).getRequestLine().getUri();
        try
        {
          localObject2 = URI.create((String)localObject1);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          if (this.log.isDebugEnabled()) {
            this.log.debug("Unable to parse '" + (String)localObject1 + "' as a valid URI; request URI and Host header may be inconsistent", localIllegalArgumentException);
          }
          localObject3 = null;
        }
        break;
        if ((localObject3 == null) || (!((URI)localObject3).isAbsolute()) || (((URI)localObject3).getHost() == null)) {
          break label517;
        }
        localObject1 = new HttpHost(((URI)localObject3).getHost(), ((URI)localObject3).getPort(), ((URI)localObject3).getScheme());
        break label192;
      }
      label517:
      localObject1 = null;
    }
  }
  
  void rewriteRequestURI(HttpRequestWrapper paramHttpRequestWrapper, HttpRoute paramHttpRoute)
  {
    URI localURI = paramHttpRequestWrapper.getURI();
    if (localURI != null) {}
    try
    {
      paramHttpRequestWrapper.setURI(URIUtils.rewriteURIForRoute(localURI, paramHttpRoute));
      return;
    }
    catch (URISyntaxException paramHttpRequestWrapper)
    {
      throw new ProtocolException("Invalid URI: " + localURI, paramHttpRequestWrapper);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\execchain\ProtocolExec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */