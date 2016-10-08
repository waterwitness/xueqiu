package com.xueqiu.android.common.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

final class ak
  extends AsyncTask<Void, Void, Void>
{
  private an b;
  private al c;
  private Dialog d = null;
  
  public ak(aj paramaj, an paraman, al paramal)
  {
    this.b = paraman;
    this.c = paramal;
  }
  
  @SuppressLint({"NewApi"})
  private Void a()
  {
    if ((this.b.e != null) && (this.b.e.length() > 0) && (this.b.f == null)) {}
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeStream((InputStream)new URL(this.b.e).getContent());
      this.b.f = localBitmap;
      if (this.b.f == null)
      {
        localBitmap = BitmapFactory.decodeResource(this.a.a.getResources(), 2130837614);
        this.b.f = localBitmap;
      }
      localBitmap = this.b.f;
      if (Build.VERSION.SDK_INT < 12)
      {
        i = localBitmap.getRowBytes() * localBitmap.getHeight();
        if (i >= 32768)
        {
          if (localBitmap.getWidth() <= localBitmap.getHeight()) {
            break label197;
          }
          f = 256.0F / localBitmap.getWidth();
          this.b.f = Bitmap.createScaledBitmap(localBitmap, (int)(localBitmap.getWidth() * f), (int)(f * localBitmap.getHeight()), false);
        }
        return null;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
        continue;
        int i = localIOException.getByteCount();
        continue;
        label197:
        float f = 256.0F / localIOException.getHeight();
      }
    }
  }
  
  protected final void onPreExecute()
  {
    if ((this.a.a == null) || (this.a.a.isFinishing())) {
      return;
    }
    if (this.d != null) {
      this.d.dismiss();
    }
    this.d = new ae(this.a.a);
    this.d.show();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */