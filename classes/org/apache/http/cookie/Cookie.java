package org.apache.http.cookie;

import java.util.Date;
import org.apache.http.annotation.Obsolete;

public abstract interface Cookie
{
  @Obsolete
  public abstract String getComment();
  
  @Obsolete
  public abstract String getCommentURL();
  
  public abstract String getDomain();
  
  public abstract Date getExpiryDate();
  
  public abstract String getName();
  
  public abstract String getPath();
  
  @Obsolete
  public abstract int[] getPorts();
  
  public abstract String getValue();
  
  @Obsolete
  public abstract int getVersion();
  
  public abstract boolean isExpired(Date paramDate);
  
  public abstract boolean isPersistent();
  
  public abstract boolean isSecure();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\Cookie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */