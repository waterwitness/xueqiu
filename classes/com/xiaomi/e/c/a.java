package com.xiaomi.e.c;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.e.e.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class a
  implements f
{
  String a;
  private String b;
  private String[] c = null;
  private String[] d = null;
  private String e;
  private List<a> f = null;
  
  public a(String paramString)
  {
    this.a = paramString;
    this.b = null;
    this.c = null;
    this.d = null;
  }
  
  public a(String paramString1, String paramString2, String[] paramArrayOfString1, String[] paramArrayOfString2, String paramString3, List<a> paramList)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramArrayOfString1;
    this.d = paramArrayOfString2;
    this.e = paramString3;
    this.f = paramList;
  }
  
  public static a a(Bundle paramBundle)
  {
    int j = 0;
    String str1 = paramBundle.getString("ext_ele_name");
    String str2 = paramBundle.getString("ext_ns");
    String str3 = paramBundle.getString("ext_text");
    Object localObject1 = paramBundle.getBundle("attributes");
    Object localObject2 = ((Bundle)localObject1).keySet();
    String[] arrayOfString1 = new String[((Set)localObject2).size()];
    String[] arrayOfString2 = new String[((Set)localObject2).size()];
    localObject2 = ((Set)localObject2).iterator();
    int i = 0;
    while (((Iterator)localObject2).hasNext())
    {
      String str4 = (String)((Iterator)localObject2).next();
      arrayOfString1[i] = str4;
      arrayOfString2[i] = ((Bundle)localObject1).getString(str4);
      i += 1;
    }
    if (paramBundle.containsKey("children"))
    {
      localObject2 = paramBundle.getParcelableArray("children");
      localObject1 = new ArrayList(localObject2.length);
      int k = localObject2.length;
      i = j;
      for (;;)
      {
        paramBundle = (Bundle)localObject1;
        if (i >= k) {
          break;
        }
        ((List)localObject1).add(a((Bundle)localObject2[i]));
        i += 1;
      }
    }
    paramBundle = null;
    return new a(str1, str2, arrayOfString1, arrayOfString2, str3, paramBundle);
  }
  
  private static Parcelable[] a(a[] paramArrayOfa)
  {
    if (paramArrayOfa == null) {
      return null;
    }
    Parcelable[] arrayOfParcelable = new Parcelable[paramArrayOfa.length];
    int i = 0;
    while (i < paramArrayOfa.length)
    {
      arrayOfParcelable[i] = paramArrayOfa[i].c();
      i += 1;
    }
    return arrayOfParcelable;
  }
  
  public final String a()
  {
    if (!TextUtils.isEmpty(this.e)) {
      return g.b(this.e);
    }
    return this.e;
  }
  
  public final String a(String paramString)
  {
    if (this.c != null)
    {
      int i = 0;
      while (i < this.c.length)
      {
        if (paramString.equals(this.c[i])) {
          return this.d[i];
        }
        i += 1;
      }
    }
    return null;
  }
  
  public final String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<").append(this.a);
    if (!TextUtils.isEmpty(this.b)) {
      localStringBuilder.append(" xmlns=\"").append(this.b).append("\"");
    }
    if ((this.c != null) && (this.c.length > 0))
    {
      int i = 0;
      while (i < this.c.length)
      {
        if (!TextUtils.isEmpty(this.d[i])) {
          localStringBuilder.append(" ").append(this.c[i]).append("=\"").append(g.a(this.d[i])).append("\"");
        }
        i += 1;
      }
    }
    if (!TextUtils.isEmpty(this.e)) {
      localStringBuilder.append(">").append(this.e).append("</").append(this.a).append(">");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if ((this.f != null) && (this.f.size() > 0))
      {
        localStringBuilder.append(">");
        Iterator localIterator = this.f.iterator();
        while (localIterator.hasNext()) {
          localStringBuilder.append(((a)localIterator.next()).b());
        }
        localStringBuilder.append("</").append(this.a).append(">");
      }
      else
      {
        localStringBuilder.append("/>");
      }
    }
  }
  
  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.e = g.a(paramString);
      return;
    }
    this.e = paramString;
  }
  
  public final Bundle c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("ext_ele_name", this.a);
    localBundle.putString("ext_ns", this.b);
    localBundle.putString("ext_text", this.e);
    Object localObject = new Bundle();
    if ((this.c != null) && (this.c.length > 0))
    {
      int i = 0;
      while (i < this.c.length)
      {
        ((Bundle)localObject).putString(this.c[i], this.d[i]);
        i += 1;
      }
    }
    localBundle.putBundle("attributes", (Bundle)localObject);
    if ((this.f != null) && (this.f.size() > 0))
    {
      localObject = this.f;
      localBundle.putParcelableArray("children", a((a[])((List)localObject).toArray(new a[((List)localObject).size()])));
    }
    return localBundle;
  }
  
  public final String toString()
  {
    return b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */