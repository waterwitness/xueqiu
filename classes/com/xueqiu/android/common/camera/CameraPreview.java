package com.xueqiu.android.common.camera;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.Parameters;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnTouchListener;
import com.xueqiu.android.base.util.v;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

public class CameraPreview
  extends SurfaceView
  implements SurfaceHolder.Callback, View.OnTouchListener
{
  boolean a = false;
  g b;
  private SurfaceHolder c = getHolder();
  private Camera d;
  private Timer e;
  private f f;
  private int g;
  private ArrayList<Camera.Area> h = new ArrayList();
  
  public CameraPreview(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.c.addCallback(this);
    this.c.setType(3);
    setOnTouchListener(this);
  }
  
  private static Camera b(int paramInt)
  {
    try
    {
      Camera localCamera = Camera.open(paramInt);
      return localCamera;
    }
    catch (Exception localException)
    {
      v.a("CameraPreview", localException);
    }
    return null;
  }
  
  private void d()
  {
    if (this.d != null) {}
    try
    {
      this.d.setPreviewCallback(null);
      this.d.stopPreview();
      this.d.release();
      this.d = null;
      return;
    }
    catch (Exception localException)
    {
      v.a("CameraPreview", localException);
    }
  }
  
  public final void a()
  {
    post(new Runnable()
    {
      public final void run()
      {
        if (CameraPreview.a(CameraPreview.this) == null) {}
        do
        {
          return;
          if (CameraPreview.b(CameraPreview.this) != null) {
            CameraPreview.c(CameraPreview.this);
          }
          CameraPreview.a(CameraPreview.this, CameraPreview.a(CameraPreview.a(CameraPreview.this).c));
        } while (CameraPreview.b(CameraPreview.this) == null);
        try
        {
          CameraPreview.d(CameraPreview.this);
          CameraPreview.b(CameraPreview.this).setPreviewDisplay(CameraPreview.e(CameraPreview.this));
          CameraPreview.b(CameraPreview.this).startPreview();
          CameraPreview.this.c();
          CameraPreview.a(CameraPreview.this, new Timer());
          CameraPreview.a(CameraPreview.this, new f(CameraPreview.this, (byte)0));
          CameraPreview.g(CameraPreview.this).schedule(CameraPreview.f(CameraPreview.this), 5000L, 3000L);
          CameraPreview.h(CameraPreview.this);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    });
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    if (this.h.size() == 0) {
      this.h.add(new Camera.Area(new Rect(), 1));
    }
    v.a("CameraPreview", "x:" + paramFloat1 + ",y:" + paramFloat2);
    ((Camera.Area)this.h.get(0)).rect = e.a(paramFloat1, paramFloat2, 1.0F, getWidth(), getHeight());
    Rect localRect = e.a(paramFloat1, paramFloat2, 1.5F, getWidth(), getHeight());
    Camera.Parameters localParameters = this.d.getParameters();
    if (localParameters.getMaxNumFocusAreas() > 0)
    {
      localParameters.getFocusAreas();
      localParameters.setFocusAreas(this.h);
    }
    if (localParameters.getMaxNumMeteringAreas() > 0)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new Camera.Area(localRect, 2));
      localParameters.setMeteringAreas(localArrayList);
    }
    try
    {
      this.d.cancelAutoFocus();
      this.d.setParameters(localParameters);
      return;
    }
    catch (Exception localException)
    {
      v.a("CameraPreview", localException);
    }
  }
  
  public final void b()
  {
    c();
    d();
    this.a = false;
  }
  
  public final void c()
  {
    try
    {
      if (this.e != null) {
        this.e.cancel();
      }
      if (this.f != null) {
        this.f.cancel();
      }
      return;
    }
    catch (Exception localException)
    {
      v.a("CameraPreview", localException);
    }
  }
  
  public Camera getCamera()
  {
    return this.d;
  }
  
  public int getCameraRotate()
  {
    return this.g;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      a(paramMotionEvent.getX(), paramMotionEvent.getY());
    }
  }
  
  public void setCameraSetting(g paramg)
  {
    this.b = paramg;
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    a();
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\CameraPreview.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */