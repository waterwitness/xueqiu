package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.io.IOException;

final class g
{
  private static int a(ImageView paramImageView, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "src";; str = "background")
    {
      int i = paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", str, 0);
      if (i <= 0) {
        break;
      }
      paramAttributeSet = paramImageView.getResources().getResourceTypeName(i);
      if (((!"drawable".equals(paramAttributeSet)) && (!"raw".equals(paramAttributeSet))) || (a(paramImageView, paramBoolean, i))) {
        break;
      }
      return i;
    }
    return 0;
  }
  
  static h a(ImageView paramImageView, AttributeSet paramAttributeSet, int paramInt)
  {
    if ((paramAttributeSet != null) && (!paramImageView.isInEditMode())) {
      return new h(a(paramImageView, paramAttributeSet, true), a(paramImageView, paramAttributeSet, false), a(paramImageView, paramAttributeSet, paramInt));
    }
    return new h(0, 0, false);
  }
  
  static boolean a(View paramView, AttributeSet paramAttributeSet, int paramInt)
  {
    paramView = paramView.getContext().obtainStyledAttributes(paramAttributeSet, n.GifView, paramInt, 0);
    boolean bool = paramView.getBoolean(n.GifView_freezesAnimation, false);
    paramView.recycle();
    return bool;
  }
  
  static boolean a(ImageView paramImageView, Uri paramUri)
  {
    if (paramUri != null) {
      try
      {
        paramImageView.setImageDrawable(new b(paramImageView.getContext().getContentResolver(), paramUri));
        return true;
      }
      catch (IOException paramImageView) {}
    }
    return false;
  }
  
  @TargetApi(16)
  static boolean a(ImageView paramImageView, boolean paramBoolean, int paramInt)
  {
    Object localObject = paramImageView.getResources();
    if (localObject != null) {
      try
      {
        try
        {
          localObject = new b((Resources)localObject, paramInt);
          if (paramBoolean) {
            paramImageView.setImageDrawable((Drawable)localObject);
          } else if (Build.VERSION.SDK_INT >= 16) {
            paramImageView.setBackground((Drawable)localObject);
          } else {
            paramImageView.setBackgroundDrawable((Drawable)localObject);
          }
        }
        catch (Resources.NotFoundException paramImageView)
        {
          break label62;
        }
        return true;
      }
      catch (IOException paramImageView) {}
    }
    label62:
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */