package com.tencent.bugly.crashreport.crash.h5;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.tencent.bugly.crashreport.inner.InnerAPI;
import com.tencent.bugly.proguard.w;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

public class H5JavaScriptInterface
{
  private static HashMap<H5JavaScriptInterface, Integer> a = new HashMap();
  private String b = null;
  private Thread c = null;
  private String d = null;
  private Map<String, String> e = null;
  
  private static a a(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0)) {}
    a locala;
    label192:
    do
    {
      do
      {
        do
        {
          String str;
          do
          {
            for (;;)
            {
              return null;
              try
              {
                paramString = new JSONObject(paramString);
                locala = new a();
                locala.a = paramString.getString("projectRoot");
                if (locala.a != null)
                {
                  locala.b = paramString.getString("context");
                  if (locala.b != null)
                  {
                    locala.c = paramString.getString("url");
                    if (locala.c != null)
                    {
                      locala.d = paramString.getString("userAgent");
                      if (locala.d != null)
                      {
                        locala.e = paramString.getString("language");
                        if (locala.e != null)
                        {
                          locala.f = paramString.getString("name");
                          if ((locala.f != null) && (!locala.f.equals("null")))
                          {
                            str = paramString.getString("stacktrace");
                            if (str != null)
                            {
                              i = str.indexOf("\n");
                              if (i >= 0) {
                                break label192;
                              }
                              w.d("H5 crash stack's format is wrong!", new Object[0]);
                              return null;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
              catch (Throwable paramString) {}
            }
          } while (w.a(paramString));
          paramString.printStackTrace();
          return null;
          locala.h = str.substring(i + 1);
          locala.g = str.substring(0, i);
          int i = locala.g.indexOf(":");
          if (i > 0) {
            locala.g = locala.g.substring(i + 1);
          }
          locala.i = paramString.getString("file");
        } while (locala.f == null);
        locala.j = paramString.getLong("lineNumber");
      } while (locala.j < 0L);
      locala.k = paramString.getLong("columnNumber");
    } while (locala.k < 0L);
    w.a("H5 crash information is following: ", new Object[0]);
    w.a("[projectRoot]: " + locala.a, new Object[0]);
    w.a("[context]: " + locala.b, new Object[0]);
    w.a("[url]: " + locala.c, new Object[0]);
    w.a("[userAgent]: " + locala.d, new Object[0]);
    w.a("[language]: " + locala.e, new Object[0]);
    w.a("[name]: " + locala.f, new Object[0]);
    w.a("[message]: " + locala.g, new Object[0]);
    w.a("[stacktrace]: \n" + locala.h, new Object[0]);
    w.a("[file]: " + locala.i, new Object[0]);
    w.a("[lineNumber]: " + locala.j, new Object[0]);
    w.a("[columnNumber]: " + locala.k, new Object[0]);
    return locala;
  }
  
  public static H5JavaScriptInterface getInstance(WebView paramWebView)
  {
    Object localObject = null;
    if ((paramWebView == null) || (a.values().contains(Integer.valueOf(paramWebView.hashCode())))) {
      return null;
    }
    H5JavaScriptInterface localH5JavaScriptInterface = new H5JavaScriptInterface();
    a.put(localH5JavaScriptInterface, Integer.valueOf(paramWebView.hashCode()));
    localH5JavaScriptInterface.c = Thread.currentThread();
    Thread localThread = localH5JavaScriptInterface.c;
    if (localThread == null) {}
    for (;;)
    {
      localH5JavaScriptInterface.d = ((String)localObject);
      localObject = new HashMap();
      ((Map)localObject).put("[WebView] ContentDescription", paramWebView.getContentDescription());
      localH5JavaScriptInterface.e = ((Map)localObject);
      return localH5JavaScriptInterface;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("\n");
      int i = 2;
      while (i < localThread.getStackTrace().length)
      {
        StackTraceElement localStackTraceElement = localThread.getStackTrace()[i];
        if (!localStackTraceElement.toString().contains("crashreport")) {
          ((StringBuilder)localObject).append(localStackTraceElement.toString()).append("\n");
        }
        i += 1;
      }
      localObject = ((StringBuilder)localObject).toString();
    }
  }
  
  @JavascriptInterface
  public void printLog(String paramString)
  {
    w.d("Log from js: %s", new Object[] { paramString });
  }
  
  @JavascriptInterface
  public void reportJSException(String paramString)
  {
    if (paramString == null) {
      w.d("Payload from JS is null.", new Object[0]);
    }
    Object localObject1;
    Object localObject2;
    do
    {
      return;
      localObject1 = com.tencent.bugly.proguard.a.b(paramString.getBytes());
      if ((this.b != null) && (this.b.equals(localObject1)))
      {
        w.d("Same payload from js. Please check whether you've injected bugly.js more than one times.", new Object[0]);
        return;
      }
      this.b = ((String)localObject1);
      w.d("Handling JS exception ...", new Object[0]);
      paramString = a(paramString);
      if (paramString == null)
      {
        w.d("Failed to parse payload.", new Object[0]);
        return;
      }
      localObject1 = new LinkedHashMap();
      localObject2 = new LinkedHashMap();
      if (paramString.a != null) {
        ((Map)localObject2).put("[JS] projectRoot", paramString.a);
      }
      if (paramString.b != null) {
        ((Map)localObject2).put("[JS] context", paramString.b);
      }
      if (paramString.c != null) {
        ((Map)localObject2).put("[JS] url", paramString.c);
      }
      if (paramString.d != null) {
        ((Map)localObject2).put("[JS] userAgent", paramString.d);
      }
      if (paramString.i != null) {
        ((Map)localObject2).put("[JS] file", paramString.i);
      }
      if (paramString.j != 0L) {
        ((Map)localObject2).put("[JS] lineNumber", Long.toString(paramString.j));
      }
      ((Map)localObject1).putAll((Map)localObject2);
      ((Map)localObject1).putAll(this.e);
      ((Map)localObject1).put("Java Stack", this.d);
      localObject2 = this.c;
    } while (paramString == null);
    InnerAPI.postH5CrashAsync((Thread)localObject2, paramString.f, paramString.g, paramString.h, (Map)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\h5\H5JavaScriptInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */