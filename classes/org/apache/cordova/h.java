package org.apache.cordova;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Base64;
import android.webkit.MimeTypeMap;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.channels.FileChannel;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import org.apache.http.util.EncodingUtils;

public final class h
{
  static Thread a;
  private static final String[] b = { "_data" };
  private final AssetManager c;
  private final ContentResolver d;
  private final x e;
  private boolean f = true;
  
  public h(Context paramContext, x paramx)
  {
    this.d = paramContext.getContentResolver();
    this.c = paramContext.getAssets();
    this.e = paramx;
  }
  
  public static int a(Uri paramUri)
  {
    e(paramUri);
    String str = paramUri.getScheme();
    if ("content".equals(str)) {
      return 2;
    }
    if ("android.resource".equals(str)) {
      return 3;
    }
    if ("file".equals(str))
    {
      if (paramUri.getPath().startsWith("/android_asset/")) {
        return 1;
      }
      return 0;
    }
    if ("data".equals(str)) {
      return 4;
    }
    if ("http".equals(str)) {
      return 5;
    }
    if ("https".equals(str)) {
      return 6;
    }
    return -1;
  }
  
  private static String a(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    String str = paramString;
    if (i != -1) {
      str = paramString.substring(i + 1);
    }
    paramString = str.toLowerCase(Locale.getDefault());
    if (paramString.equals("3ga")) {
      return "audio/3gpp";
    }
    if (paramString.equals("js")) {
      return "text/javascript";
    }
    return MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramString);
  }
  
  private static i d(Uri paramUri)
  {
    Object localObject = paramUri.getSchemeSpecificPart();
    int k = ((String)localObject).indexOf(',');
    if (k == -1) {
      return null;
    }
    String[] arrayOfString = ((String)localObject).substring(0, k).split(";");
    if (arrayOfString.length > 0) {}
    for (String str = arrayOfString[0];; str = null)
    {
      int i = 1;
      int j = 0;
      while (i < arrayOfString.length)
      {
        if ("base64".equalsIgnoreCase(arrayOfString[i])) {
          j = 1;
        }
        i += 1;
      }
      localObject = ((String)localObject).substring(k + 1);
      if (j != 0) {}
      for (localObject = Base64.decode((String)localObject, 0);; localObject = EncodingUtils.getBytes((String)localObject, "UTF-8")) {
        return new i(paramUri, new ByteArrayInputStream((byte[])localObject), str, localObject.length, null);
      }
    }
  }
  
  private static void e(Uri paramUri)
  {
    if (!paramUri.isAbsolute()) {
      throw new IllegalArgumentException("Relative URIs are not supported.");
    }
  }
  
  public final Uri b(Uri paramUri)
  {
    e(paramUri);
    Iterator localIterator = this.e.a.values().iterator();
    while (localIterator.hasNext()) {
      if (((w)localIterator.next()).c != null) {
        g.e();
      }
    }
    return paramUri;
  }
  
  public final i c(Uri paramUri)
  {
    Object localObject1 = null;
    switch (a(paramUri))
    {
    default: 
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      do
      {
        throw new FileNotFoundException("URI not supported by CordovaResourceApi: " + paramUri);
        localObject1 = new FileInputStream(paramUri.getPath());
        return new i(paramUri, (InputStream)localObject1, a(paramUri.getPath()), ((FileInputStream)localObject1).getChannel().size(), null);
        String str = paramUri.getPath().substring(15);
        long l1 = -1L;
        try
        {
          localObject2 = this.c.openFd(str);
          localObject1 = localObject2;
          FileInputStream localFileInputStream = ((AssetFileDescriptor)localObject2).createInputStream();
          localObject1 = localObject2;
          long l2 = ((AssetFileDescriptor)localObject2).getLength();
          l1 = l2;
          localObject1 = localObject2;
          localObject2 = localFileInputStream;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          for (;;)
          {
            Object localObject2;
            localObject3 = this.c.open(str);
          }
        }
        return new i(paramUri, (InputStream)localObject2, a(str), l1, (AssetFileDescriptor)localObject1);
        localObject1 = this.d.getType(paramUri);
        localObject3 = this.d.openAssetFileDescriptor(paramUri, "r");
        return new i(paramUri, ((AssetFileDescriptor)localObject3).createInputStream(), (String)localObject1, ((AssetFileDescriptor)localObject3).getLength(), (AssetFileDescriptor)localObject3);
        localObject1 = d(paramUri);
      } while (localObject1 == null);
      return (i)localObject1;
    }
    localObject1 = (HttpURLConnection)new URL(paramUri.toString()).openConnection();
    ((HttpURLConnection)localObject1).setDoInput(true);
    Object localObject3 = ((HttpURLConnection)localObject1).getHeaderField("Content-Type");
    int i = ((HttpURLConnection)localObject1).getContentLength();
    return new i(paramUri, ((HttpURLConnection)localObject1).getInputStream(), (String)localObject3, i, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */