package com.xiaomi.push.service;

import com.xiaomi.e.c.a;
import com.xiaomi.e.d.b;
import com.xiaomi.e.e.g;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

public final class ah
  implements b
{
  public static a a(XmlPullParser paramXmlPullParser)
  {
    for (int i = paramXmlPullParser.getEventType(); (i != 1) && (i != 2); i = paramXmlPullParser.next()) {}
    if (i == 2) {
      return b(paramXmlPullParser);
    }
    return null;
  }
  
  private static a b(XmlPullParser paramXmlPullParser)
  {
    Object localObject1 = null;
    if (paramXmlPullParser.getEventType() != 2) {
      return null;
    }
    String str2 = paramXmlPullParser.getName();
    String str3 = paramXmlPullParser.getNamespace();
    String[] arrayOfString1;
    String[] arrayOfString2;
    int i;
    if (paramXmlPullParser.getAttributeCount() > 0)
    {
      arrayOfString1 = new String[paramXmlPullParser.getAttributeCount()];
      arrayOfString2 = new String[paramXmlPullParser.getAttributeCount()];
      i = 0;
      for (;;)
      {
        if (i < paramXmlPullParser.getAttributeCount())
        {
          arrayOfString1[i] = paramXmlPullParser.getAttributeName(i);
          arrayOfString2[i] = g.b(paramXmlPullParser.getAttributeValue(i));
          i += 1;
          continue;
          if (i == 2)
          {
            Object localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            a locala = b(paramXmlPullParser);
            localObject1 = localObject2;
            if (locala != null)
            {
              ((List)localObject2).add(locala);
              localObject1 = localObject2;
            }
          }
        }
      }
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      if (i != 3)
      {
        if (i != 4) {
          break;
        }
        str1 = paramXmlPullParser.getText().trim();
        continue;
      }
      return new a(str2, str3, arrayOfString1, arrayOfString2, str1, (List)localObject1);
      String str1 = null;
      continue;
      str1 = null;
      arrayOfString2 = null;
      arrayOfString1 = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */