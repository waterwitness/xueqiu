package org.apache.cordova;

import android.webkit.JavascriptInterface;

final class m
{
  private x a;
  private p b;
  
  public m(x paramx, p paramp)
  {
    this.a = paramx;
    this.b = paramp;
  }
  
  @JavascriptInterface
  public final String exec(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString4 == null) {
      return "@Null arguments.";
    }
    this.b.b(true);
    try
    {
      h.a = Thread.currentThread();
      this.a.a(paramString1, paramString2, paramString3, paramString4);
      paramString1 = this.b.a(false);
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
      return "";
    }
    finally
    {
      this.b.b(false);
    }
  }
  
  @JavascriptInterface
  public final String retrieveJsMessages(boolean paramBoolean)
  {
    return this.b.a(paramBoolean);
  }
  
  @JavascriptInterface
  public final void setNativeToJsBridgeMode(int paramInt)
  {
    this.b.a(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */