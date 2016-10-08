package org.apache.http.client.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.routing.RouteInfo;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class URIUtils
{
  @Deprecated
  public static URI createURI(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString2 != null)
    {
      if (paramString1 != null)
      {
        localStringBuilder.append(paramString1);
        localStringBuilder.append("://");
      }
      localStringBuilder.append(paramString2);
      if (paramInt > 0)
      {
        localStringBuilder.append(':');
        localStringBuilder.append(paramInt);
      }
    }
    if ((paramString3 == null) || (!paramString3.startsWith("/"))) {
      localStringBuilder.append('/');
    }
    if (paramString3 != null) {
      localStringBuilder.append(paramString3);
    }
    if (paramString4 != null)
    {
      localStringBuilder.append('?');
      localStringBuilder.append(paramString4);
    }
    if (paramString5 != null)
    {
      localStringBuilder.append('#');
      localStringBuilder.append(paramString5);
    }
    return new URI(localStringBuilder.toString());
  }
  
  /* Error */
  public static HttpHost extractHost(URI paramURI)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokevirtual 56	java/net/URI:isAbsolute	()Z
    //   10: ifeq +206 -> 216
    //   13: aload_0
    //   14: invokevirtual 60	java/net/URI:getPort	()I
    //   17: istore_3
    //   18: aload_0
    //   19: invokevirtual 63	java/net/URI:getHost	()Ljava/lang/String;
    //   22: astore_2
    //   23: aload_2
    //   24: astore_1
    //   25: iload_3
    //   26: istore 4
    //   28: aload_2
    //   29: ifnonnull +156 -> 185
    //   32: aload_0
    //   33: invokevirtual 66	java/net/URI:getAuthority	()Ljava/lang/String;
    //   36: astore_2
    //   37: aload_2
    //   38: astore_1
    //   39: iload_3
    //   40: istore 4
    //   42: aload_2
    //   43: ifnull +142 -> 185
    //   46: aload_2
    //   47: bipush 64
    //   49: invokevirtual 70	java/lang/String:indexOf	(I)I
    //   52: istore 4
    //   54: iload 4
    //   56: iflt +171 -> 227
    //   59: aload_2
    //   60: invokevirtual 73	java/lang/String:length	()I
    //   63: iload 4
    //   65: iconst_1
    //   66: iadd
    //   67: if_icmple +78 -> 145
    //   70: aload_2
    //   71: iload 4
    //   73: iconst_1
    //   74: iadd
    //   75: invokevirtual 77	java/lang/String:substring	(I)Ljava/lang/String;
    //   78: astore_1
    //   79: aload_1
    //   80: ifnull +141 -> 221
    //   83: aload_1
    //   84: bipush 58
    //   86: invokevirtual 70	java/lang/String:indexOf	(I)I
    //   89: istore 7
    //   91: iload 7
    //   93: iflt +128 -> 221
    //   96: iload 7
    //   98: iconst_1
    //   99: iadd
    //   100: istore 6
    //   102: iload 6
    //   104: istore 4
    //   106: iconst_0
    //   107: istore 5
    //   109: iload 4
    //   111: aload_1
    //   112: invokevirtual 73	java/lang/String:length	()I
    //   115: if_icmpge +35 -> 150
    //   118: aload_1
    //   119: iload 4
    //   121: invokevirtual 81	java/lang/String:charAt	(I)C
    //   124: invokestatic 87	java/lang/Character:isDigit	(C)Z
    //   127: ifeq +23 -> 150
    //   130: iload 5
    //   132: iconst_1
    //   133: iadd
    //   134: istore 5
    //   136: iload 4
    //   138: iconst_1
    //   139: iadd
    //   140: istore 4
    //   142: goto -33 -> 109
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -68 -> 79
    //   150: iload 5
    //   152: ifle +60 -> 212
    //   155: aload_1
    //   156: iload 6
    //   158: iload 6
    //   160: iload 5
    //   162: iadd
    //   163: invokevirtual 90	java/lang/String:substring	(II)Ljava/lang/String;
    //   166: invokestatic 96	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   169: istore 4
    //   171: iload 4
    //   173: istore_3
    //   174: aload_1
    //   175: iconst_0
    //   176: iload 7
    //   178: invokevirtual 90	java/lang/String:substring	(II)Ljava/lang/String;
    //   181: astore_1
    //   182: iload_3
    //   183: istore 4
    //   185: aload_0
    //   186: invokevirtual 99	java/net/URI:getScheme	()Ljava/lang/String;
    //   189: astore_0
    //   190: aload_1
    //   191: invokestatic 105	org/apache/http/util/TextUtils:isBlank	(Ljava/lang/CharSequence;)Z
    //   194: ifne +22 -> 216
    //   197: new 107	org/apache/http/HttpHost
    //   200: dup
    //   201: aload_1
    //   202: iload 4
    //   204: aload_0
    //   205: invokespecial 110	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   208: astore_0
    //   209: aload_0
    //   210: areturn
    //   211: astore_2
    //   212: goto -38 -> 174
    //   215: astore_0
    //   216: aconst_null
    //   217: astore_0
    //   218: goto -9 -> 209
    //   221: iload_3
    //   222: istore 4
    //   224: goto -39 -> 185
    //   227: aload_2
    //   228: astore_1
    //   229: goto -150 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	paramURI	URI
    //   24	205	1	localObject	Object
    //   22	49	2	str	String
    //   211	17	2	localNumberFormatException	NumberFormatException
    //   17	205	3	i	int
    //   26	197	4	j	int
    //   107	56	5	k	int
    //   100	63	6	m	int
    //   89	88	7	n	int
    // Exception table:
    //   from	to	target	type
    //   155	171	211	java/lang/NumberFormatException
    //   197	209	215	java/lang/IllegalArgumentException
  }
  
  static URI normalizeSyntax(URI paramURI)
  {
    if ((paramURI.isOpaque()) || (paramURI.getAuthority() == null)) {
      return paramURI;
    }
    Args.check(paramURI.isAbsolute(), "Base URI must be absolute");
    paramURI = new URIBuilder(paramURI);
    String str = paramURI.getPath();
    if ((str != null) && (!str.equals("/")))
    {
      Object localObject2 = str.split("/");
      Object localObject1 = new Stack();
      int j = localObject2.length;
      int i = 0;
      Object localObject3;
      if (i < j)
      {
        localObject3 = localObject2[i];
        if ((!((String)localObject3).isEmpty()) && (!".".equals(localObject3)))
        {
          if (!"..".equals(localObject3)) {
            break label136;
          }
          if (!((Stack)localObject1).isEmpty()) {
            ((Stack)localObject1).pop();
          }
        }
        for (;;)
        {
          i += 1;
          break;
          label136:
          ((Stack)localObject1).push(localObject3);
        }
      }
      localObject2 = new StringBuilder();
      localObject1 = ((Stack)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (String)((Iterator)localObject1).next();
        ((StringBuilder)localObject2).append('/').append((String)localObject3);
      }
      if (str.lastIndexOf('/') == str.length() - 1) {
        ((StringBuilder)localObject2).append('/');
      }
      paramURI.setPath(((StringBuilder)localObject2).toString());
    }
    if (paramURI.getScheme() != null) {
      paramURI.setScheme(paramURI.getScheme().toLowerCase(Locale.ROOT));
    }
    if (paramURI.getHost() != null) {
      paramURI.setHost(paramURI.getHost().toLowerCase(Locale.ROOT));
    }
    return paramURI.build();
  }
  
  public static URI resolve(URI paramURI, String paramString)
  {
    return resolve(paramURI, URI.create(paramString));
  }
  
  public static URI resolve(URI paramURI1, URI paramURI2)
  {
    Args.notNull(paramURI1, "Base URI");
    Args.notNull(paramURI2, "Reference URI");
    String str = paramURI2.toASCIIString();
    if (str.startsWith("?"))
    {
      paramURI2 = paramURI1.toASCIIString();
      int i = paramURI2.indexOf('?');
      paramURI1 = paramURI2;
      if (i >= 0) {
        paramURI1 = paramURI2.substring(0, i);
      }
      return URI.create(paramURI1 + str);
    }
    if (str.isEmpty()) {
      paramURI1 = paramURI1.resolve(URI.create("#")).toASCIIString();
    }
    for (paramURI1 = URI.create(paramURI1.substring(0, paramURI1.indexOf('#')));; paramURI1 = paramURI1.resolve(paramURI2)) {
      try
      {
        paramURI1 = normalizeSyntax(paramURI1);
        return paramURI1;
      }
      catch (URISyntaxException paramURI1)
      {
        throw new IllegalArgumentException(paramURI1);
      }
    }
  }
  
  public static URI resolve(URI paramURI, HttpHost paramHttpHost, List<URI> paramList)
  {
    Args.notNull(paramURI, "Request URI");
    if ((paramList == null) || (paramList.isEmpty())) {}
    URIBuilder localURIBuilder;
    for (paramList = new URIBuilder(paramURI);; paramList = localURIBuilder)
    {
      if (paramList.getFragment() == null) {
        paramList.setFragment(paramURI.getFragment());
      }
      if ((paramHttpHost != null) && (!paramList.isAbsolute()))
      {
        paramList.setScheme(paramHttpHost.getSchemeName());
        paramList.setHost(paramHttpHost.getHostName());
        paramList.setPort(paramHttpHost.getPort());
      }
      return paramList.build();
      localURIBuilder = new URIBuilder((URI)paramList.get(paramList.size() - 1));
      String str = localURIBuilder.getFragment();
      int i = paramList.size();
      i -= 1;
      while ((str == null) && (i >= 0))
      {
        str = ((URI)paramList.get(i)).getFragment();
        i -= 1;
      }
      localURIBuilder.setFragment(str);
    }
  }
  
  public static URI rewriteURI(URI paramURI)
  {
    Args.notNull(paramURI, "URI");
    if (paramURI.isOpaque()) {
      return paramURI;
    }
    paramURI = new URIBuilder(paramURI);
    if (paramURI.getUserInfo() != null) {
      paramURI.setUserInfo(null);
    }
    if (TextUtils.isEmpty(paramURI.getPath())) {
      paramURI.setPath("/");
    }
    if (paramURI.getHost() != null) {
      paramURI.setHost(paramURI.getHost().toLowerCase(Locale.ROOT));
    }
    paramURI.setFragment(null);
    return paramURI.build();
  }
  
  public static URI rewriteURI(URI paramURI, HttpHost paramHttpHost)
  {
    return rewriteURI(paramURI, paramHttpHost, false);
  }
  
  public static URI rewriteURI(URI paramURI, HttpHost paramHttpHost, boolean paramBoolean)
  {
    Args.notNull(paramURI, "URI");
    if (paramURI.isOpaque()) {
      return paramURI;
    }
    paramURI = new URIBuilder(paramURI);
    if (paramHttpHost != null)
    {
      paramURI.setScheme(paramHttpHost.getSchemeName());
      paramURI.setHost(paramHttpHost.getHostName());
      paramURI.setPort(paramHttpHost.getPort());
    }
    for (;;)
    {
      if (paramBoolean) {
        paramURI.setFragment(null);
      }
      if (TextUtils.isEmpty(paramURI.getPath())) {
        paramURI.setPath("/");
      }
      return paramURI.build();
      paramURI.setScheme(null);
      paramURI.setHost(null);
      paramURI.setPort(-1);
    }
  }
  
  public static URI rewriteURIForRoute(URI paramURI, RouteInfo paramRouteInfo)
  {
    if (paramURI == null) {
      return null;
    }
    if ((paramRouteInfo.getProxyHost() != null) && (!paramRouteInfo.isTunnelled()))
    {
      if (!paramURI.isAbsolute()) {
        return rewriteURI(paramURI, paramRouteInfo.getTargetHost(), true);
      }
      return rewriteURI(paramURI);
    }
    if (paramURI.isAbsolute()) {
      return rewriteURI(paramURI, null, true);
    }
    return rewriteURI(paramURI);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\URIUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */