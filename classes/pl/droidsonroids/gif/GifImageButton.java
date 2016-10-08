package pl.droidsonroids.gif;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageButton;

public class GifImageButton
  extends ImageButton
{
  private boolean a;
  
  public GifImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = g.a(this, paramAttributeSet, paramInt);
    this.a = paramContext.c;
    if (paramContext.a > 0) {
      super.setImageResource(paramContext.a);
    }
    if (paramContext.b > 0) {
      super.setBackgroundResource(paramContext.b);
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (f)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    paramParcelable.a(getDrawable(), 0);
    paramParcelable.a(getBackground(), 1);
  }
  
  public Parcelable onSaveInstanceState()
  {
    Drawable localDrawable2 = null;
    if (this.a) {}
    for (Drawable localDrawable1 = getDrawable();; localDrawable1 = null)
    {
      if (this.a) {
        localDrawable2 = getBackground();
      }
      return new f(super.onSaveInstanceState(), new Drawable[] { localDrawable1, localDrawable2 });
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    if (!g.a(this, false, paramInt)) {
      super.setBackgroundResource(paramInt);
    }
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  public void setImageResource(int paramInt)
  {
    if (!g.a(this, true, paramInt)) {
      super.setImageResource(paramInt);
    }
  }
  
  public void setImageURI(Uri paramUri)
  {
    if (!g.a(this, paramUri)) {
      super.setImageURI(paramUri);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\GifImageButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */