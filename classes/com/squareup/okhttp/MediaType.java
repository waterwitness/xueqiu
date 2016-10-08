package com.squareup.okhttp;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class MediaType
{
  private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
  private static final String QUOTED = "\"([^\"]*)\"";
  private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
  private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
  private final String charset;
  private final String mediaType;
  private final String subtype;
  private final String type;
  
  private MediaType(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.mediaType = paramString1;
    this.type = paramString2;
    this.subtype = paramString3;
    this.charset = paramString4;
  }
  
  public static MediaType parse(String paramString)
  {
    Object localObject1 = TYPE_SUBTYPE.matcher(paramString);
    if (!((Matcher)localObject1).lookingAt()) {
      return null;
    }
    String str2 = ((Matcher)localObject1).group(1).toLowerCase(Locale.US);
    String str3 = ((Matcher)localObject1).group(2).toLowerCase(Locale.US);
    Matcher localMatcher = PARAMETER.matcher(paramString);
    int i = ((Matcher)localObject1).end();
    Object localObject2;
    for (localObject1 = null;; localObject1 = localObject2)
    {
      if (i >= paramString.length()) {
        break label189;
      }
      localMatcher.region(i, paramString.length());
      if (!localMatcher.lookingAt()) {
        break;
      }
      String str1 = localMatcher.group(1);
      if ((str1 != null) && (str1.equalsIgnoreCase("charset")))
      {
        if (localMatcher.group(2) != null) {}
        for (str1 = localMatcher.group(2);; str1 = localMatcher.group(3))
        {
          localObject2 = str1;
          if (localObject1 == null) {
            break;
          }
          localObject2 = str1;
          if (str1.equalsIgnoreCase((String)localObject1)) {
            break;
          }
          throw new IllegalArgumentException("Multiple different charsets: " + paramString);
        }
      }
      localObject2 = localObject1;
      i = localMatcher.end();
    }
    label189:
    return new MediaType(paramString, str2, str3, (String)localObject1);
  }
  
  public final Charset charset()
  {
    if (this.charset != null) {
      return Charset.forName(this.charset);
    }
    return null;
  }
  
  public final Charset charset(Charset paramCharset)
  {
    if (this.charset != null) {
      paramCharset = Charset.forName(this.charset);
    }
    return paramCharset;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof MediaType)) && (((MediaType)paramObject).mediaType.equals(this.mediaType));
  }
  
  public final int hashCode()
  {
    return this.mediaType.hashCode();
  }
  
  public final String subtype()
  {
    return this.subtype;
  }
  
  public final String toString()
  {
    return this.mediaType;
  }
  
  public final String type()
  {
    return this.type;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\MediaType.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */