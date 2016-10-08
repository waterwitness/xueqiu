package com.d.a.b.d;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.provider.MediaStore.Video.Thumbnails;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class a
  implements b
{
  protected final Context a;
  protected final int b;
  protected final int c;
  
  public a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = 5000;
    this.c = 20000;
  }
  
  private InputStream c(String paramString, Object paramObject)
  {
    int i = 0;
    paramString = b(paramString, paramObject);
    while ((paramString.getResponseCode() / 100 == 3) && (i < 5))
    {
      paramString = b(paramString.getHeaderField("Location"), paramObject);
      i += 1;
    }
    try
    {
      paramObject = paramString.getInputStream();
      return new com.d.a.b.a.a(new BufferedInputStream((InputStream)paramObject, 32768), paramString.getContentLength());
    }
    catch (IOException paramObject)
    {
      paramString = paramString.getErrorStream();
      byte[] arrayOfByte = new byte[32768];
      try
      {
        do
        {
          i = paramString.read(arrayOfByte, 0, 32768);
        } while (i != -1);
        com.d.a.c.b.a(paramString);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException = localIOException;
          com.d.a.c.b.a(paramString);
        }
      }
      finally
      {
        paramObject = finally;
        com.d.a.c.b.a(paramString);
        throw ((Throwable)paramObject);
      }
      throw ((Throwable)paramObject);
    }
  }
  
  public final InputStream a(String paramString, Object paramObject)
  {
    switch (1.a[c.a(paramString).ordinal()])
    {
    default: 
      throw new UnsupportedOperationException(String.format("UIL doesn't support scheme(protocol) by default [%s]. You should implement this support yourself (BaseImageDownloader.getStreamFromOtherSource(...))", new Object[] { paramString }));
    case 1: 
    case 2: 
      return c(paramString, paramObject);
    case 3: 
      paramString = c.c.c(paramString);
      return new com.d.a.b.a.a(new BufferedInputStream(new FileInputStream(paramString), 32768), (int)new File(paramString).length());
    case 4: 
      paramObject = this.a.getContentResolver();
      Uri localUri = Uri.parse(paramString);
      String str = this.a.getContentResolver().getType(localUri);
      if (str == null) {}
      for (boolean bool = false; bool; bool = str.startsWith("video/"))
      {
        paramString = MediaStore.Video.Thumbnails.getThumbnail((ContentResolver)paramObject, Long.valueOf(localUri.getLastPathSegment()).longValue(), 1, null);
        if (paramString == null) {
          break label238;
        }
        paramObject = new ByteArrayOutputStream();
        paramString.compress(Bitmap.CompressFormat.PNG, 0, (OutputStream)paramObject);
        return new ByteArrayInputStream(((ByteArrayOutputStream)paramObject).toByteArray());
      }
      if (paramString.startsWith("content://com.android.contacts/")) {
        return ContactsContract.Contacts.openContactPhotoInputStream((ContentResolver)paramObject, localUri);
      }
      return ((ContentResolver)paramObject).openInputStream(localUri);
    case 5: 
      label238:
      paramString = c.e.c(paramString);
      return this.a.getAssets().open(paramString);
    }
    int i = Integer.parseInt(c.f.c(paramString));
    return this.a.getResources().openRawResource(i);
  }
  
  public HttpURLConnection b(String paramString, Object paramObject)
  {
    paramString = (HttpURLConnection)new URL(Uri.encode(paramString, "@#&=*+-_.,:!?()/~'%")).openConnection();
    paramString.setConnectTimeout(this.b);
    paramString.setReadTimeout(this.c);
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */