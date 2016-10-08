package org.apache.cordova;

import java.io.PrintStream;

public final class w
{
  public String a = "";
  public String b = "";
  public g c = null;
  public boolean d = false;
  
  public w(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.d = paramBoolean;
  }
  
  public w(String paramString, g paramg)
  {
    this.a = paramString;
    this.c = paramg;
    this.b = paramg.getClass().getName();
    this.d = false;
  }
  
  public final g a(CordovaWebView paramCordovaWebView, f paramf)
  {
    if (this.c != null) {
      return this.c;
    }
    for (;;)
    {
      try
      {
        localObject = this.b;
        if ((localObject == null) || ("".equals(localObject))) {
          break label149;
        }
        localObject = Class.forName((String)localObject);
        if (localObject == null) {
          break label126;
        }
        bool = g.class.isAssignableFrom((Class)localObject);
        if (bool)
        {
          this.c = ((g)((Class)localObject).newInstance());
          localObject = this.c;
          if ((g.c) || (((g)localObject).b == null)) {
            break label132;
          }
          throw new AssertionError();
        }
      }
      catch (Exception paramCordovaWebView)
      {
        paramCordovaWebView.printStackTrace();
        System.out.println("Error adding plugin " + this.b + ".");
      }
      return null;
      label126:
      boolean bool = false;
      continue;
      label132:
      ((g)localObject).b = paramf;
      ((g)localObject).a = paramCordovaWebView;
      paramCordovaWebView = this.c;
      return paramCordovaWebView;
      label149:
      Object localObject = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */