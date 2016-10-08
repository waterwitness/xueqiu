package com.b.a.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

public final class h
{
  public static String a(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    Object localObject = null;
    try
    {
      paramUri = paramContext.getContentResolver().query(paramUri, new String[] { "_data" }, paramString, paramArrayOfString, null);
      if (paramUri == null) {
        break label80;
      }
      if (paramUri == null) {
        break label78;
      }
    }
    finally
    {
      try
      {
        if (!paramUri.moveToFirst()) {
          break label80;
        }
        paramContext = paramUri.getString(paramUri.getColumnIndexOrThrow("_data"));
        if (paramUri != null) {
          paramUri.close();
        }
        return paramContext;
      }
      finally
      {
        for (;;) {}
      }
      paramContext = finally;
      paramUri = (Uri)localObject;
    }
    paramUri.close();
    label78:
    throw paramContext;
    label80:
    if (paramUri != null) {
      paramUri.close();
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */