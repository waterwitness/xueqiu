package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@ThreadSafe
public class BrowserCompatSpec
  extends CookieSpecBase
{
  private static final String[] DEFAULT_DATE_PATTERNS = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z" };
  
  public BrowserCompatSpec()
  {
    this(null, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
  }
  
  public BrowserCompatSpec(String[] paramArrayOfString)
  {
    this(paramArrayOfString, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
  }
  
  public BrowserCompatSpec(String[] paramArrayOfString, BrowserCompatSpecFactory.SecurityLevel paramSecurityLevel) {}
  
  private static boolean isQuoteEnclosed(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("\"")) && (paramString.endsWith("\""));
  }
  
  public List<Header> formatCookies(List<Cookie> paramList)
  {
    Args.notEmpty(paramList, "List of cookies");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramList.size() * 20);
    localCharArrayBuffer.append("Cookie");
    localCharArrayBuffer.append(": ");
    int i = 0;
    if (i < paramList.size())
    {
      Cookie localCookie = (Cookie)paramList.get(i);
      if (i > 0) {
        localCharArrayBuffer.append("; ");
      }
      String str1 = localCookie.getName();
      String str2 = localCookie.getValue();
      if ((localCookie.getVersion() > 0) && (!isQuoteEnclosed(str2))) {
        BasicHeaderValueFormatter.INSTANCE.formatHeaderElement(localCharArrayBuffer, new BasicHeaderElement(str1, str2), false);
      }
      for (;;)
      {
        i += 1;
        break;
        localCharArrayBuffer.append(str1);
        localCharArrayBuffer.append("=");
        if (str2 != null) {
          localCharArrayBuffer.append(str2);
        }
      }
    }
    paramList = new ArrayList(1);
    paramList.add(new BufferedHeader(localCharArrayBuffer));
    return paramList;
  }
  
  public int getVersion()
  {
    return 0;
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
    Object localObject1 = paramHeader.getElements();
    int m = localObject1.length;
    int j = 0;
    int i = 0;
    int k = 0;
    Object localObject2;
    while (j < m)
    {
      localObject2 = localObject1[j];
      if (((HeaderElement)localObject2).getParameterByName("version") != null) {
        k = 1;
      }
      if (((HeaderElement)localObject2).getParameterByName("expires") != null) {
        i = 1;
      }
      j += 1;
    }
    if ((i != 0) || (k == 0))
    {
      localObject2 = NetscapeDraftHeaderParser.DEFAULT;
      if ((paramHeader instanceof FormattedHeader)) {
        localObject1 = ((FormattedHeader)paramHeader).getBuffer();
      }
      for (paramHeader = new ParserCursor(((FormattedHeader)paramHeader).getValuePos(), ((CharArrayBuffer)localObject1).length());; paramHeader = new ParserCursor(0, ((CharArrayBuffer)localObject1).length()))
      {
        localObject1 = ((NetscapeDraftHeaderParser)localObject2).parseHeader((CharArrayBuffer)localObject1, paramHeader);
        paramHeader = ((HeaderElement)localObject1).getName();
        localObject2 = ((HeaderElement)localObject1).getValue();
        if ((paramHeader != null) && (!paramHeader.isEmpty())) {
          break;
        }
        throw new MalformedCookieException("Cookie name may not be empty");
        paramHeader = paramHeader.getValue();
        if (paramHeader == null) {
          throw new MalformedCookieException("Header value is null");
        }
        localObject1 = new CharArrayBuffer(paramHeader.length());
        ((CharArrayBuffer)localObject1).append(paramHeader);
      }
      paramHeader = new BasicClientCookie(paramHeader, (String)localObject2);
      paramHeader.setPath(getDefaultPath(paramCookieOrigin));
      paramHeader.setDomain(getDefaultDomain(paramCookieOrigin));
      paramCookieOrigin = ((HeaderElement)localObject1).getParameters();
      j = paramCookieOrigin.length - 1;
      while (j >= 0)
      {
        localObject1 = paramCookieOrigin[j];
        localObject2 = ((NameValuePair)localObject1).getName().toLowerCase(Locale.ROOT);
        paramHeader.setAttribute((String)localObject2, ((NameValuePair)localObject1).getValue());
        localObject2 = findAttribHandler((String)localObject2);
        if (localObject2 != null) {
          ((CookieAttributeHandler)localObject2).parse(paramHeader, ((NameValuePair)localObject1).getValue());
        }
        j -= 1;
      }
      if (i != 0) {
        paramHeader.setVersion(0);
      }
      return Collections.singletonList(paramHeader);
    }
    return parse((HeaderElement[])localObject1, paramCookieOrigin);
  }
  
  public String toString()
  {
    return "compatibility";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BrowserCompatSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */