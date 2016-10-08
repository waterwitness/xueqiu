package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import java.io.IOException;

public class GifTextView
  extends TextView
{
  private boolean a;
  
  public GifTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Drawable localDrawable1;
    Drawable localDrawable4;
    Drawable localDrawable2;
    Drawable localDrawable5;
    Object localObject;
    Drawable localDrawable3;
    Context localContext;
    if (paramAttributeSet != null)
    {
      localDrawable1 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableLeft", 0));
      localDrawable4 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableTop", 0));
      localDrawable2 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableRight", 0));
      localDrawable5 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableBottom", 0));
      localObject = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableStart", 0));
      localDrawable3 = a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "drawableEnd", 0));
      if (Build.VERSION.SDK_INT >= 17)
      {
        if (getLayoutDirection() != 0) {
          break label212;
        }
        paramContext = (Context)localObject;
        if (localObject == null) {
          paramContext = localDrawable1;
        }
        localObject = localDrawable3;
        localContext = paramContext;
        if (localDrawable3 == null)
        {
          localObject = localDrawable2;
          localContext = paramContext;
        }
      }
    }
    for (;;)
    {
      setCompoundDrawablesRelativeWithIntrinsicBounds(localContext, localDrawable4, (Drawable)localObject, localDrawable5);
      setCompoundDrawablesWithIntrinsicBounds(localDrawable1, localDrawable4, localDrawable2, localDrawable5);
      setBackgroundInternal(a(paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "background", 0)));
      this.a = g.a(this, paramAttributeSet, paramInt);
      return;
      label212:
      paramContext = (Context)localObject;
      if (localObject == null) {
        paramContext = localDrawable2;
      }
      localObject = localDrawable3;
      localContext = paramContext;
      if (localDrawable3 == null)
      {
        localObject = localDrawable1;
        localContext = paramContext;
      }
    }
  }
  
  private Drawable a(int paramInt)
  {
    if (paramInt == 0) {
      return null;
    }
    Resources localResources = getResources();
    if ((!isInEditMode()) && ("drawable".equals(localResources.getResourceTypeName(paramInt)))) {}
    try
    {
      b localb = new b(localResources, paramInt);
      return localb;
    }
    catch (IOException localIOException)
    {
      return localResources.getDrawable(paramInt);
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      for (;;) {}
    }
  }
  
  private static void a(Drawable[] paramArrayOfDrawable)
  {
    int j = paramArrayOfDrawable.length;
    int i = 0;
    while (i < j)
    {
      Drawable localDrawable = paramArrayOfDrawable[i];
      if (localDrawable != null) {
        localDrawable.setVisible(false, false);
      }
      i += 1;
    }
  }
  
  @TargetApi(16)
  private void setBackgroundInternal(Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      setBackground(paramDrawable);
      return;
    }
    setBackgroundDrawable(paramDrawable);
  }
  
  @TargetApi(17)
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a(getCompoundDrawables());
    if (Build.VERSION.SDK_INT >= 17) {
      a(getCompoundDrawablesRelative());
    }
  }
  
  @TargetApi(17)
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (f)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    Drawable[] arrayOfDrawable = getCompoundDrawables();
    paramParcelable.a(arrayOfDrawable[0], 0);
    paramParcelable.a(arrayOfDrawable[1], 1);
    paramParcelable.a(arrayOfDrawable[2], 2);
    paramParcelable.a(arrayOfDrawable[3], 3);
    if (Build.VERSION.SDK_INT >= 17)
    {
      arrayOfDrawable = getCompoundDrawablesRelative();
      paramParcelable.a(arrayOfDrawable[0], 4);
      paramParcelable.a(arrayOfDrawable[2], 5);
    }
    paramParcelable.a(getBackground(), 6);
  }
  
  @TargetApi(17)
  public Parcelable onSaveInstanceState()
  {
    Drawable[] arrayOfDrawable1 = new Drawable[7];
    if (this.a)
    {
      Drawable[] arrayOfDrawable2 = getCompoundDrawables();
      System.arraycopy(arrayOfDrawable2, 0, arrayOfDrawable1, 0, arrayOfDrawable2.length);
      if (Build.VERSION.SDK_INT >= 17)
      {
        arrayOfDrawable2 = getCompoundDrawablesRelative();
        arrayOfDrawable1[4] = arrayOfDrawable2[0];
        arrayOfDrawable1[5] = arrayOfDrawable2[2];
      }
      arrayOfDrawable1[6] = getBackground();
    }
    return new f(super.onSaveInstanceState(), arrayOfDrawable1);
  }
  
  public void setBackgroundResource(int paramInt)
  {
    setBackgroundInternal(a(paramInt));
  }
  
  @TargetApi(17)
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setCompoundDrawablesRelativeWithIntrinsicBounds(a(paramInt1), a(paramInt2), a(paramInt3), a(paramInt4));
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setCompoundDrawablesWithIntrinsicBounds(a(paramInt1), a(paramInt2), a(paramInt3), a(paramInt4));
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\GifTextView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */