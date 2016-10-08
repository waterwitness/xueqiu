package org.webrtc.videoengine;

import android.content.Context;
import android.view.SurfaceView;
import com.pingan.a.a.e;

public class ViERenderer
{
  private static final String TAG = "ViERenderer";
  
  public static SurfaceView CreateRenderer(Context paramContext)
  {
    return CreateRenderer(paramContext, false);
  }
  
  public static SurfaceView CreateRenderer(Context paramContext, boolean paramBoolean)
  {
    if ((paramBoolean) && (ViEAndroidGLES20.IsSupported(paramContext)))
    {
      e.d("ViERenderer", "new ViEAndroidGLES20(context)");
      return new ViEAndroidGLES20(paramContext);
    }
    e.d("ViERenderer", "new SurfaceView(context)");
    return new SurfaceView(paramContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\ViERenderer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */