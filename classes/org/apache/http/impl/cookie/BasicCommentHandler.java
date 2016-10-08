package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class BasicCommentHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  public String getAttributeName()
  {
    return "comment";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    paramSetCookie.setComment(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicCommentHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */