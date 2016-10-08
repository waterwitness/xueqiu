package com.kwlopen.sdk.camera;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.b.a.a.f;

public class FocusImageView
  extends ImageView
{
  int a = -1;
  int b = -1;
  int c = -1;
  Animation d;
  Handler e;
  
  public FocusImageView(Context paramContext)
  {
    super(paramContext);
    this.d = AnimationUtils.loadAnimation(getContext(), f.d(paramContext, "kwlopen_focusview_show"));
    setVisibility(8);
    this.e = new Handler();
  }
  
  public FocusImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.d = AnimationUtils.loadAnimation(getContext(), f.d(paramContext, "kwlopen_focusview_show"));
    this.e = new Handler();
    this.a = f.e(paramContext, "kwlopen_focus_focusing");
    this.b = f.e(paramContext, "kwlopen_focus_focused");
    this.c = f.e(paramContext, "kwlopen_focus_focus_failed");
    if ((this.a == -1) || (this.b == -1) || (this.c == -1)) {
      throw new RuntimeException("Animation is null");
    }
  }
  
  public void setFocusImg(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void setFocusSucceedImg(int paramInt)
  {
    this.b = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\FocusImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */