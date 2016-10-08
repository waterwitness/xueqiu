package org.apache.http.cookie;

import java.util.Date;
import org.apache.http.annotation.Obsolete;

public abstract interface SetCookie
  extends Cookie
{
  @Obsolete
  public abstract void setComment(String paramString);
  
  public abstract void setDomain(String paramString);
  
  public abstract void setExpiryDate(Date paramDate);
  
  public abstract void setPath(String paramString);
  
  public abstract void setSecure(boolean paramBoolean);
  
  public abstract void setValue(String paramString);
  
  @Obsolete
  public abstract void setVersion(int paramInt);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\SetCookie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */