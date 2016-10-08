package com.squareup.okhttp;

import c.d;
import c.e;
import c.g;
import com.squareup.okhttp.internal.Util;
import java.util.List;

final class MultipartBuilder$MultipartRequestBody
  extends RequestBody
{
  private final g boundary;
  private long contentLength = -1L;
  private final MediaType contentType;
  private final List<RequestBody> partBodies;
  private final List<Headers> partHeaders;
  
  public MultipartBuilder$MultipartRequestBody(MediaType paramMediaType, g paramg, List<Headers> paramList, List<RequestBody> paramList1)
  {
    if (paramMediaType == null) {
      throw new NullPointerException("type == null");
    }
    this.boundary = paramg;
    this.contentType = MediaType.parse(paramMediaType + "; boundary=" + paramg.a());
    this.partHeaders = Util.immutableList(paramList);
    this.partBodies = Util.immutableList(paramList1);
  }
  
  private long writeOrCountBytes(e parame, boolean paramBoolean)
  {
    long l1 = 0L;
    if (paramBoolean) {
      parame = new d();
    }
    for (e locale = parame;; locale = null)
    {
      int k = this.partHeaders.size();
      int i = 0;
      if (i < k)
      {
        Object localObject = (Headers)this.partHeaders.get(i);
        RequestBody localRequestBody = (RequestBody)this.partBodies.get(i);
        parame.b(MultipartBuilder.access$000());
        parame.b(this.boundary);
        parame.b(MultipartBuilder.access$100());
        if (localObject != null)
        {
          int j = 0;
          int m = ((Headers)localObject).size();
          while (j < m)
          {
            parame.b(((Headers)localObject).name(j)).b(MultipartBuilder.access$200()).b(((Headers)localObject).value(j)).b(MultipartBuilder.access$100());
            j += 1;
          }
        }
        localObject = localRequestBody.contentType();
        if (localObject != null) {
          parame.b("Content-Type: ").b(((MediaType)localObject).toString()).b(MultipartBuilder.access$100());
        }
        l2 = localRequestBody.contentLength();
        if (l2 != -1L) {
          parame.b("Content-Length: ").j(l2).b(MultipartBuilder.access$100());
        }
        while (!paramBoolean)
        {
          parame.b(MultipartBuilder.access$100());
          if (!paramBoolean) {
            break label309;
          }
          l1 = l2 + l1;
          parame.b(MultipartBuilder.access$100());
          i += 1;
          break;
        }
        locale.p();
        l2 = -1L;
      }
      label309:
      do
      {
        return l2;
        ((RequestBody)this.partBodies.get(i)).writeTo(parame);
        break;
        parame.b(MultipartBuilder.access$000());
        parame.b(this.boundary);
        parame.b(MultipartBuilder.access$000());
        parame.b(MultipartBuilder.access$100());
        l2 = l1;
      } while (!paramBoolean);
      long l2 = locale.b;
      locale.p();
      return l1 + l2;
    }
  }
  
  public final long contentLength()
  {
    long l = this.contentLength;
    if (l != -1L) {
      return l;
    }
    l = writeOrCountBytes(null, true);
    this.contentLength = l;
    return l;
  }
  
  public final MediaType contentType()
  {
    return this.contentType;
  }
  
  public final void writeTo(e parame)
  {
    writeOrCountBytes(parame, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\MultipartBuilder$MultipartRequestBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */