package com.d.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.d.a.b.a.i;
import java.lang.ref.Reference;
import java.lang.reflect.Field;

public final class b
  extends d
{
  public b(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  private static int a(Object paramObject, String paramString)
  {
    try
    {
      paramString = ImageView.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      int i = ((Integer)paramString.get(paramObject)).intValue();
      if ((i > 0) && (i < Integer.MAX_VALUE)) {
        return i;
      }
    }
    catch (Exception paramObject)
    {
      com.d.a.c.d.a((Throwable)paramObject);
    }
    return 0;
  }
  
  public final int a()
  {
    int i = super.a();
    if (i <= 0)
    {
      ImageView localImageView = (ImageView)this.a.get();
      if (localImageView != null) {
        return a(localImageView, "mMaxWidth");
      }
    }
    return i;
  }
  
  protected final void a(Bitmap paramBitmap, View paramView)
  {
    ((ImageView)paramView).setImageBitmap(paramBitmap);
  }
  
  protected final void a(Drawable paramDrawable, View paramView)
  {
    ((ImageView)paramView).setImageDrawable(paramDrawable);
    if ((paramDrawable instanceof AnimationDrawable)) {
      ((AnimationDrawable)paramDrawable).start();
    }
  }
  
  public final int b()
  {
    int i = super.b();
    if (i <= 0)
    {
      ImageView localImageView = (ImageView)this.a.get();
      if (localImageView != null) {
        return a(localImageView, "mMaxHeight");
      }
    }
    return i;
  }
  
  public final int c()
  {
    ImageView localImageView = (ImageView)this.a.get();
    if (localImageView != null) {
      return i.a(localImageView);
    }
    return super.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */