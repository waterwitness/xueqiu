package com.kwlopen.sdk.camera;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.b.a.a.f;

public class MaskSurfaceView
  extends FrameLayout
{
  public float a;
  public float b;
  public float c = 1027.2F;
  public float d = 648.0F;
  private c e;
  private d f;
  private int g;
  private int h;
  private FocusImageView i;
  private final Camera.AutoFocusCallback j = new Camera.AutoFocusCallback()
  {
    public final void onAutoFocus(boolean paramAnonymousBoolean, Camera paramAnonymousCamera)
    {
      if (paramAnonymousBoolean)
      {
        paramAnonymousCamera = MaskSurfaceView.a(MaskSurfaceView.this);
        paramAnonymousCamera.setImageResource(paramAnonymousCamera.b);
        paramAnonymousCamera.e.removeCallbacks(null, null);
        paramAnonymousCamera.e.postDelayed(new FocusImageView.2(paramAnonymousCamera), 1000L);
        return;
      }
      paramAnonymousCamera = MaskSurfaceView.a(MaskSurfaceView.this);
      paramAnonymousCamera.setImageResource(paramAnonymousCamera.c);
      paramAnonymousCamera.e.removeCallbacks(null, null);
      paramAnonymousCamera.e.postDelayed(new FocusImageView.3(paramAnonymousCamera), 1000L);
    }
  };
  
  public MaskSurfaceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(paramAttributeSet);
    this.g = paramAttributeSet.widthPixels;
    this.h = paramAttributeSet.heightPixels;
    this.a = this.g;
    this.b = this.h;
    this.e = new c(this, paramContext);
    this.f = new d(this, paramContext);
    addView(this.e, -2, -2);
    addView(this.f, -1, -1);
    paramAttributeSet = a.a();
    paramAttributeSet.h = ((int)this.a);
    paramAttributeSet.e = this;
    inflate(paramContext, f.f(paramContext, "kwlopen_cameracontainer"), this);
    this.i = ((FocusImageView)findViewById(f.a(paramContext, "focusImageView")));
    setOnTouchListener(new e(this, (byte)0));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\MaskSurfaceView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */