package com.snowballfinance.messageplatform.b;

import java.net.URISyntaxException;
import org.apache.http.client.utils.URIBuilder;

public final class b
{
  public static String a(String paramString, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (paramString == null) {
      return null;
    }
    paramString = paramString.split("!");
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramString.length;
    int j = 0;
    while (i < k)
    {
      String str = paramString[i];
      if ((j < paramString.length - 1) || (paramString.length == 1)) {
        localStringBuilder.append(str);
      }
      j += 1;
      i += 1;
    }
    localStringBuilder.append("!" + paramInt1 + "x" + paramInt2 + ".png");
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      URIBuilder localURIBuilder = new URIBuilder(paramString1);
      localURIBuilder.setHost("");
      localURIBuilder.setScheme("");
      paramString2 = paramString2 + localURIBuilder.toString().replace("://", "");
      return paramString2;
    }
    catch (URISyntaxException paramString2)
    {
      paramString2.printStackTrace();
    }
    return paramString1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */