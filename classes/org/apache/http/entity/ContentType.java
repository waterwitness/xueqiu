package org.apache.http.entity;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.TextUtils;

@Immutable
public final class ContentType
  implements Serializable
{
  public static final ContentType APPLICATION_ATOM_XML = create("application/atom+xml", Consts.ISO_8859_1);
  public static final ContentType APPLICATION_FORM_URLENCODED = create("application/x-www-form-urlencoded", Consts.ISO_8859_1);
  public static final ContentType APPLICATION_JSON = create("application/json", Consts.UTF_8);
  public static final ContentType APPLICATION_OCTET_STREAM = create("application/octet-stream", null);
  public static final ContentType APPLICATION_SVG_XML = create("application/svg+xml", Consts.ISO_8859_1);
  public static final ContentType APPLICATION_XHTML_XML = create("application/xhtml+xml", Consts.ISO_8859_1);
  public static final ContentType APPLICATION_XML = create("application/xml", Consts.ISO_8859_1);
  public static final ContentType DEFAULT_BINARY = APPLICATION_OCTET_STREAM;
  public static final ContentType DEFAULT_TEXT;
  public static final ContentType MULTIPART_FORM_DATA = create("multipart/form-data", Consts.ISO_8859_1);
  public static final ContentType TEXT_HTML = create("text/html", Consts.ISO_8859_1);
  public static final ContentType TEXT_PLAIN = create("text/plain", Consts.ISO_8859_1);
  public static final ContentType TEXT_XML = create("text/xml", Consts.ISO_8859_1);
  public static final ContentType WILDCARD = create("*/*", null);
  private static final long serialVersionUID = -7768694718232371896L;
  private final Charset charset;
  private final String mimeType;
  private final NameValuePair[] params;
  
  static
  {
    DEFAULT_TEXT = TEXT_PLAIN;
  }
  
  ContentType(String paramString, Charset paramCharset)
  {
    this.mimeType = paramString;
    this.charset = paramCharset;
    this.params = null;
  }
  
  ContentType(String paramString, Charset paramCharset, NameValuePair[] paramArrayOfNameValuePair)
  {
    this.mimeType = paramString;
    this.charset = paramCharset;
    this.params = paramArrayOfNameValuePair;
  }
  
  public static ContentType create(String paramString)
  {
    return new ContentType(paramString, null);
  }
  
  public static ContentType create(String paramString1, String paramString2)
  {
    if (!TextUtils.isBlank(paramString2)) {}
    for (paramString2 = Charset.forName(paramString2);; paramString2 = null) {
      return create(paramString1, paramString2);
    }
  }
  
  public static ContentType create(String paramString, Charset paramCharset)
  {
    paramString = ((String)Args.notBlank(paramString, "MIME type")).toLowerCase(Locale.ROOT);
    Args.check(valid(paramString), "MIME type may not contain reserved characters");
    return new ContentType(paramString, paramCharset);
  }
  
  public static ContentType create(String paramString, NameValuePair... paramVarArgs)
  {
    Args.check(valid(((String)Args.notBlank(paramString, "MIME type")).toLowerCase(Locale.ROOT)), "MIME type may not contain reserved characters");
    return create(paramString, paramVarArgs, true);
  }
  
  private static ContentType create(String paramString, NameValuePair[] paramArrayOfNameValuePair, boolean paramBoolean)
  {
    int j = paramArrayOfNameValuePair.length;
    int i = 0;
    Object localObject1;
    if (i < j)
    {
      localObject1 = paramArrayOfNameValuePair[i];
      if (((NameValuePair)localObject1).getName().equalsIgnoreCase("charset"))
      {
        localObject1 = ((NameValuePair)localObject1).getValue();
        if (TextUtils.isBlank((CharSequence)localObject1)) {
          break label98;
        }
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = Charset.forName((String)localObject1);
        if ((paramArrayOfNameValuePair == null) || (paramArrayOfNameValuePair.length <= 0)) {
          break label93;
        }
        return new ContentType(paramString, (Charset)localObject1, paramArrayOfNameValuePair);
      }
      catch (UnsupportedCharsetException localUnsupportedCharsetException)
      {
        if (paramBoolean) {
          throw localUnsupportedCharsetException;
        }
        localObject2 = null;
        continue;
      }
      i += 1;
      break;
      label93:
      paramArrayOfNameValuePair = null;
      continue;
      label98:
      Object localObject2 = null;
    }
  }
  
  private static ContentType create(HeaderElement paramHeaderElement, boolean paramBoolean)
  {
    return create(paramHeaderElement.getName(), paramHeaderElement.getParameters(), paramBoolean);
  }
  
  public static ContentType get(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null) {}
    do
    {
      do
      {
        return null;
        paramHttpEntity = paramHttpEntity.getContentType();
      } while (paramHttpEntity == null);
      paramHttpEntity = paramHttpEntity.getElements();
    } while (paramHttpEntity.length <= 0);
    return create(paramHttpEntity[0], true);
  }
  
  public static ContentType getLenient(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null) {}
    for (;;)
    {
      return null;
      paramHttpEntity = paramHttpEntity.getContentType();
      if (paramHttpEntity != null) {
        try
        {
          paramHttpEntity = paramHttpEntity.getElements();
          if (paramHttpEntity.length > 0)
          {
            paramHttpEntity = create(paramHttpEntity[0], false);
            return paramHttpEntity;
          }
        }
        catch (ParseException paramHttpEntity) {}
      }
    }
    return null;
  }
  
  public static ContentType getLenientOrDefault(HttpEntity paramHttpEntity)
  {
    paramHttpEntity = get(paramHttpEntity);
    if (paramHttpEntity != null) {
      return paramHttpEntity;
    }
    return DEFAULT_TEXT;
  }
  
  public static ContentType getOrDefault(HttpEntity paramHttpEntity)
  {
    paramHttpEntity = get(paramHttpEntity);
    if (paramHttpEntity != null) {
      return paramHttpEntity;
    }
    return DEFAULT_TEXT;
  }
  
  public static ContentType parse(String paramString)
  {
    Args.notNull(paramString, "Content type");
    Object localObject = new CharArrayBuffer(paramString.length());
    ((CharArrayBuffer)localObject).append(paramString);
    ParserCursor localParserCursor = new ParserCursor(0, paramString.length());
    localObject = BasicHeaderValueParser.INSTANCE.parseElements((CharArrayBuffer)localObject, localParserCursor);
    if (localObject.length > 0) {
      return create(localObject[0], true);
    }
    throw new ParseException("Invalid content type: " + paramString);
  }
  
  private static boolean valid(String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if ((j == 34) || (j == 44) || (j == 59)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public final Charset getCharset()
  {
    return this.charset;
  }
  
  public final String getMimeType()
  {
    return this.mimeType;
  }
  
  public final String getParameter(String paramString)
  {
    Args.notEmpty(paramString, "Parameter name");
    if (this.params == null) {}
    for (;;)
    {
      return null;
      NameValuePair[] arrayOfNameValuePair = this.params;
      int j = arrayOfNameValuePair.length;
      int i = 0;
      while (i < j)
      {
        NameValuePair localNameValuePair = arrayOfNameValuePair[i];
        if (localNameValuePair.getName().equalsIgnoreCase(paramString)) {
          return localNameValuePair.getValue();
        }
        i += 1;
      }
    }
  }
  
  public final String toString()
  {
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(64);
    localCharArrayBuffer.append(this.mimeType);
    if (this.params != null)
    {
      localCharArrayBuffer.append("; ");
      BasicHeaderValueFormatter.INSTANCE.formatParameters(localCharArrayBuffer, this.params, false);
    }
    for (;;)
    {
      return localCharArrayBuffer.toString();
      if (this.charset != null)
      {
        localCharArrayBuffer.append("; charset=");
        localCharArrayBuffer.append(this.charset.name());
      }
    }
  }
  
  public final ContentType withCharset(String paramString)
  {
    return create(getMimeType(), paramString);
  }
  
  public final ContentType withCharset(Charset paramCharset)
  {
    return create(getMimeType(), paramCharset);
  }
  
  public final ContentType withParameters(NameValuePair... paramVarArgs)
  {
    int j = 0;
    if (paramVarArgs.length == 0) {
      return this;
    }
    Object localObject1 = new LinkedHashMap();
    Object localObject2;
    if (this.params != null)
    {
      localObject2 = this.params;
      k = localObject2.length;
      i = 0;
      while (i < k)
      {
        Object localObject3 = localObject2[i];
        ((Map)localObject1).put(((NameValuePair)localObject3).getName(), ((NameValuePair)localObject3).getValue());
        i += 1;
      }
    }
    int k = paramVarArgs.length;
    int i = j;
    while (i < k)
    {
      localObject2 = paramVarArgs[i];
      ((Map)localObject1).put(((NameValuePair)localObject2).getName(), ((NameValuePair)localObject2).getValue());
      i += 1;
    }
    paramVarArgs = new ArrayList(((Map)localObject1).size() + 1);
    if ((this.charset != null) && (!((Map)localObject1).containsKey("charset"))) {
      paramVarArgs.add(new BasicNameValuePair("charset", this.charset.name()));
    }
    localObject1 = ((Map)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      paramVarArgs.add(new BasicNameValuePair((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue()));
    }
    return create(getMimeType(), (NameValuePair[])paramVarArgs.toArray(new NameValuePair[paramVarArgs.size()]), true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\entity\ContentType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */