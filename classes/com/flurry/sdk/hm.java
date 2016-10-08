package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;

public class hm
{
  private static final String b = hm.class.getSimpleName();
  boolean a;
  private final hn c = new hn();
  private final File d;
  private String e;
  
  public hm()
  {
    this(js.a().c());
  }
  
  public hm(Context paramContext)
  {
    this.d = paramContext.getFileStreamPath(".flurryinstallreceiver.");
    kg.a(3, b, "Referrer file name if it exists:  " + this.d);
  }
  
  private void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    this.e = paramString;
  }
  
  private void c()
  {
    if (this.a) {
      return;
    }
    this.a = true;
    kg.a(4, b, "Loading referrer info from file: " + this.d.getAbsolutePath());
    String str = ls.c(this.d);
    kg.a(b, "Referrer file contents: " + str);
    b(str);
  }
  
  private void d()
  {
    ls.a(this.d, this.e);
  }
  
  public Map<String, List<String>> a(boolean paramBoolean)
  {
    try
    {
      c();
      Map localMap = this.c.a(this.e);
      if (paramBoolean) {
        a();
      }
      return localMap;
    }
    finally {}
  }
  
  public void a()
  {
    try
    {
      this.d.delete();
      this.e = null;
      this.a = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      this.a = true;
      b(paramString);
      d();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public String b()
  {
    try
    {
      c();
      String str = this.e;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\hm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */