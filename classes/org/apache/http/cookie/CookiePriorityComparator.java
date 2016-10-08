package org.apache.http.cookie;

import java.util.Comparator;
import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.impl.cookie.BasicClientCookie;

@Immutable
public class CookiePriorityComparator
  implements Comparator<Cookie>
{
  public static final CookiePriorityComparator INSTANCE = new CookiePriorityComparator();
  
  private int getPathLength(Cookie paramCookie)
  {
    paramCookie = paramCookie.getPath();
    if (paramCookie != null) {
      return paramCookie.length();
    }
    return 1;
  }
  
  public int compare(Cookie paramCookie1, Cookie paramCookie2)
  {
    int i = getPathLength(paramCookie1);
    int j = getPathLength(paramCookie2) - i;
    i = j;
    if (j == 0)
    {
      i = j;
      if ((paramCookie1 instanceof BasicClientCookie))
      {
        i = j;
        if ((paramCookie2 instanceof BasicClientCookie))
        {
          paramCookie1 = ((BasicClientCookie)paramCookie1).getCreationDate();
          paramCookie2 = ((BasicClientCookie)paramCookie2).getCreationDate();
          i = j;
          if (paramCookie1 != null)
          {
            i = j;
            if (paramCookie2 != null) {
              i = (int)(paramCookie1.getTime() - paramCookie2.getTime());
            }
          }
        }
      }
    }
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\CookiePriorityComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */