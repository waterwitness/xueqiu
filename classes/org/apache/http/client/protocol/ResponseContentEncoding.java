package org.apache.http.client.protocol;

import java.io.InputStream;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.DecompressingEntity;
import org.apache.http.client.entity.DeflateInputStream;
import org.apache.http.client.entity.InputStreamFactory;
import org.apache.http.config.Lookup;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.protocol.HttpContext;

@Immutable
public class ResponseContentEncoding
  implements HttpResponseInterceptor
{
  private static final InputStreamFactory DEFLATE = new InputStreamFactory()
  {
    public final InputStream create(InputStream paramAnonymousInputStream)
    {
      return new DeflateInputStream(paramAnonymousInputStream);
    }
  };
  private static final InputStreamFactory GZIP = new InputStreamFactory()
  {
    public final InputStream create(InputStream paramAnonymousInputStream)
    {
      return new GZIPInputStream(paramAnonymousInputStream);
    }
  };
  public static final String UNCOMPRESSED = "http.client.response.uncompressed";
  private final Lookup<InputStreamFactory> decoderRegistry;
  private final boolean ignoreUnknown;
  
  public ResponseContentEncoding()
  {
    this(null);
  }
  
  public ResponseContentEncoding(Lookup<InputStreamFactory> paramLookup)
  {
    this(paramLookup, true);
  }
  
  public ResponseContentEncoding(Lookup<InputStreamFactory> paramLookup, boolean paramBoolean)
  {
    if (paramLookup != null) {}
    for (;;)
    {
      this.decoderRegistry = paramLookup;
      this.ignoreUnknown = paramBoolean;
      return;
      paramLookup = RegistryBuilder.create().register("gzip", GZIP).register("x-gzip", GZIP).register("deflate", DEFLATE).build();
    }
  }
  
  public ResponseContentEncoding(boolean paramBoolean)
  {
    this(null, paramBoolean);
  }
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if ((HttpClientContext.adapt(paramHttpContext).getRequestConfig().isContentCompressionEnabled()) && (localHttpEntity != null) && (localHttpEntity.getContentLength() != 0L))
    {
      paramHttpContext = localHttpEntity.getContentEncoding();
      if (paramHttpContext != null)
      {
        paramHttpContext = paramHttpContext.getElements();
        int j = paramHttpContext.length;
        int i = 0;
        if (i < j)
        {
          localHttpEntity = paramHttpContext[i];
          String str = localHttpEntity.getName().toLowerCase(Locale.ROOT);
          InputStreamFactory localInputStreamFactory = (InputStreamFactory)this.decoderRegistry.lookup(str);
          if (localInputStreamFactory != null)
          {
            paramHttpResponse.setEntity(new DecompressingEntity(paramHttpResponse.getEntity(), localInputStreamFactory));
            paramHttpResponse.removeHeaders("Content-Length");
            paramHttpResponse.removeHeaders("Content-Encoding");
            paramHttpResponse.removeHeaders("Content-MD5");
          }
          while (("identity".equals(str)) || (this.ignoreUnknown))
          {
            i += 1;
            break;
          }
          throw new HttpException("Unsupported Content-Encoding: " + localHttpEntity.getName());
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\protocol\ResponseContentEncoding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */