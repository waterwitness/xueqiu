package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.annotation.Obsolete;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookiePathComparator;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Obsolete
@ThreadSafe
public class RFC2109Spec
  extends CookieSpecBase
{
  static final String[] DATE_PATTERNS = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy" };
  private final boolean oneHeader;
  
  public RFC2109Spec()
  {
    this(null, false);
  }
  
  protected RFC2109Spec(boolean paramBoolean, CommonCookieAttributeHandler... paramVarArgs)
  {
    super(paramVarArgs);
    this.oneHeader = paramBoolean;
  }
  
  public RFC2109Spec(String[] paramArrayOfString, boolean paramBoolean) {}
  
  private List<Header> doFormatManyHeaders(List<Cookie> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Cookie localCookie = (Cookie)paramList.next();
      int i = localCookie.getVersion();
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(40);
      localCharArrayBuffer.append("Cookie: ");
      localCharArrayBuffer.append("$Version=");
      localCharArrayBuffer.append(Integer.toString(i));
      localCharArrayBuffer.append("; ");
      formatCookieAsVer(localCharArrayBuffer, localCookie, i);
      localArrayList.add(new BufferedHeader(localCharArrayBuffer));
    }
    return localArrayList;
  }
  
  private List<Header> doFormatOneHeader(List<Cookie> paramList)
  {
    Object localObject = paramList.iterator();
    int i = Integer.MAX_VALUE;
    Cookie localCookie;
    if (((Iterator)localObject).hasNext())
    {
      localCookie = (Cookie)((Iterator)localObject).next();
      if (localCookie.getVersion() >= i) {
        break label165;
      }
      i = localCookie.getVersion();
    }
    label165:
    for (;;)
    {
      break;
      localObject = new CharArrayBuffer(paramList.size() * 40);
      ((CharArrayBuffer)localObject).append("Cookie");
      ((CharArrayBuffer)localObject).append(": ");
      ((CharArrayBuffer)localObject).append("$Version=");
      ((CharArrayBuffer)localObject).append(Integer.toString(i));
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localCookie = (Cookie)paramList.next();
        ((CharArrayBuffer)localObject).append("; ");
        formatCookieAsVer((CharArrayBuffer)localObject, localCookie, i);
      }
      paramList = new ArrayList(1);
      paramList.add(new BufferedHeader((CharArrayBuffer)localObject));
      return paramList;
    }
  }
  
  protected void formatCookieAsVer(CharArrayBuffer paramCharArrayBuffer, Cookie paramCookie, int paramInt)
  {
    formatParamAsVer(paramCharArrayBuffer, paramCookie.getName(), paramCookie.getValue(), paramInt);
    if ((paramCookie.getPath() != null) && ((paramCookie instanceof ClientCookie)) && (((ClientCookie)paramCookie).containsAttribute("path")))
    {
      paramCharArrayBuffer.append("; ");
      formatParamAsVer(paramCharArrayBuffer, "$Path", paramCookie.getPath(), paramInt);
    }
    if ((paramCookie.getDomain() != null) && ((paramCookie instanceof ClientCookie)) && (((ClientCookie)paramCookie).containsAttribute("domain")))
    {
      paramCharArrayBuffer.append("; ");
      formatParamAsVer(paramCharArrayBuffer, "$Domain", paramCookie.getDomain(), paramInt);
    }
  }
  
  public List<Header> formatCookies(List<Cookie> paramList)
  {
    Args.notEmpty(paramList, "List of cookies");
    Object localObject = paramList;
    if (paramList.size() > 1)
    {
      localObject = new ArrayList(paramList);
      Collections.sort((List)localObject, CookiePathComparator.INSTANCE);
    }
    if (this.oneHeader) {
      return doFormatOneHeader((List)localObject);
    }
    return doFormatManyHeaders((List)localObject);
  }
  
  protected void formatParamAsVer(CharArrayBuffer paramCharArrayBuffer, String paramString1, String paramString2, int paramInt)
  {
    paramCharArrayBuffer.append(paramString1);
    paramCharArrayBuffer.append("=");
    if (paramString2 != null)
    {
      if (paramInt > 0)
      {
        paramCharArrayBuffer.append('"');
        paramCharArrayBuffer.append(paramString2);
        paramCharArrayBuffer.append('"');
      }
    }
    else {
      return;
    }
    paramCharArrayBuffer.append(paramString2);
  }
  
  public int getVersion()
  {
    return 1;
  }
  
  public Header getVersionHeader()
  {
    return null;
  }
  
  public List<Cookie> parse(Header paramHeader, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramHeader, "Header");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    if (!paramHeader.getName().equalsIgnoreCase("Set-Cookie")) {
      throw new MalformedCookieException("Unrecognized cookie header '" + paramHeader.toString() + "'");
    }
    return parse(paramHeader.getElements(), paramCookieOrigin);
  }
  
  public String toString()
  {
    return "rfc2109";
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    String str = paramCookie.getName();
    if (str.indexOf(' ') != -1) {
      throw new CookieRestrictionViolationException("Cookie name may not contain blanks");
    }
    if (str.startsWith("$")) {
      throw new CookieRestrictionViolationException("Cookie name may not start with $");
    }
    super.validate(paramCookie, paramCookieOrigin);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC2109Spec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */