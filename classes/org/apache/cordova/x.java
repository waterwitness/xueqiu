package org.apache.cordova;

import android.app.Activity;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Debug;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.xmlpull.v1.XmlPullParserException;

public final class x
{
  private static String d = "PluginManager";
  private static final int e;
  final HashMap<String, w> a = new HashMap();
  final f b;
  protected HashMap<String, List<String>> c = new HashMap();
  private final CordovaWebView f;
  private boolean g;
  private AtomicInteger h;
  
  static
  {
    if (Debug.isDebuggerConnected()) {}
    for (int i = 60;; i = 16)
    {
      e = i;
      return;
    }
  }
  
  public x(CordovaWebView paramCordovaWebView, f paramf)
  {
    this.b = paramf;
    this.f = paramCordovaWebView;
    this.g = true;
    this.h = new AtomicInteger(0);
  }
  
  private void a(w paramw)
  {
    this.a.put(paramw.a, paramw);
  }
  
  private g b(String paramString)
  {
    paramString = (w)this.a.get(paramString);
    if (paramString == null) {
      return null;
    }
    g localg = paramString.c;
    if (localg == null) {
      return paramString.a(this.f, this.b);
    }
    return localg;
  }
  
  private void b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    g localg = b(paramString1);
    if (localg == null)
    {
      Log.d(d, "exec() call to unknown plugin: " + paramString1);
      paramString1 = new z(aa.c);
      this.f.a(paramString1, paramString3);
    }
    for (;;)
    {
      return;
      paramString3 = new b(paramString3, this.f);
      try
      {
        long l = System.currentTimeMillis();
        boolean bool = localg.a(paramString2, new JSONArray(paramString4), paramString3);
        l = System.currentTimeMillis() - l;
        if (l > e) {
          Log.w(d, "THREAD WARNING: exec() call to " + paramString1 + "." + paramString2 + " blocked the main thread for " + l + "ms. Plugin should use CordovaInterface.getThreadPool().");
        }
        if (!bool)
        {
          paramString3.a(new z(aa.h));
          return;
        }
      }
      catch (JSONException paramString1)
      {
        paramString3.a(new z(aa.i));
        return;
      }
      catch (Exception paramString1)
      {
        Log.e(d, "Uncaught exception from plugin", paramString1);
        paramString1 = paramString1.getMessage();
        paramString3.a(new z(aa.j, paramString1));
      }
    }
  }
  
  private void d()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext()) {
      ((w)localIterator.next()).c = null;
    }
  }
  
  private void e()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      if (localw.d) {
        localw.a(this.f, this.b);
      }
    }
  }
  
  private void f()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext()) {
      if (((w)localIterator.next()).c != null) {
        g.a();
      }
    }
  }
  
  public final void a()
  {
    o.a(d, "init()");
    int j;
    int i;
    label146:
    XmlResourceParser localXmlResourceParser;
    String str1;
    String str2;
    boolean bool;
    label208:
    String str3;
    if (this.g)
    {
      j = this.b.getActivity().getResources().getIdentifier("config", "xml", this.b.getActivity().getClass().getPackage().getName());
      i = j;
      if (j == 0)
      {
        j = this.b.getActivity().getResources().getIdentifier("config", "xml", this.b.getActivity().getPackageName());
        i = j;
        if (j == 0)
        {
          o.d(d, "=====================================================================================");
          o.d(d, "ERROR: config.xml is missing.  Add res/xml/config.xml to your project.");
          o.d(d, "https://git-wip-us.apache.org/repos/asf?p=cordova-android.git;a=blob;f=framework/res/xml/config.xml");
          o.d(d, "=====================================================================================");
          this.g = false;
          a(new w("PluginManager", new y(this, (byte)0)));
          e();
          return;
        }
      }
      localXmlResourceParser = this.b.getActivity().getResources().getXml(i);
      str1 = "";
      str2 = "";
      j = -1;
      bool = false;
      i = 0;
      if (j != 1) {
        if (j == 2)
        {
          str3 = localXmlResourceParser.getName();
          if (str3.equals("url-filter"))
          {
            Log.w(d, "Plugin " + str2 + " is using deprecated tag <url-filter>");
            if (this.c.get(str2) == null) {
              this.c.put(str2, new ArrayList(2));
            }
            ((List)this.c.get(str2)).add(localXmlResourceParser.getAttributeValue(null, "value"));
          }
        }
      }
    }
    label588:
    label591:
    for (;;)
    {
      try
      {
        int k = localXmlResourceParser.next();
        j = k;
        break label208;
        if (str3.equals("feature"))
        {
          str2 = localXmlResourceParser.getAttributeValue(null, "name");
          i = 1;
          continue;
        }
        if ((i == 0) || (!str3.equals("param"))) {
          break label591;
        }
        str3 = localXmlResourceParser.getAttributeValue(null, "name");
        if (str3.equals("service"))
        {
          str2 = localXmlResourceParser.getAttributeValue(null, "value");
          continue;
        }
        if ((str3.equals("package")) || (str3.equals("android-package")))
        {
          str1 = localXmlResourceParser.getAttributeValue(null, "value");
          continue;
        }
        if (!str3.equals("onload")) {
          break label591;
        }
        bool = "true".equals(localXmlResourceParser.getAttributeValue(null, "value"));
        continue;
        if (j != 3) {
          break label588;
        }
        str3 = localXmlResourceParser.getName();
        if ((!str3.equals("feature")) && (!str3.equals("plugin"))) {
          break label588;
        }
        a(new w(str2, str1, bool));
        i = 0;
        str1 = "";
        str2 = "";
        continue;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        localXmlPullParserException.printStackTrace();
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
      break label208;
      break;
      f();
      b();
      d();
      break label146;
    }
  }
  
  public final void a(final String paramString1, final String paramString2, final String paramString3, final String paramString4)
  {
    if (this.h.get() > 0)
    {
      this.h.getAndIncrement();
      this.b.getActivity().runOnUiThread(new Runnable()
      {
        public final void run()
        {
          x.a(x.this, paramString1, paramString2, paramString3, paramString4);
          x.a(x.this).getAndDecrement();
        }
      });
      return;
    }
    b(paramString1, paramString2, paramString3, paramString4);
  }
  
  public final boolean a(String paramString)
  {
    Iterator localIterator = this.a.values().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label116;
      }
      w localw = (w)localIterator.next();
      Object localObject = (List)this.c.get(localw.a);
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        if (!((Iterator)localObject).hasNext()) {
          continue;
        }
        if (!paramString.startsWith((String)((Iterator)localObject).next())) {
          break;
        }
        b(localw.a);
        return g.d();
      }
      if (localw.c != null) {
        g.d();
      }
    }
    label116:
    return false;
  }
  
  public final void b()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext()) {
      if (((w)localIterator.next()).c != null) {
        g.b();
      }
    }
  }
  
  public final void c()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext()) {
      if (((w)localIterator.next()).c != null) {
        g.f();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */