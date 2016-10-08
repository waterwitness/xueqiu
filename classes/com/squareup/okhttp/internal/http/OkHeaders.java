package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Authenticator;
import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public final class OkHeaders
{
  private static final Comparator<String> FIELD_NAME_COMPARATOR = new Comparator()
  {
    public final int compare(String paramAnonymousString1, String paramAnonymousString2)
    {
      if (paramAnonymousString1 == paramAnonymousString2) {
        return 0;
      }
      if (paramAnonymousString1 == null) {
        return -1;
      }
      if (paramAnonymousString2 == null) {
        return 1;
      }
      return String.CASE_INSENSITIVE_ORDER.compare(paramAnonymousString1, paramAnonymousString2);
    }
  };
  static final String PREFIX = Platform.get().getPrefix();
  public static final String RECEIVED_MILLIS = PREFIX + "-Received-Millis";
  public static final String SELECTED_PROTOCOL = PREFIX + "-Selected-Protocol";
  public static final String SENT_MILLIS = PREFIX + "-Sent-Millis";
  
  public static void addCookies(Request.Builder paramBuilder, Map<String, List<String>> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      if ((("Cookie".equalsIgnoreCase(str)) || ("Cookie2".equalsIgnoreCase(str))) && (!((List)localEntry.getValue()).isEmpty())) {
        paramBuilder.addHeader(str, buildCookieHeader((List)localEntry.getValue()));
      }
    }
  }
  
  private static String buildCookieHeader(List<String> paramList)
  {
    if (paramList.size() == 1) {
      return (String)paramList.get(0);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      if (i > 0) {
        localStringBuilder.append("; ");
      }
      localStringBuilder.append((String)paramList.get(i));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static long contentLength(Headers paramHeaders)
  {
    return stringToLong(paramHeaders.get("Content-Length"));
  }
  
  public static long contentLength(Request paramRequest)
  {
    return contentLength(paramRequest.headers());
  }
  
  public static long contentLength(Response paramResponse)
  {
    return contentLength(paramResponse.headers());
  }
  
  public static boolean hasVaryAll(Response paramResponse)
  {
    return varyFields(paramResponse).contains("*");
  }
  
  static boolean isEndToEnd(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  public static List<Challenge> parseChallenges(Headers paramHeaders, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramHeaders.size();
    int i = 0;
    while (i < k)
    {
      if (paramString.equalsIgnoreCase(paramHeaders.name(i)))
      {
        String str1 = paramHeaders.value(i);
        int j = 0;
        while (j < str1.length())
        {
          int m = HeaderParser.skipUntil(str1, j, " ");
          String str2 = str1.substring(j, m).trim();
          j = HeaderParser.skipWhitespace(str1, m);
          if (!str1.regionMatches(true, j, "realm=\"", 0, 7)) {
            break;
          }
          j += 7;
          m = HeaderParser.skipUntil(str1, j, "\"");
          String str3 = str1.substring(j, m);
          j = HeaderParser.skipWhitespace(str1, HeaderParser.skipUntil(str1, m + 1, ",") + 1);
          localArrayList.add(new Challenge(str2, str3));
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static Request processAuthHeader(Authenticator paramAuthenticator, Response paramResponse, Proxy paramProxy)
  {
    if (paramResponse.code() == 407) {
      return paramAuthenticator.authenticateProxy(paramProxy, paramResponse);
    }
    return paramAuthenticator.authenticate(paramProxy, paramResponse);
  }
  
  private static long stringToLong(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public static Map<String, List<String>> toMultimap(Headers paramHeaders, String paramString)
  {
    TreeMap localTreeMap = new TreeMap(FIELD_NAME_COMPARATOR);
    int j = paramHeaders.size();
    int i = 0;
    while (i < j)
    {
      String str1 = paramHeaders.name(i);
      String str2 = paramHeaders.value(i);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null) {
        localArrayList.addAll(localList);
      }
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
      i += 1;
    }
    if (paramString != null) {
      localTreeMap.put(null, Collections.unmodifiableList(Collections.singletonList(paramString)));
    }
    return Collections.unmodifiableMap(localTreeMap);
  }
  
  private static Set<String> varyFields(Response paramResponse)
  {
    Object localObject1 = Collections.emptySet();
    Headers localHeaders = paramResponse.headers();
    int k = localHeaders.size();
    int i = 0;
    while (i < k)
    {
      Object localObject2 = localObject1;
      if ("Vary".equalsIgnoreCase(localHeaders.name(i)))
      {
        localObject2 = localHeaders.value(i);
        paramResponse = (Response)localObject1;
        if (((Set)localObject1).isEmpty()) {
          paramResponse = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        }
        localObject1 = ((String)localObject2).split(",");
        int m = localObject1.length;
        int j = 0;
        for (;;)
        {
          localObject2 = paramResponse;
          if (j >= m) {
            break;
          }
          paramResponse.add(localObject1[j].trim());
          j += 1;
        }
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (Set<String>)localObject1;
  }
  
  public static Headers varyHeaders(Response paramResponse)
  {
    Set localSet = varyFields(paramResponse);
    if (localSet.isEmpty()) {
      return new Headers.Builder().build();
    }
    paramResponse = paramResponse.networkResponse().request().headers();
    Headers.Builder localBuilder = new Headers.Builder();
    int i = 0;
    int j = paramResponse.size();
    while (i < j)
    {
      String str = paramResponse.name(i);
      if (localSet.contains(str)) {
        localBuilder.add(str, paramResponse.value(i));
      }
      i += 1;
    }
    return localBuilder.build();
  }
  
  public static boolean varyMatches(Response paramResponse, Headers paramHeaders, Request paramRequest)
  {
    paramResponse = varyFields(paramResponse).iterator();
    while (paramResponse.hasNext())
    {
      String str = (String)paramResponse.next();
      if (!Util.equal(paramHeaders.values(str), paramRequest.headers(str))) {
        return false;
      }
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\OkHeaders.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */