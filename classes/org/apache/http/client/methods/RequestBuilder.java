package org.apache.http.client.methods;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.NameValuePair;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.ContentType;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.HeaderGroup;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;

@NotThreadSafe
public class RequestBuilder
{
  private Charset charset;
  private RequestConfig config;
  private HttpEntity entity;
  private HeaderGroup headergroup;
  private String method;
  private List<NameValuePair> parameters;
  private URI uri;
  private ProtocolVersion version;
  
  RequestBuilder()
  {
    this(null);
  }
  
  RequestBuilder(String paramString)
  {
    this.charset = Consts.UTF_8;
    this.method = paramString;
  }
  
  RequestBuilder(String paramString1, String paramString2)
  {
    this.method = paramString1;
    if (paramString2 != null) {}
    for (paramString1 = URI.create(paramString2);; paramString1 = null)
    {
      this.uri = paramString1;
      return;
    }
  }
  
  RequestBuilder(String paramString, URI paramURI)
  {
    this.method = paramString;
    this.uri = paramURI;
  }
  
  public static RequestBuilder copy(HttpRequest paramHttpRequest)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    return new RequestBuilder().doCopy(paramHttpRequest);
  }
  
  public static RequestBuilder create(String paramString)
  {
    Args.notBlank(paramString, "HTTP method");
    return new RequestBuilder(paramString);
  }
  
  public static RequestBuilder delete()
  {
    return new RequestBuilder("DELETE");
  }
  
  public static RequestBuilder delete(String paramString)
  {
    return new RequestBuilder("DELETE", paramString);
  }
  
  public static RequestBuilder delete(URI paramURI)
  {
    return new RequestBuilder("DELETE", paramURI);
  }
  
  private RequestBuilder doCopy(HttpRequest paramHttpRequest)
  {
    if (paramHttpRequest == null) {
      return this;
    }
    this.method = paramHttpRequest.getRequestLine().getMethod();
    this.version = paramHttpRequest.getRequestLine().getProtocolVersion();
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.clear();
    this.headergroup.setHeaders(paramHttpRequest.getAllHeaders());
    this.parameters = null;
    this.entity = null;
    Object localObject1;
    Object localObject2;
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
    {
      localObject1 = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
      localObject2 = ContentType.get((HttpEntity)localObject1);
      if ((localObject2 == null) || (!((ContentType)localObject2).getMimeType().equals(ContentType.APPLICATION_FORM_URLENCODED.getMimeType()))) {
        break label235;
      }
    }
    try
    {
      localObject1 = URLEncodedUtils.parse((HttpEntity)localObject1);
      if (!((List)localObject1).isEmpty()) {
        this.parameters = ((List)localObject1);
      }
      for (;;)
      {
        if ((paramHttpRequest instanceof HttpUriRequest))
        {
          localObject1 = ((HttpUriRequest)paramHttpRequest).getURI();
          label162:
          localObject2 = new URIBuilder((URI)localObject1);
          if (this.parameters == null)
          {
            List localList = ((URIBuilder)localObject2).getQueryParams();
            if (localList.isEmpty()) {
              break label261;
            }
            this.parameters = localList;
            ((URIBuilder)localObject2).clearParameters();
          }
        }
        try
        {
          for (;;)
          {
            this.uri = ((URIBuilder)localObject2).build();
            if (!(paramHttpRequest instanceof Configurable)) {
              break label278;
            }
            this.config = ((Configurable)paramHttpRequest).getConfig();
            return this;
            label235:
            this.entity = ((HttpEntity)localObject1);
            break;
            localObject1 = URI.create(paramHttpRequest.getRequestLine().getUri());
            break label162;
            label261:
            this.parameters = null;
          }
        }
        catch (URISyntaxException localURISyntaxException)
        {
          for (;;)
          {
            this.uri = ((URI)localObject1);
          }
          label278:
          this.config = null;
          return this;
        }
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public static RequestBuilder get()
  {
    return new RequestBuilder("GET");
  }
  
  public static RequestBuilder get(String paramString)
  {
    return new RequestBuilder("GET", paramString);
  }
  
  public static RequestBuilder get(URI paramURI)
  {
    return new RequestBuilder("GET", paramURI);
  }
  
  public static RequestBuilder head()
  {
    return new RequestBuilder("HEAD");
  }
  
  public static RequestBuilder head(String paramString)
  {
    return new RequestBuilder("HEAD", paramString);
  }
  
  public static RequestBuilder head(URI paramURI)
  {
    return new RequestBuilder("HEAD", paramURI);
  }
  
  public static RequestBuilder options()
  {
    return new RequestBuilder("OPTIONS");
  }
  
  public static RequestBuilder options(String paramString)
  {
    return new RequestBuilder("OPTIONS", paramString);
  }
  
  public static RequestBuilder options(URI paramURI)
  {
    return new RequestBuilder("OPTIONS", paramURI);
  }
  
  public static RequestBuilder patch()
  {
    return new RequestBuilder("PATCH");
  }
  
  public static RequestBuilder patch(String paramString)
  {
    return new RequestBuilder("PATCH", paramString);
  }
  
  public static RequestBuilder patch(URI paramURI)
  {
    return new RequestBuilder("PATCH", paramURI);
  }
  
  public static RequestBuilder post()
  {
    return new RequestBuilder("POST");
  }
  
  public static RequestBuilder post(String paramString)
  {
    return new RequestBuilder("POST", paramString);
  }
  
  public static RequestBuilder post(URI paramURI)
  {
    return new RequestBuilder("POST", paramURI);
  }
  
  public static RequestBuilder put()
  {
    return new RequestBuilder("PUT");
  }
  
  public static RequestBuilder put(String paramString)
  {
    return new RequestBuilder("PUT", paramString);
  }
  
  public static RequestBuilder put(URI paramURI)
  {
    return new RequestBuilder("PUT", paramURI);
  }
  
  public static RequestBuilder trace()
  {
    return new RequestBuilder("TRACE");
  }
  
  public static RequestBuilder trace(String paramString)
  {
    return new RequestBuilder("TRACE", paramString);
  }
  
  public static RequestBuilder trace(URI paramURI)
  {
    return new RequestBuilder("TRACE", paramURI);
  }
  
  public RequestBuilder addHeader(String paramString1, String paramString2)
  {
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.addHeader(new BasicHeader(paramString1, paramString2));
    return this;
  }
  
  public RequestBuilder addHeader(Header paramHeader)
  {
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.addHeader(paramHeader);
    return this;
  }
  
  public RequestBuilder addParameter(String paramString1, String paramString2)
  {
    return addParameter(new BasicNameValuePair(paramString1, paramString2));
  }
  
  public RequestBuilder addParameter(NameValuePair paramNameValuePair)
  {
    Args.notNull(paramNameValuePair, "Name value pair");
    if (this.parameters == null) {
      this.parameters = new LinkedList();
    }
    this.parameters.add(paramNameValuePair);
    return this;
  }
  
  public RequestBuilder addParameters(NameValuePair... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      addParameter(paramVarArgs[i]);
      i += 1;
    }
    return this;
  }
  
  public HttpUriRequest build()
  {
    Object localObject1;
    if (this.uri != null)
    {
      localObject1 = this.uri;
      localObject2 = this.entity;
      if ((this.parameters == null) || (this.parameters.isEmpty())) {
        break label178;
      }
      if ((localObject2 != null) || ((!"POST".equalsIgnoreCase(this.method)) && (!"PUT".equalsIgnoreCase(this.method)))) {
        break label146;
      }
      localObject2 = new UrlEncodedFormEntity(this.parameters, HTTP.DEF_CONTENT_CHARSET);
      label79:
      if (localObject2 != null) {
        break label181;
      }
    }
    label146:
    label178:
    label181:
    RequestBuilder.InternalEntityEclosingRequest localInternalEntityEclosingRequest;
    for (Object localObject2 = new RequestBuilder.InternalRequest(this.method);; localObject2 = localInternalEntityEclosingRequest)
    {
      ((HttpRequestBase)localObject2).setProtocolVersion(this.version);
      ((HttpRequestBase)localObject2).setURI((URI)localObject1);
      if (this.headergroup != null) {
        ((HttpRequestBase)localObject2).setHeaders(this.headergroup.getAllHeaders());
      }
      ((HttpRequestBase)localObject2).setConfig(this.config);
      return (HttpUriRequest)localObject2;
      localObject1 = URI.create("/");
      break;
      try
      {
        URI localURI = new URIBuilder((URI)localObject1).setCharset(this.charset).addParameters(this.parameters).build();
        localObject1 = localURI;
      }
      catch (URISyntaxException localURISyntaxException) {}
      break label79;
      localInternalEntityEclosingRequest = new RequestBuilder.InternalEntityEclosingRequest(this.method);
      localInternalEntityEclosingRequest.setEntity((HttpEntity)localObject2);
    }
  }
  
  public Charset getCharset()
  {
    return this.charset;
  }
  
  public RequestConfig getConfig()
  {
    return this.config;
  }
  
  public HttpEntity getEntity()
  {
    return this.entity;
  }
  
  public Header getFirstHeader(String paramString)
  {
    if (this.headergroup != null) {
      return this.headergroup.getFirstHeader(paramString);
    }
    return null;
  }
  
  public Header[] getHeaders(String paramString)
  {
    if (this.headergroup != null) {
      return this.headergroup.getHeaders(paramString);
    }
    return null;
  }
  
  public Header getLastHeader(String paramString)
  {
    if (this.headergroup != null) {
      return this.headergroup.getLastHeader(paramString);
    }
    return null;
  }
  
  public String getMethod()
  {
    return this.method;
  }
  
  public List<NameValuePair> getParameters()
  {
    if (this.parameters != null) {
      return new ArrayList(this.parameters);
    }
    return new ArrayList();
  }
  
  public URI getUri()
  {
    return this.uri;
  }
  
  public ProtocolVersion getVersion()
  {
    return this.version;
  }
  
  public RequestBuilder removeHeader(Header paramHeader)
  {
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.removeHeader(paramHeader);
    return this;
  }
  
  public RequestBuilder removeHeaders(String paramString)
  {
    if ((paramString == null) || (this.headergroup == null)) {}
    for (;;)
    {
      return this;
      HeaderIterator localHeaderIterator = this.headergroup.iterator();
      while (localHeaderIterator.hasNext()) {
        if (paramString.equalsIgnoreCase(localHeaderIterator.nextHeader().getName())) {
          localHeaderIterator.remove();
        }
      }
    }
  }
  
  public RequestBuilder setCharset(Charset paramCharset)
  {
    this.charset = paramCharset;
    return this;
  }
  
  public RequestBuilder setConfig(RequestConfig paramRequestConfig)
  {
    this.config = paramRequestConfig;
    return this;
  }
  
  public RequestBuilder setEntity(HttpEntity paramHttpEntity)
  {
    this.entity = paramHttpEntity;
    return this;
  }
  
  public RequestBuilder setHeader(String paramString1, String paramString2)
  {
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.updateHeader(new BasicHeader(paramString1, paramString2));
    return this;
  }
  
  public RequestBuilder setHeader(Header paramHeader)
  {
    if (this.headergroup == null) {
      this.headergroup = new HeaderGroup();
    }
    this.headergroup.updateHeader(paramHeader);
    return this;
  }
  
  public RequestBuilder setUri(String paramString)
  {
    if (paramString != null) {}
    for (paramString = URI.create(paramString);; paramString = null)
    {
      this.uri = paramString;
      return this;
    }
  }
  
  public RequestBuilder setUri(URI paramURI)
  {
    this.uri = paramURI;
    return this;
  }
  
  public RequestBuilder setVersion(ProtocolVersion paramProtocolVersion)
  {
    this.version = paramProtocolVersion;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\methods\RequestBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */