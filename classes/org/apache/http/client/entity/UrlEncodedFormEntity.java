package org.apache.http.client.entity;

import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.StringEntity;

@NotThreadSafe
public class UrlEncodedFormEntity
  extends StringEntity
{
  public UrlEncodedFormEntity(Iterable<? extends NameValuePair> paramIterable)
  {
    this(paramIterable, null);
  }
  
  public UrlEncodedFormEntity(Iterable<? extends NameValuePair> paramIterable, Charset paramCharset) {}
  
  public UrlEncodedFormEntity(List<? extends NameValuePair> paramList)
  {
    this(paramList, null);
  }
  
  public UrlEncodedFormEntity(List<? extends NameValuePair> paramList, String paramString) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\UrlEncodedFormEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */