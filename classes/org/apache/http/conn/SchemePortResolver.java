package org.apache.http.conn;

import org.apache.http.HttpHost;

public abstract interface SchemePortResolver
{
  public abstract int resolve(HttpHost paramHttpHost);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\SchemePortResolver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */