package com.squareup.okhttp;

import c.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class CertificatePinner$Builder
{
  private final Map<String, List<g>> hostnameToPins = new LinkedHashMap();
  
  public final Builder add(String paramString, String... paramVarArgs)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("hostname == null");
    }
    ArrayList localArrayList = new ArrayList();
    paramString = (List)this.hostnameToPins.put(paramString, Collections.unmodifiableList(localArrayList));
    if (paramString != null) {
      localArrayList.addAll(paramString);
    }
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramString = paramVarArgs[i];
      if (!paramString.startsWith("sha1/")) {
        throw new IllegalArgumentException("pins must start with 'sha1/': " + paramString);
      }
      g localg = g.b(paramString.substring(5));
      if (localg == null) {
        throw new IllegalArgumentException("pins must be base64: " + paramString);
      }
      localArrayList.add(localg);
      i += 1;
    }
    return this;
  }
  
  public final CertificatePinner build()
  {
    return new CertificatePinner(this, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\CertificatePinner$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */