package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.cookie.SetCookie2;

@NotThreadSafe
public class BasicClientCookie2
  extends BasicClientCookie
  implements SetCookie2
{
  private static final long serialVersionUID = -7744598295706617057L;
  private String commentURL;
  private boolean discard;
  private int[] ports;
  
  public BasicClientCookie2(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public Object clone()
  {
    BasicClientCookie2 localBasicClientCookie2 = (BasicClientCookie2)super.clone();
    if (this.ports != null) {
      localBasicClientCookie2.ports = ((int[])this.ports.clone());
    }
    return localBasicClientCookie2;
  }
  
  public String getCommentURL()
  {
    return this.commentURL;
  }
  
  public int[] getPorts()
  {
    return this.ports;
  }
  
  public boolean isExpired(Date paramDate)
  {
    return (this.discard) || (super.isExpired(paramDate));
  }
  
  public boolean isPersistent()
  {
    return (!this.discard) && (super.isPersistent());
  }
  
  public void setCommentURL(String paramString)
  {
    this.commentURL = paramString;
  }
  
  public void setDiscard(boolean paramBoolean)
  {
    this.discard = paramBoolean;
  }
  
  public void setPorts(int[] paramArrayOfInt)
  {
    this.ports = paramArrayOfInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicClientCookie2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */