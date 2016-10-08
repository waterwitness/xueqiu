package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookiePriorityComparator;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.message.TokenParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@ThreadSafe
public class RFC6265CookieSpec
  implements CookieSpec
{
  private static final char COMMA_CHAR = ',';
  private static final char DQUOTE_CHAR = '"';
  private static final char EQUAL_CHAR = '=';
  private static final char ESCAPE_CHAR = '\\';
  private static final char PARAM_DELIMITER = ';';
  private static final BitSet SPECIAL_CHARS = TokenParser.INIT_BITSET(new int[] { 32, 34, 44, 59, 92 });
  private static final BitSet TOKEN_DELIMS = TokenParser.INIT_BITSET(new int[] { 61, 59 });
  private static final BitSet VALUE_DELIMS = TokenParser.INIT_BITSET(new int[] { 59 });
  private final Map<String, CookieAttributeHandler> attribHandlerMap;
  private final CookieAttributeHandler[] attribHandlers;
  private final TokenParser tokenParser;
  
  protected RFC6265CookieSpec(CommonCookieAttributeHandler... paramVarArgs)
  {
    this.attribHandlers = ((CookieAttributeHandler[])paramVarArgs.clone());
    this.attribHandlerMap = new ConcurrentHashMap(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      CommonCookieAttributeHandler localCommonCookieAttributeHandler = paramVarArgs[i];
      this.attribHandlerMap.put(localCommonCookieAttributeHandler.getAttributeName().toLowerCase(Locale.ROOT), localCommonCookieAttributeHandler);
      i += 1;
    }
    this.tokenParser = TokenParser.INSTANCE;
  }
  
  static String getDefaultDomain(CookieOrigin paramCookieOrigin)
  {
    return paramCookieOrigin.getHost();
  }
  
  static String getDefaultPath(CookieOrigin paramCookieOrigin)
  {
    paramCookieOrigin = paramCookieOrigin.getPath();
    int j = paramCookieOrigin.lastIndexOf('/');
    if (j >= 0)
    {
      int i = j;
      if (j == 0) {
        i = 1;
      }
      return paramCookieOrigin.substring(0, i);
    }
    return paramCookieOrigin;
  }
  
  boolean containsChars(CharSequence paramCharSequence, BitSet paramBitSet)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramCharSequence.length())
      {
        if (paramBitSet.get(paramCharSequence.charAt(i))) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  boolean containsSpecialChar(CharSequence paramCharSequence)
  {
    return containsChars(paramCharSequence, SPECIAL_CHARS);
  }
  
  public List<Header> formatCookies(List<Cookie> paramList)
  {
    Args.notEmpty(paramList, "List of cookies");
    Object localObject1 = paramList;
    if (paramList.size() > 1)
    {
      localObject1 = new ArrayList(paramList);
      Collections.sort((List)localObject1, CookiePriorityComparator.INSTANCE);
    }
    paramList = new CharArrayBuffer(((List)localObject1).size() * 20);
    paramList.append("Cookie");
    paramList.append(": ");
    int i = 0;
    if (i < ((List)localObject1).size())
    {
      Object localObject2 = (Cookie)((List)localObject1).get(i);
      if (i > 0)
      {
        paramList.append(';');
        paramList.append(' ');
      }
      paramList.append(((Cookie)localObject2).getName());
      localObject2 = ((Cookie)localObject2).getValue();
      if (localObject2 != null)
      {
        paramList.append('=');
        if (!containsSpecialChar((CharSequence)localObject2)) {
          break label222;
        }
        paramList.append('"');
        int j = 0;
        while (j < ((String)localObject2).length())
        {
          char c = ((String)localObject2).charAt(j);
          if ((c == '"') || (c == '\\')) {
            paramList.append('\\');
          }
          paramList.append(c);
          j += 1;
        }
        paramList.append('"');
      }
      for (;;)
      {
        i += 1;
        break;
        label222:
        paramList.append((String)localObject2);
      }
    }
    localObject1 = new ArrayList(1);
    ((List)localObject1).add(new BufferedHeader(paramList));
    return (List<Header>)localObject1;
  }
  
  public final int getVersion()
  {
    return 0;
  }
  
  public final Header getVersionHeader()
  {
    return null;
  }
  
  public final boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    CookieAttributeHandler[] arrayOfCookieAttributeHandler = this.attribHandlers;
    int j = arrayOfCookieAttributeHandler.length;
    int i = 0;
    while (i < j)
    {
      if (!arrayOfCookieAttributeHandler[i].match(paramCookie, paramCookieOrigin)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final List<Cookie> parse(Header paramHeader, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramHeader, "Header");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    if (!paramHeader.getName().equalsIgnoreCase("Set-Cookie")) {
      throw new MalformedCookieException("Unrecognized cookie header: '" + paramHeader.toString() + "'");
    }
    CharArrayBuffer localCharArrayBuffer;
    if ((paramHeader instanceof FormattedHeader)) {
      localCharArrayBuffer = ((FormattedHeader)paramHeader).getBuffer();
    }
    for (Object localObject1 = new ParserCursor(((FormattedHeader)paramHeader).getValuePos(), localCharArrayBuffer.length());; localObject1 = new ParserCursor(0, localCharArrayBuffer.length()))
    {
      localObject2 = this.tokenParser.parseToken(localCharArrayBuffer, (ParserCursor)localObject1, TOKEN_DELIMS);
      if (((String)localObject2).length() != 0) {
        break;
      }
      throw new MalformedCookieException("Cookie name is invalid: '" + paramHeader.toString() + "'");
      localObject1 = paramHeader.getValue();
      if (localObject1 == null) {
        throw new MalformedCookieException("Header value is null");
      }
      localCharArrayBuffer = new CharArrayBuffer(((String)localObject1).length());
      localCharArrayBuffer.append((String)localObject1);
    }
    if (((ParserCursor)localObject1).atEnd()) {
      throw new MalformedCookieException("Cookie value is invalid: '" + paramHeader.toString() + "'");
    }
    int i = localCharArrayBuffer.charAt(((ParserCursor)localObject1).getPos());
    ((ParserCursor)localObject1).updatePos(((ParserCursor)localObject1).getPos() + 1);
    if (i != 61) {
      throw new MalformedCookieException("Cookie value is invalid: '" + paramHeader.toString() + "'");
    }
    paramHeader = this.tokenParser.parseValue(localCharArrayBuffer, (ParserCursor)localObject1, VALUE_DELIMS);
    if (!((ParserCursor)localObject1).atEnd()) {
      ((ParserCursor)localObject1).updatePos(((ParserCursor)localObject1).getPos() + 1);
    }
    Object localObject2 = new BasicClientCookie((String)localObject2, paramHeader);
    ((BasicClientCookie)localObject2).setPath(getDefaultPath(paramCookieOrigin));
    ((BasicClientCookie)localObject2).setDomain(getDefaultDomain(paramCookieOrigin));
    ((BasicClientCookie)localObject2).setCreationDate(new Date());
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    while (!((ParserCursor)localObject1).atEnd())
    {
      String str = this.tokenParser.parseToken(localCharArrayBuffer, (ParserCursor)localObject1, TOKEN_DELIMS).toLowerCase(Locale.ROOT);
      paramCookieOrigin = null;
      paramHeader = paramCookieOrigin;
      if (!((ParserCursor)localObject1).atEnd())
      {
        i = localCharArrayBuffer.charAt(((ParserCursor)localObject1).getPos());
        ((ParserCursor)localObject1).updatePos(((ParserCursor)localObject1).getPos() + 1);
        paramHeader = paramCookieOrigin;
        if (i == 61)
        {
          paramCookieOrigin = this.tokenParser.parseToken(localCharArrayBuffer, (ParserCursor)localObject1, VALUE_DELIMS);
          paramHeader = paramCookieOrigin;
          if (!((ParserCursor)localObject1).atEnd())
          {
            ((ParserCursor)localObject1).updatePos(((ParserCursor)localObject1).getPos() + 1);
            paramHeader = paramCookieOrigin;
          }
        }
      }
      ((BasicClientCookie)localObject2).setAttribute(str, paramHeader);
      localLinkedHashMap.put(str, paramHeader);
    }
    if (localLinkedHashMap.containsKey("max-age")) {
      localLinkedHashMap.remove("expires");
    }
    paramHeader = localLinkedHashMap.entrySet().iterator();
    while (paramHeader.hasNext())
    {
      localObject1 = (Map.Entry)paramHeader.next();
      paramCookieOrigin = (String)((Map.Entry)localObject1).getKey();
      localObject1 = (String)((Map.Entry)localObject1).getValue();
      paramCookieOrigin = (CookieAttributeHandler)this.attribHandlerMap.get(paramCookieOrigin);
      if (paramCookieOrigin != null) {
        paramCookieOrigin.parse((SetCookie)localObject2, (String)localObject1);
      }
    }
    return Collections.singletonList(localObject2);
  }
  
  public final void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    CookieAttributeHandler[] arrayOfCookieAttributeHandler = this.attribHandlers;
    int j = arrayOfCookieAttributeHandler.length;
    int i = 0;
    while (i < j)
    {
      arrayOfCookieAttributeHandler[i].validate(paramCookie, paramCookieOrigin);
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC6265CookieSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */