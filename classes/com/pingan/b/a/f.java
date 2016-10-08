package com.pingan.b.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONObject;

public final class f
{
  a a;
  public g b;
  private String c;
  private p d;
  
  private f()
  {
    this((byte)0);
  }
  
  private f(byte paramByte)
  {
    this(null, null, null, 10, 30, null);
  }
  
  public f(k paramk, g paramg, String paramString, int paramInt1, int paramInt2, p paramp)
  {
    this.c = paramString;
    this.a = a.a();
    this.a.setConnectTimeout(paramInt1 * 1000);
    this.a.setResponseTimeout(paramInt2 * 1000);
    this.a.setUserAgent(q.a().toString());
    this.a.setEnableRedirects(true);
    this.a.setRedirectHandler(new o());
    a.blockRetryExceptionClass(d.class);
    if (paramk != null) {
      this.a.setProxy(paramk.a, paramk.b, paramk.c, paramk.d);
    }
    this.b = paramg;
    if (paramg == null) {
      this.b = new g()
      {
        public final void a(m paramAnonymousm) {}
        
        public final Header[] a(Header[] paramAnonymousArrayOfHeader)
        {
          return paramAnonymousArrayOfHeader;
        }
        
        public final void b(m paramAnonymousm) {}
      };
    }
    this.d = paramp;
  }
  
  private e a(final e parame)
  {
    new e()
    {
      public final void a(m paramAnonymousm, JSONObject paramAnonymousJSONObject)
      {
        parame.a(paramAnonymousm, paramAnonymousJSONObject);
        if (paramAnonymousm.b())
        {
          f.this.b.b(paramAnonymousm);
          return;
        }
        f.this.b.a(paramAnonymousm);
      }
    };
  }
  
  public final void a(String paramString, i parami, j paramj, e parame, c paramc, boolean paramBoolean)
  {
    h localh = new h();
    Object localObject1 = parami.c.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      String str1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
      String str2 = "text/plain; charset=" + "UTF-8";
      try
      {
        localh.c.write(localh.b);
        ByteArrayOutputStream localByteArrayOutputStream = localh.c;
        StringBuilder localStringBuilder = new StringBuilder("Content-Disposition: form-data; name=");
        h.a(localStringBuilder, str1);
        localStringBuilder.append("\r\n");
        localByteArrayOutputStream.write(com.pingan.b.d.c.a(localStringBuilder.toString()));
        localh.c.write(h.a(str2));
        localh.c.write(h.a);
        localh.c.write(((String)localObject2).getBytes());
        localh.c.write(h.a);
      }
      catch (IOException paramString)
      {
        throw new AssertionError(paramString);
      }
    }
    if (parami.a != null) {
      localObject1 = new ByteArrayInputStream(parami.a);
    }
    label330:
    do
    {
      try
      {
        localh.a("file", parami.d, (InputStream)localObject1, parami.e);
        a(paramString, localh.a(paramj, paramc), this.b.a(new Header[0]), paramj, parame, paramBoolean);
        return;
      }
      catch (IOException paramString)
      {
        parame.a(m.a(paramString), null);
        return;
      }
      try
      {
        localObject1 = parami.b;
        parami = parami.e;
        localObject1 = new FileInputStream((File)localObject1);
      }
      catch (IOException paramString)
      {
        parame.a(m.a(paramString), null);
        return;
      }
      try
      {
        localh.a("file", "filename", (InputStream)localObject1, parami);
        parami = null;
      }
      catch (IOException parami)
      {
        break label330;
      }
      ((FileInputStream)localObject1).close();
    } while (parami == null);
    throw parami;
  }
  
  public final void a(String paramString, final HttpEntity paramHttpEntity, final Header[] paramArrayOfHeader, final j paramj, final e parame, boolean paramBoolean)
  {
    final Object localObject = a(parame);
    Header[] arrayOfHeader1 = this.b.a(paramArrayOfHeader);
    if (this.d != null) {
      paramString = this.d.a();
    }
    for (;;)
    {
      if ((this.c == null) || (this.d != null))
      {
        paramArrayOfHeader = new l(paramString, (e)localObject, paramj);
        this.a.post(null, paramString, arrayOfHeader1, paramHttpEntity, null, paramArrayOfHeader);
        return;
      }
      localObject = URI.create(paramString);
      if (paramBoolean) {}
      for (paramArrayOfHeader = this.c;; paramArrayOfHeader = ((URI)localObject).getHost())
      {
        final Header[] arrayOfHeader2 = new Header[arrayOfHeader1.length + 1];
        System.arraycopy(arrayOfHeader1, 0, arrayOfHeader2, 0, arrayOfHeader1.length);
        try
        {
          String str = new URI(((URI)localObject).getScheme(), null, paramArrayOfHeader, ((URI)localObject).getPort(), ((URI)localObject).getPath(), ((URI)localObject).getQuery(), null).toString();
          arrayOfHeader2[arrayOfHeader1.length] = new BasicHeader("Host", ((URI)localObject).getHost());
          paramString = new l(paramString, a(new e()
          {
            public final void a(m paramAnonymousm, JSONObject paramAnonymousJSONObject)
            {
              if ((localObject.getPort() == 80) || (paramAnonymousm.a != 64532))
              {
                parame.a(paramAnonymousm, paramAnonymousJSONObject);
                return;
              }
              try
              {
                paramAnonymousm = new URI(localObject.getScheme(), null, paramArrayOfHeader, 80, localObject.getPath(), localObject.getQuery(), null).toString();
                paramAnonymousJSONObject = new l(paramAnonymousm, parame, paramj);
                f.this.a.post(null, paramAnonymousm, arrayOfHeader2, paramHttpEntity, null, paramAnonymousJSONObject);
                return;
              }
              catch (URISyntaxException paramAnonymousm)
              {
                throw new AssertionError(paramAnonymousm);
              }
            }
          }), paramj);
          this.a.post(null, str, arrayOfHeader2, paramHttpEntity, null, paramString);
          return;
        }
        catch (URISyntaxException paramString)
        {
          throw new AssertionError(paramString);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */