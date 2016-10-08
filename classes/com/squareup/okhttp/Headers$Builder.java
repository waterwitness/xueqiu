package com.squareup.okhttp;

import java.util.ArrayList;
import java.util.List;

public final class Headers$Builder
{
  private final List<String> namesAndValues = new ArrayList(20);
  
  private Builder addLenient(String paramString1, String paramString2)
  {
    this.namesAndValues.add(paramString1);
    this.namesAndValues.add(paramString2.trim());
    return this;
  }
  
  public final Builder add(String paramString)
  {
    int i = paramString.indexOf(":");
    if (i == -1) {
      throw new IllegalArgumentException("Unexpected header: " + paramString);
    }
    return add(paramString.substring(0, i).trim(), paramString.substring(i + 1));
  }
  
  public final Builder add(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("name == null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("value == null");
    }
    if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1)) {
      throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
    }
    return addLenient(paramString1, paramString2);
  }
  
  final Builder addLenient(String paramString)
  {
    int i = paramString.indexOf(":", 1);
    if (i != -1) {
      return addLenient(paramString.substring(0, i), paramString.substring(i + 1));
    }
    if (paramString.startsWith(":")) {
      return addLenient("", paramString.substring(1));
    }
    return addLenient("", paramString);
  }
  
  public final Headers build()
  {
    return new Headers(this, null);
  }
  
  public final String get(String paramString)
  {
    int i = this.namesAndValues.size() - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase((String)this.namesAndValues.get(i))) {
        return (String)this.namesAndValues.get(i + 1);
      }
      i -= 2;
    }
    return null;
  }
  
  public final Builder removeAll(String paramString)
  {
    int j;
    for (int i = 0; i < this.namesAndValues.size(); i = j + 2)
    {
      j = i;
      if (paramString.equalsIgnoreCase((String)this.namesAndValues.get(i)))
      {
        this.namesAndValues.remove(i);
        this.namesAndValues.remove(i);
        j = i - 2;
      }
    }
    return this;
  }
  
  public final Builder set(String paramString1, String paramString2)
  {
    removeAll(paramString1);
    add(paramString1, paramString2);
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Headers$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */