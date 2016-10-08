package com.b.a.a;

import android.content.Context;
import android.os.Environment;
import java.io.File;

public final class i
{
  public static String a(Context paramContext)
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    if (localFile == null) {
      return paramContext.getFilesDir().getAbsolutePath();
    }
    return localFile.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */