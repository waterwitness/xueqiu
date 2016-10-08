package com.b.a.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import java.io.File;

public final class b
{
  public static final String a = Environment.getExternalStorageDirectory().toString() + "/yunva_sdk/jar";
  public static String b = "yunva_dynamic_sdk.jar";
  
  public static Bitmap a(String paramString)
  {
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString);
    paramString = localBitmap;
    if (localBitmap == null) {
      paramString = null;
    }
    return paramString;
  }
  
  public static void a(Bitmap... paramVarArgs)
  {
    int i = 0;
    for (;;)
    {
      if (i > 0) {
        return;
      }
      if ((paramVarArgs[0] != null) && (!paramVarArgs[0].isRecycled()))
      {
        paramVarArgs[0].recycle();
        paramVarArgs[0] = null;
      }
      i += 1;
    }
  }
  
  public static void b(String paramString)
  {
    int i;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      paramString = new File(paramString).listFiles();
      i = 0;
    }
    for (;;)
    {
      if (i >= paramString.length) {
        return;
      }
      paramString[i].delete();
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\b\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */