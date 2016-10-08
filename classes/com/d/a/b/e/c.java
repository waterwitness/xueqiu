package com.d.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.d.a.b.a.f;

public final class c
  implements a
{
  protected final String a;
  protected final f b;
  protected final int c;
  
  public c(String paramString, f paramf, int paramInt)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("imageSize must not be null");
    }
    if (paramInt == 0) {
      throw new IllegalArgumentException("scaleType must not be null");
    }
    this.a = paramString;
    this.b = paramf;
    this.c = paramInt;
  }
  
  public final int a()
  {
    return this.b.a;
  }
  
  public final boolean a(Bitmap paramBitmap)
  {
    return true;
  }
  
  public final boolean a(Drawable paramDrawable)
  {
    return true;
  }
  
  public final int b()
  {
    return this.b.b;
  }
  
  public final int c()
  {
    return this.c;
  }
  
  public final View d()
  {
    return null;
  }
  
  public final boolean e()
  {
    return false;
  }
  
  public final int f()
  {
    if (TextUtils.isEmpty(this.a)) {
      return super.hashCode();
    }
    return this.a.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\e\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */