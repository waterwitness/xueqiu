package com.d.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.d.a.b.a.i;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public abstract class d
  implements a
{
  protected Reference<View> a;
  protected boolean b;
  
  public d(View paramView)
  {
    this(paramView, (byte)0);
  }
  
  private d(View paramView, byte paramByte)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("view must not be null");
    }
    this.a = new WeakReference(paramView);
    this.b = true;
  }
  
  public int a()
  {
    View localView = (View)this.a.get();
    ViewGroup.LayoutParams localLayoutParams;
    if (localView != null)
    {
      localLayoutParams = localView.getLayoutParams();
      if ((!this.b) || (localLayoutParams == null) || (localLayoutParams.width == -2)) {
        break label70;
      }
    }
    label70:
    for (int i = localView.getWidth();; i = 0)
    {
      int j = i;
      if (i <= 0)
      {
        j = i;
        if (localLayoutParams != null) {
          j = localLayoutParams.width;
        }
      }
      return j;
      return 0;
    }
  }
  
  protected abstract void a(Bitmap paramBitmap, View paramView);
  
  protected abstract void a(Drawable paramDrawable, View paramView);
  
  public final boolean a(Bitmap paramBitmap)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      View localView = (View)this.a.get();
      if (localView != null)
      {
        a(paramBitmap, localView);
        return true;
      }
    }
    else
    {
      com.d.a.c.d.c("Can't set a bitmap into view. You should call ImageLoader on UI thread for it.", new Object[0]);
    }
    return false;
  }
  
  public final boolean a(Drawable paramDrawable)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      View localView = (View)this.a.get();
      if (localView != null)
      {
        a(paramDrawable, localView);
        return true;
      }
    }
    else
    {
      com.d.a.c.d.c("Can't set a drawable into view. You should call ImageLoader on UI thread for it.", new Object[0]);
    }
    return false;
  }
  
  public int b()
  {
    View localView = (View)this.a.get();
    ViewGroup.LayoutParams localLayoutParams;
    if (localView != null)
    {
      localLayoutParams = localView.getLayoutParams();
      if ((!this.b) || (localLayoutParams == null) || (localLayoutParams.height == -2)) {
        break label70;
      }
    }
    label70:
    for (int i = localView.getHeight();; i = 0)
    {
      int j = i;
      if (i <= 0)
      {
        j = i;
        if (localLayoutParams != null) {
          j = localLayoutParams.height;
        }
      }
      return j;
      return 0;
    }
  }
  
  public int c()
  {
    return i.b;
  }
  
  public View d()
  {
    return (View)this.a.get();
  }
  
  public final boolean e()
  {
    return this.a.get() == null;
  }
  
  public final int f()
  {
    View localView = (View)this.a.get();
    if (localView == null) {
      return super.hashCode();
    }
    return localView.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\e\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */