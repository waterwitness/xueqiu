package com.xueqiu.android.base.b;

import android.net.UrlQuerySanitizer;
import android.net.UrlQuerySanitizer.ParameterValuePair;
import com.android.volley.c;
import com.android.volley.k;
import com.android.volley.n;
import com.android.volley.o;
import com.android.volley.s;
import com.android.volley.y;
import com.google.gson.Gson;
import com.xueqiu.android.base.c.b;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.util.ax;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.model.parser.JSONUtils;
import com.xueqiu.android.common.model.parser.Parser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class x<T>
  extends n<T>
{
  protected static int n = -1;
  protected static long o = 0L;
  o l = null;
  aa m = null;
  private Map<String, String> p = null;
  private Map<String, String> q = null;
  private HttpEntity r;
  private p<T> s;
  private Parser<?> t = null;
  private long u = 0L;
  
  private x(int paramInt, String paramString, s params)
  {
    super(paramInt, paramString, params);
  }
  
  private static <T> x<T> a(int paramInt, String paramString, Map<String, String> paramMap, p<T> paramp, Parser paramParser)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    localObject = c(b((Map)localObject));
    paramMap = (Map<String, String>)localObject;
    if (paramInt == 0) {
      paramMap = d((Map)localObject);
    }
    paramString = b(paramString, paramMap);
    if (paramInt == 0)
    {
      paramString = new x(paramInt, a(paramString, paramMap), paramp.f);
      paramString.s = paramp;
      paramString.t = paramParser;
      paramString.p = paramMap;
      paramString.g = false;
      if (paramInt != 0) {
        break label137;
      }
    }
    label137:
    for (paramString.j = new ac();; paramString.j = new ab())
    {
      if (v.a) {
        v.a("SNBRequest", paramString.i());
      }
      return paramString;
      paramString = new x(paramInt, paramString, paramp.f);
      break;
    }
  }
  
  public static <T> x<T> a(String paramString, Map<String, String> paramMap, p<T> paramp, Parser paramParser)
  {
    return a(0, paramString, paramMap, paramp, paramParser);
  }
  
  public static <T> x<T> a(String paramString, HttpEntity paramHttpEntity, p<T> paramp, Parser<T> paramParser)
  {
    Map localMap = b(new HashMap());
    paramString = new x(1, b(paramString, localMap), paramp.f);
    paramString.p = localMap;
    paramString.s = paramp;
    paramString.t = paramParser;
    paramString.r = paramHttpEntity;
    paramString.g = false;
    return paramString;
  }
  
  public static <T> x<T> a(String paramString, BasicNameValuePair[] paramArrayOfBasicNameValuePair, p<T> paramp, Parser paramParser)
  {
    return a(paramString, a(paramArrayOfBasicNameValuePair), paramp, paramParser);
  }
  
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (paramString1.contains("?")) {}
      for (String str = "&";; str = "?")
      {
        paramString2 = URLEncoder.encode(paramString2, "UTF-8") + "=" + URLEncoder.encode(paramString3, "UTF-8");
        return paramString1 + str + paramString2;
      }
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString2)
    {
      paramString2.printStackTrace();
    }
  }
  
  private static String a(String paramString, Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append('=');
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append('&');
      }
      localStringBuilder.deleteCharAt(localStringBuilder.lastIndexOf("&"));
    }
    if (paramString.contains("?")) {}
    for (paramMap = "&";; paramMap = "?") {
      return paramString + paramMap + localStringBuilder;
    }
  }
  
  private static Map<String, String> a(NameValuePair[] paramArrayOfNameValuePair)
  {
    TreeMap localTreeMap = new TreeMap();
    if ((paramArrayOfNameValuePair != null) && (paramArrayOfNameValuePair.length != 0))
    {
      int j = paramArrayOfNameValuePair.length;
      int i = 0;
      while (i < j)
      {
        NameValuePair localNameValuePair = paramArrayOfNameValuePair[i];
        if (localNameValuePair.getValue() != null) {
          localTreeMap.put(localNameValuePair.getName(), localNameValuePair.getValue());
        }
        i += 1;
      }
    }
    return localTreeMap;
  }
  
  public static <T> x<T> b(String paramString, Map<String, String> paramMap, p<T> paramp, Parser paramParser)
  {
    return a(1, paramString, paramMap, paramp, paramParser);
  }
  
  public static <T> x<T> b(String paramString, BasicNameValuePair[] paramArrayOfBasicNameValuePair, p<T> paramp, Parser paramParser)
  {
    return b(paramString, a(paramArrayOfBasicNameValuePair), paramp, paramParser);
  }
  
  private static String b(String paramString, Map<String, String> paramMap)
  {
    paramString = a(paramString, "_t", ax.b());
    Object localObject1 = new UrlQuerySanitizer(paramString).getParameterList();
    paramMap = new HashMap(paramMap);
    Object localObject2;
    if (((List)localObject1).size() > 0)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (UrlQuerySanitizer.ParameterValuePair)((Iterator)localObject1).next();
        paramMap.put(((UrlQuerySanitizer.ParameterValuePair)localObject2).mParameter, ((UrlQuerySanitizer.ParameterValuePair)localObject2).mValue);
      }
    }
    localObject1 = new TreeMap(paramMap);
    paramMap = new StringBuilder();
    if (((Map)localObject1).size() > 0)
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        paramMap.append((String)((Map.Entry)localObject2).getKey());
        paramMap.append('=');
        paramMap.append((String)((Map.Entry)localObject2).getValue());
        paramMap.append('&');
      }
    }
    paramMap.append("_secretkey");
    paramMap.append('=');
    paramMap.append("2ee0b0d606aa1e845fb9537251db0785");
    paramMap = w.b(paramMap.toString());
    return a(paramString, "_s", paramMap.substring(paramMap.length() - 6, paramMap.length()));
  }
  
  private static Map<String, String> b(Map<String, String> paramMap)
  {
    if (n >= 0)
    {
      paramMap.put("x", String.format("%d.%d", new Object[] { Integer.valueOf(n), Long.valueOf(o) }));
      n = -1;
    }
    return paramMap;
  }
  
  private static String c(String paramString)
  {
    try
    {
      List localList = URLEncodedUtils.parse(new URI(paramString), "UTF-8");
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
        if ((localNameValuePair.getName().equals("_t")) || (localNameValuePair.getName().equals("x"))) {
          localIterator.remove();
        }
      }
      str = URLEncodedUtils.format(localURISyntaxException, "UTF-8");
    }
    catch (URISyntaxException localURISyntaxException)
    {
      localURISyntaxException.printStackTrace();
      return paramString;
    }
    String str;
    return str;
  }
  
  private static Map<String, String> c(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (localEntry.getValue() != null) {
        localHashMap.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    return localHashMap;
  }
  
  private static Map<String, String> d(Map<String, String> paramMap)
  {
    localHashMap = new HashMap();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if (localEntry.getValue() != null) {
          localHashMap.put(URLEncoder.encode((String)localEntry.getKey(), "UTF-8"), URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
        }
      }
      return localHashMap;
    }
    catch (UnsupportedEncodingException paramMap)
    {
      paramMap.printStackTrace();
    }
  }
  
  private String i()
  {
    String str2 = a();
    if (this.a == 1)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      try
      {
        Iterator localIterator = this.p.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localStringBuilder.append(URLEncoder.encode((String)localEntry.getKey(), "UTF-8"));
          localStringBuilder.append('=');
          localStringBuilder.append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
          localStringBuilder.append('&');
        }
        if (!str2.contains("?")) {}
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
      for (String str1 = "&";; str1 = "?") {
        return str2 + str1 + localStringBuilder.toString();
      }
    }
    return a();
  }
  
  private void j()
  {
    try
    {
      Object localObject = c();
      if (localObject == null) {
        return;
      }
      if (((Map)localObject).isEmpty()) {
        return;
      }
      String str1 = new URL(a()).getHost();
      if (com.xueqiu.android.base.util.ac.a.matcher(str1).find())
      {
        Iterator localIterator = ((Map)localObject).keySet().iterator();
        String str2;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          str2 = (String)localIterator.next();
        } while (!"host".equals(str2));
        localObject = (String)((Map)localObject).get(str2);
        b.a().a((String)localObject, str1);
        return;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      com.xueqiu.android.base.util.aa.a(localMalformedURLException);
      return;
    }
    b.a().a(localMalformedURLException, localMalformedURLException);
  }
  
  protected final com.android.volley.r<T> a(k paramk)
  {
    o = System.currentTimeMillis() - this.u;
    n = 0;
    label489:
    for (;;)
    {
      try
      {
        if ((this.m != null) && (paramk.b != null))
        {
          localObject2 = a();
          localObject1 = localObject2;
          if (((String)localObject2).contains("?")) {
            localObject1 = ((String)localObject2).substring(0, ((String)localObject2).indexOf("?"));
          }
          this.m.a((String)localObject1, paramk.b.length);
        }
        Object localObject1 = com.xueqiu.android.base.b.a.a.a(paramk);
        v.a("SNBRequest", String.format("response: %d %s", new Object[] { Integer.valueOf(paramk.a), localObject1 }));
        if (paramk.a != 200)
        {
          if ((localObject1 != null) && (((String)localObject1).startsWith("{"))) {
            return com.android.volley.r.a((y)m.a().fromJson((String)localObject1, com.xueqiu.android.base.a.a.class));
          }
          if (localObject1 != null) {
            return com.android.volley.r.a(new y((String)localObject1));
          }
          if ((paramk.a == 500) || (paramk.a == 502)) {
            return com.android.volley.r.a(new y("服务器开小差，请稍后再试"));
          }
          j();
          return com.android.volley.r.a(new y(paramk));
        }
        Object localObject2 = c();
        Object localObject3;
        long l1;
        Object localObject4;
        if ((localObject2 == null) || (((Map)localObject2).isEmpty()))
        {
          b.a().b("api.xueqiu.com");
          continue;
          localObject1 = JSONUtils.consume(this.t, (String)localObject1);
          if ((localObject1 != null) && ((localObject1 instanceof Collection))) {
            ((Collection)localObject1).removeAll(Collections.singleton(null));
          }
          long l2 = System.currentTimeMillis();
          localObject2 = paramk.c;
          localObject3 = (String)((Map)localObject2).get("Date");
          if (localObject3 == null) {
            break label489;
          }
          l1 = u.a((String)localObject3);
          localObject3 = (String)((Map)localObject2).get("ETag");
          localObject4 = new c();
          ((c)localObject4).a = paramk.b;
          ((c)localObject4).b = ((String)localObject3);
          ((c)localObject4).e = (0L + l2);
          ((c)localObject4).d = (l2 + 1039228928L);
          ((c)localObject4).c = l1;
          ((c)localObject4).f = ((Map)localObject2);
          return com.android.volley.r.a(localObject1, (c)localObject4);
        }
        else
        {
          localObject3 = ((Map)localObject2).keySet().iterator();
        }
        if (((Iterator)localObject3).hasNext())
        {
          localObject4 = (String)((Iterator)localObject3).next();
          if ("host".equals(localObject4))
          {
            localObject2 = (String)((Map)localObject2).get(localObject4);
            b.a().b((String)localObject2);
            continue;
            l1 = 0L;
          }
        }
      }
      catch (Throwable paramk)
      {
        j();
        if ((paramk instanceof y)) {
          return com.android.volley.r.a((y)paramk);
        }
        return com.android.volley.r.a(new y(paramk));
      }
    }
  }
  
  protected final y a(y paramy)
  {
    o = System.currentTimeMillis() - this.u;
    if ((paramy.a != null) && (paramy.a.b != null))
    {
      n = 0;
      try
      {
        Object localObject = com.xueqiu.android.base.b.a.a.a(paramy.a);
        if (paramy.a.a == 404) {
          return new y("404 not found " + a());
        }
        if ((localObject != null) && (((String)localObject).startsWith("{"))) {
          return (y)m.a().fromJson((String)localObject, com.xueqiu.android.base.a.a.class);
        }
        if (localObject != null)
        {
          j();
          localObject = new y((String)localObject);
          return (y)localObject;
        }
      }
      catch (Throwable localThrowable)
      {
        v.a("SNBRequest", "", localThrowable);
        return super.a(paramy);
      }
      if ((paramy.a.a == 500) || (paramy.a.a == 502))
      {
        j();
        return new y("服务器开小差，请稍后再试");
      }
      j();
      y localy = super.a(paramy);
      return localy;
    }
    j();
    if ((paramy instanceof com.android.volley.x)) {}
    for (n = 2;; n = 1) {
      return super.a(paramy);
    }
  }
  
  public final void a(r paramr)
  {
    this.g = paramr.a;
    if (paramr.b != null) {
      this.j = paramr.b;
    }
    if (paramr.c != null) {
      this.l = paramr.c;
    }
  }
  
  protected final void a(T paramT)
  {
    if ((!this.h) && (this.s.a()))
    {
      this.s.a(paramT);
      this.i = true;
    }
  }
  
  public final void a(String paramString)
  {
    super.a(paramString);
    if (this.u == 0L) {
      this.u = System.currentTimeMillis();
    }
  }
  
  public final void a(Map<String, String> paramMap)
  {
    this.q = paramMap;
    if (this.q == null) {
      this.q = new HashMap();
    }
  }
  
  public final String b()
  {
    return c(i());
  }
  
  public final void b(y paramy)
  {
    if ((this.h) || (!this.s.a())) {
      return;
    }
    com.xueqiu.android.base.a.a locala;
    if ((paramy instanceof com.xueqiu.android.base.a.a))
    {
      locala = (com.xueqiu.android.base.a.a)paramy;
      if ((locala.errorCode == null) || (!locala.errorCode.equals("400012"))) {
        break label67;
      }
      com.xueqiu.android.base.u.a().logout();
    }
    for (;;)
    {
      super.b(paramy);
      this.i = true;
      return;
      label67:
      if ((locala.errorCode != null) && ((locala.errorCode.equals("400016")) || (locala.errorCode.equals("400013")))) {
        com.xueqiu.android.base.u.a().b();
      }
    }
  }
  
  public final Map<String, String> c()
  {
    if (this.q == null) {
      this.q = new HashMap();
    }
    return this.q;
  }
  
  protected final Map<String, String> d()
  {
    return this.p;
  }
  
  public final String e()
  {
    if (this.r != null) {
      return this.r.getContentType().getValue();
    }
    return super.e();
  }
  
  public final byte[] f()
  {
    if (this.r != null)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        this.r.writeTo(localByteArrayOutputStream);
        return localByteArrayOutputStream.toByteArray();
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
        }
      }
    }
    return super.f();
  }
  
  public final o g()
  {
    if (this.l == null) {
      return super.g();
    }
    return this.l;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */