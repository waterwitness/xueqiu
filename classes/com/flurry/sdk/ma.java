package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.regex.Pattern;

public class ma
{
  private static final Pattern a = Pattern.compile("/");
  
  public static String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    Object localObject;
    String str;
    int i;
    do
    {
      do
      {
        do
        {
          return paramString;
          localObject = i(paramString);
        } while (localObject == null);
        localObject = ((URI)localObject).getScheme();
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          return "http" + paramString;
        }
        str = ((String)localObject).toLowerCase();
      } while ((localObject == null) || (((String)localObject).equals(str)));
      i = paramString.indexOf((String)localObject);
    } while (i < 0);
    return str + paramString.substring(((String)localObject).length() + i);
  }
  
  public static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {}
    Object localObject2;
    Object localObject3;
    String[] arrayOfString;
    int m;
    int n;
    int i;
    StringBuilder localStringBuilder;
    boolean bool1;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return paramString1;
                localObject1 = i(paramString1);
              } while (localObject1 == null);
              localObject2 = ((URI)localObject1).normalize();
              paramString2 = i(paramString2);
            } while (paramString2 == null);
            localObject1 = paramString2.normalize();
          } while ((((URI)localObject2).isOpaque()) || (((URI)localObject1).isOpaque()));
          paramString2 = ((URI)localObject2).getScheme();
          localObject3 = ((URI)localObject1).getScheme();
        } while (((localObject3 == null) && (paramString2 != null)) || ((localObject3 != null) && (!((String)localObject3).equals(paramString2))));
        paramString2 = ((URI)localObject2).getAuthority();
        localObject3 = ((URI)localObject1).getAuthority();
      } while (((localObject3 == null) && (paramString2 != null)) || ((localObject3 != null) && (!((String)localObject3).equals(paramString2))));
      localObject3 = ((URI)localObject2).getPath();
      paramString2 = ((URI)localObject1).getPath();
      arrayOfString = a.split((CharSequence)localObject3, -1);
      paramString2 = a.split(paramString2, -1);
      m = arrayOfString.length;
      n = paramString2.length;
      i = 0;
      while ((i < n) && (i < m) && (arrayOfString[i].equals(paramString2[i]))) {
        i += 1;
      }
      paramString2 = ((URI)localObject2).getQuery();
      localObject2 = ((URI)localObject2).getFragment();
      localObject3 = localObject2;
      localStringBuilder = new StringBuilder();
      if ((i != n) || (i != m)) {
        break label354;
      }
      String str = ((URI)localObject1).getQuery();
      localObject1 = ((URI)localObject1).getFragment();
      bool1 = TextUtils.equals(paramString2, str);
      boolean bool2 = TextUtils.equals((CharSequence)localObject3, (CharSequence)localObject1);
      if ((!bool1) || (!bool2)) {
        break;
      }
      localObject2 = null;
      localObject1 = null;
      paramString2 = a(null, null, localStringBuilder.toString(), (String)localObject1, (String)localObject2);
    } while (paramString2 == null);
    return paramString2.toString();
    if ((bool1) && (!TextUtils.isEmpty((CharSequence)localObject3))) {}
    for (Object localObject1 = null;; localObject1 = paramString2)
    {
      if ((TextUtils.isEmpty((CharSequence)localObject1)) && (TextUtils.isEmpty((CharSequence)localObject3))) {
        localStringBuilder.append(arrayOfString[(m - 1)]);
      }
      for (;;)
      {
        localObject1 = paramString2;
        break;
        label354:
        int j = i;
        int k;
        for (;;)
        {
          k = i;
          if (j >= n - 1) {
            break;
          }
          localStringBuilder.append("..");
          localStringBuilder.append("/");
          j += 1;
        }
        while (k < m - 1)
        {
          localStringBuilder.append(arrayOfString[k]);
          localStringBuilder.append("/");
          k += 1;
        }
        if (k < m) {
          localStringBuilder.append(arrayOfString[k]);
        }
        localObject1 = paramString2;
        localObject2 = localObject3;
        if (localStringBuilder.length() != 0) {
          break;
        }
        localStringBuilder.append(".");
        localStringBuilder.append("/");
        localObject1 = paramString2;
        localObject2 = localObject3;
        break;
        paramString2 = (String)localObject1;
      }
    }
  }
  
  private static URI a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    try
    {
      paramString1 = new URI(paramString1, paramString2, paramString3, paramString4, paramString5);
      return paramString1;
    }
    catch (URISyntaxException paramString1) {}
    return null;
  }
  
  public static String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    URI localURI;
    do
    {
      do
      {
        do
        {
          return paramString;
          localURI = i(paramString);
        } while (localURI == null);
        localURI = localURI.normalize();
      } while (localURI.isOpaque());
      localURI = a(localURI.getScheme(), localURI.getAuthority(), "/", null, null);
    } while (localURI == null);
    return localURI.toString();
  }
  
  public static String b(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (!TextUtils.isEmpty(paramString1)) {
      str = paramString1;
    }
    try
    {
      if (!new URI(paramString1).isAbsolute())
      {
        str = paramString1;
        if (!TextUtils.isEmpty(paramString2))
        {
          paramString2 = new URI(paramString2);
          str = paramString2.getScheme() + "://" + paramString2.getHost() + paramString1;
        }
      }
      return str;
    }
    catch (Exception paramString2) {}
    return paramString1;
  }
  
  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    URI localURI;
    do
    {
      do
      {
        do
        {
          return paramString;
          localURI = i(paramString);
        } while (localURI == null);
        localURI = localURI.normalize();
      } while (localURI.isOpaque());
      localURI = localURI.resolve("./");
    } while (localURI == null);
    return localURI.toString();
  }
  
  public static boolean d(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getScheme() != null)
      {
        bool1 = bool2;
        if (paramString.getScheme().equals("market")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean e(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getScheme() != null) {
        if (!paramString.getScheme().equals("http"))
        {
          bool1 = bool2;
          if (!paramString.getScheme().equals("https")) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean f(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = Uri.parse(paramString);
      bool1 = bool2;
      if (paramString.getHost() != null)
      {
        bool1 = bool2;
        if (paramString.getHost().equals("play.google.com"))
        {
          bool1 = bool2;
          if (paramString.getScheme() != null)
          {
            bool1 = bool2;
            if (paramString.getScheme().startsWith("http")) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public static boolean g(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(paramString));
      bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (paramString.startsWith("video/")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean h(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return false;
      paramString = i(paramString);
    } while ((paramString == null) || ((paramString.getScheme() != null) && (!"http".equalsIgnoreCase(paramString.getScheme())) && (!"https".equalsIgnoreCase(paramString.getScheme()))));
    return true;
  }
  
  private static URI i(String paramString)
  {
    try
    {
      paramString = new URI(paramString);
      return paramString;
    }
    catch (URISyntaxException paramString) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */