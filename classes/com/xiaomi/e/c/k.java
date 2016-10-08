package com.xiaomi.e.c;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class k
{
  public String a;
  public String b;
  private int c;
  private String d;
  private String e;
  private List<a> f = null;
  
  public k(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<a> paramList)
  {
    this.c = paramInt;
    this.a = paramString1;
    this.b = paramString2;
    this.d = paramString3;
    this.e = paramString4;
    this.f = paramList;
  }
  
  public k(Bundle paramBundle)
  {
    this.c = paramBundle.getInt("ext_err_code");
    if (paramBundle.containsKey("ext_err_type")) {
      this.a = paramBundle.getString("ext_err_type");
    }
    this.d = paramBundle.getString("ext_err_cond");
    this.b = paramBundle.getString("ext_err_reason");
    this.e = paramBundle.getString("ext_err_msg");
    paramBundle = paramBundle.getParcelableArray("ext_exts");
    if (paramBundle != null)
    {
      this.f = new ArrayList(paramBundle.length);
      int j = paramBundle.length;
      int i = 0;
      while (i < j)
      {
        a locala = a.a((Bundle)paramBundle[i]);
        this.f.add(locala);
        i += 1;
      }
    }
  }
  
  public k(l paraml)
  {
    this.d = l.a(paraml);
    this.e = null;
  }
  
  /* Error */
  private List<a> c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/xiaomi/e/c/k:f	Ljava/util/List;
    //   6: ifnonnull +11 -> 17
    //   9: invokestatic 93	java/util/Collections:emptyList	()Ljava/util/List;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield 21	com/xiaomi/e/c/k:f	Ljava/util/List;
    //   21: invokestatic 97	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   24: astore_1
    //   25: goto -12 -> 13
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	k
    //   12	13	1	localList	List
    //   28	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	28	finally
    //   17	25	28	finally
  }
  
  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    if (this.a != null) {
      localBundle.putString("ext_err_type", this.a);
    }
    localBundle.putInt("ext_err_code", this.c);
    if (this.b != null) {
      localBundle.putString("ext_err_reason", this.b);
    }
    if (this.d != null) {
      localBundle.putString("ext_err_cond", this.d);
    }
    if (this.e != null) {
      localBundle.putString("ext_err_msg", this.e);
    }
    if (this.f != null)
    {
      Bundle[] arrayOfBundle = new Bundle[this.f.size()];
      Iterator localIterator = this.f.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        arrayOfBundle[i] = ((a)localIterator.next()).c();
        i += 1;
      }
      localBundle.putParcelableArray("ext_exts", arrayOfBundle);
    }
    return localBundle;
  }
  
  public final String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<error code=\"").append(this.c).append("\"");
    if (this.a != null)
    {
      localStringBuilder.append(" type=\"");
      localStringBuilder.append(this.a);
      localStringBuilder.append("\"");
    }
    if (this.b != null)
    {
      localStringBuilder.append(" reason=\"");
      localStringBuilder.append(this.b);
      localStringBuilder.append("\"");
    }
    localStringBuilder.append(">");
    if (this.d != null)
    {
      localStringBuilder.append("<").append(this.d);
      localStringBuilder.append(" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>");
    }
    if (this.e != null)
    {
      localStringBuilder.append("<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">");
      localStringBuilder.append(this.e);
      localStringBuilder.append("</text>");
    }
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append(((a)localIterator.next()).b());
    }
    localStringBuilder.append("</error>");
    return localStringBuilder.toString();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.d != null) {
      localStringBuilder.append(this.d);
    }
    localStringBuilder.append("(").append(this.c).append(")");
    if (this.e != null) {
      localStringBuilder.append(" ").append(this.e);
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */