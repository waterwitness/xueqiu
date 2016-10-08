package org.apache.cordova;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParserException;

public final class c
{
  private static String c;
  private static c d = null;
  private ac a = new ac();
  private String b;
  
  private c() {}
  
  private c(Activity paramActivity)
  {
    if (paramActivity == null) {
      o.b("CordovaLog", "There is no activity. Is this on the lock screen?");
    }
    for (;;)
    {
      return;
      int j = paramActivity.getResources().getIdentifier("config", "xml", paramActivity.getClass().getPackage().getName());
      int i = j;
      if (j == 0)
      {
        j = paramActivity.getResources().getIdentifier("config", "xml", paramActivity.getPackageName());
        i = j;
        if (j == 0)
        {
          o.b("CordovaLog", "config.xml missing. Ignoring...");
          return;
        }
      }
      this.a.a("file:///*");
      this.a.a("content:///*");
      this.a.a("data:*");
      XmlResourceParser localXmlResourceParser = paramActivity.getResources().getXml(i);
      i = -1;
      while (i != 1)
      {
        Object localObject1;
        String str;
        Object localObject2;
        if (i == 2)
        {
          localObject1 = localXmlResourceParser.getName();
          if (!((String)localObject1).equals("access")) {
            break label228;
          }
          localObject1 = localXmlResourceParser.getAttributeValue(null, "origin");
          str = localXmlResourceParser.getAttributeValue(null, "subdomains");
          if (localObject1 != null)
          {
            localObject2 = this.a;
            if (str != null) {
              str.compareToIgnoreCase("true");
            }
            ((ac)localObject2).a((String)localObject1);
          }
        }
        try
        {
          for (;;)
          {
            j = localXmlResourceParser.next();
            i = j;
            break;
            label228:
            if (((String)localObject1).equals("log"))
            {
              localObject1 = localXmlResourceParser.getAttributeValue(null, "level");
              Log.d("Config", "The <log> tag is deprecated. Use <preference name=\"loglevel\" value=\"" + (String)localObject1 + "\"/> instead.");
              if (localObject1 != null) {
                o.a((String)localObject1);
              }
            }
            else if (((String)localObject1).equals("preference"))
            {
              localObject2 = localXmlResourceParser.getAttributeValue(null, "name").toLowerCase(Locale.getDefault());
              if (((String)localObject2).equalsIgnoreCase("LogLevel"))
              {
                o.a(localXmlResourceParser.getAttributeValue(null, "value"));
              }
              else if (((String)localObject2).equalsIgnoreCase("SplashScreen"))
              {
                str = localXmlResourceParser.getAttributeValue(null, "value");
                localObject1 = str;
                if (str == null) {
                  localObject1 = "splash";
                }
                j = paramActivity.getResources().getIdentifier((String)localObject1, "drawable", paramActivity.getClass().getPackage().getName());
                paramActivity.getIntent().putExtra((String)localObject2, j);
              }
              else if (((String)localObject2).equalsIgnoreCase("BackgroundColor"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", -16777216);
                paramActivity.getIntent().putExtra((String)localObject2, j);
              }
              else if (((String)localObject2).equalsIgnoreCase("LoadUrlTimeoutValue"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", 20000);
                paramActivity.getIntent().putExtra((String)localObject2, j);
              }
              else if (((String)localObject2).equalsIgnoreCase("SplashScreenDelay"))
              {
                j = localXmlResourceParser.getAttributeIntValue(null, "value", 3000);
                paramActivity.getIntent().putExtra((String)localObject2, j);
              }
              else
              {
                boolean bool;
                if (((String)localObject2).equalsIgnoreCase("KeepRunning"))
                {
                  bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                  paramActivity.getIntent().putExtra((String)localObject2, bool);
                }
                else if (((String)localObject2).equalsIgnoreCase("InAppBrowserStorageEnabled"))
                {
                  bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                  paramActivity.getIntent().putExtra((String)localObject2, bool);
                }
                else if (((String)localObject2).equalsIgnoreCase("DisallowOverscroll"))
                {
                  bool = localXmlResourceParser.getAttributeValue(null, "value").equals("true");
                  paramActivity.getIntent().putExtra((String)localObject2, bool);
                }
                else if (((String)localObject2).equalsIgnoreCase("errorurl"))
                {
                  c = localXmlResourceParser.getAttributeValue(null, "value");
                }
                else
                {
                  localObject1 = localXmlResourceParser.getAttributeValue(null, "value");
                  paramActivity.getIntent().putExtra((String)localObject2, (String)localObject1);
                }
              }
            }
            else if (((String)localObject1).equals("content"))
            {
              str = localXmlResourceParser.getAttributeValue(null, "src");
              o.b("CordovaLog", "Found start page location: %s", new Object[] { str });
              if (str != null) {
                if (Pattern.compile("^[a-z-]+://").matcher(str).find())
                {
                  this.b = str;
                }
                else
                {
                  localObject1 = str;
                  if (str.charAt(0) == '/') {
                    localObject1 = str.substring(1);
                  }
                  this.b = ("file:///android_asset/www/" + (String)localObject1);
                }
              }
            }
          }
        }
        catch (XmlPullParserException localXmlPullParserException)
        {
          localXmlPullParserException.printStackTrace();
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
      }
    }
  }
  
  public static void a(Activity paramActivity)
  {
    d = new c(paramActivity);
  }
  
  public static void a(String paramString)
  {
    if (d == null)
    {
      Log.e("Config", "Config was not initialised. Did you forget to Config.init(this)?");
      return;
    }
    d.a.a(paramString);
  }
  
  public static boolean b(String paramString)
  {
    if (d == null)
    {
      Log.e("Config", "Config was not initialised. Did you forget to Config.init(this)?");
      return false;
    }
    Object localObject = d.a;
    if (((ac)localObject).a == null) {
      return true;
    }
    paramString = Uri.parse(paramString);
    localObject = ((ac)localObject).a.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (((ad)((Iterator)localObject).next()).a(paramString)) {
        return true;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */