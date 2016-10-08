package org.webrtc.videoengine;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Process;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.pingan.a.a.e;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public class ViESurfaceRenderer
  implements SurfaceHolder.Callback
{
  private static final String TAG = "ViESurfaceRenderer";
  public static Map<String, Bitmap> bitMap = new HashMap();
  public static Map<String, ByteBuffer> bufferMap = new HashMap();
  private Bitmap bitmap = null;
  private ByteBuffer byteBuffer = null;
  private float dstBottomScale = 1.0F;
  private float dstLeftScale = 0.0F;
  private Rect dstRect = new Rect();
  private float dstRightScale = 1.0F;
  private float dstTopScale = 0.0F;
  private Rect originalRect = new Rect();
  private Rect srcRect = new Rect();
  private SurfaceHolder surfaceHolder;
  
  public ViESurfaceRenderer() {}
  
  public ViESurfaceRenderer(SurfaceView paramSurfaceView)
  {
    e.a("ViESurfaceRenderer", "************ViESurfaceRenderer");
    this.surfaceHolder = paramSurfaceView.getHolder();
    if (this.surfaceHolder == null) {
      return;
    }
    this.surfaceHolder.addCallback(this);
  }
  
  private void changeDestRect(int paramInt1, int paramInt2)
  {
    e.b("ViESurfaceRenderer", "************changeDestRect");
    this.dstRect.right = ((int)(this.dstRect.left + this.dstRightScale * paramInt1));
    this.dstRect.bottom = ((int)(this.dstRect.top + this.dstBottomScale * paramInt2));
  }
  
  private void changeSrcRect()
  {
    e.b("ViESurfaceRenderer", "************changeSrcRect");
    this.srcRect.left = this.originalRect.left;
    this.srcRect.top = this.originalRect.top;
    this.srcRect.bottom = this.originalRect.bottom;
    this.srcRect.right = this.originalRect.right;
    if (this.srcRect.bottom <= this.srcRect.top) {}
    do
    {
      do
      {
        return;
      } while ((this.srcRect.right <= this.srcRect.left) || (this.dstRect.bottom <= this.dstRect.top) || (this.dstRect.right <= this.dstRect.left));
      f2 = (this.srcRect.right - this.srcRect.left) / (this.srcRect.bottom - this.srcRect.top);
      f1 = (this.dstRect.right - this.dstRect.left) / (this.dstRect.bottom - this.dstRect.top);
      if (f2 >= f1)
      {
        f2 = (this.srcRect.right - this.srcRect.left) / 2;
        f1 = f1 * (this.srcRect.bottom - this.srcRect.top) / 2.0F;
        this.srcRect.left = ((int)(f2 - f1));
        this.srcRect.right = ((int)(f2 + f1));
        return;
      }
    } while (f2 >= f1);
    float f2 = (this.srcRect.bottom - this.srcRect.top) / 2;
    float f1 = (this.srcRect.right - this.srcRect.left) / f1 / 2.0F;
    this.srcRect.top = ((int)(f2 - f1));
    this.srcRect.bottom = ((int)(f2 + f1));
  }
  
  private void saveBitmapToJPEG(int paramInt1, int paramInt2)
  {
    e.a("ViESurfaceRenderer", "***********saveBitmapToJPEG " + paramInt1 + ":" + paramInt2);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    this.bitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(String.format("/sdcard/uademo/p/render_%d.jpg", new Object[] { Long.valueOf(System.currentTimeMillis()) }));
      localFileOutputStream.write(localByteArrayOutputStream.toByteArray());
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException) {}catch (FileNotFoundException localFileNotFoundException) {}
  }
  
  public Bitmap CreateBitmap(int paramInt1, int paramInt2)
  {
    e.a("ViESurfaceRenderer", "***********CreateBitmap " + paramInt1 + ":" + paramInt2);
    if (this.bitmap == null) {}
    try
    {
      Process.setThreadPriority(-4);
      String str = paramInt1 + paramInt2;
      localBitmap = (Bitmap)bitMap.get(str);
      if (localBitmap == null)
      {
        this.bitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
        bitMap.put(str, this.bitmap);
        this.srcRect.left = 0;
        this.srcRect.top = 0;
        this.srcRect.bottom = paramInt2;
        this.srcRect.right = paramInt1;
        this.originalRect.left = 0;
        this.originalRect.top = 0;
        this.originalRect.bottom = paramInt2;
        this.originalRect.right = paramInt1;
        changeSrcRect();
        return this.bitmap;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Bitmap localBitmap;
        e.d("ViESurfaceRenderer", "CreateBitmap--bitmap=null");
        continue;
        this.bitmap = localBitmap;
      }
    }
  }
  
  public ByteBuffer CreateByteBuffer(int paramInt1, int paramInt2)
  {
    Object localObject = null;
    e.a("ViESurfaceRenderer", "***********CreateByteBuffer " + paramInt1 + ":" + paramInt2);
    Canvas localCanvas = this.surfaceHolder.lockCanvas();
    ByteBuffer localByteBuffer;
    if (localCanvas != null)
    {
      if ((paramInt1 != this.originalRect.right - this.originalRect.left) || (paramInt2 != this.originalRect.bottom - this.originalRect.top)) {
        this.bitmap = null;
      }
      if (this.bitmap == null)
      {
        this.bitmap = CreateBitmap(paramInt1, paramInt2);
        e.b("cyb", "***********CreateByteBuffer width:" + paramInt1 + ":" + paramInt2);
        localObject = paramInt1 + paramInt2;
        localByteBuffer = (ByteBuffer)bufferMap.get(localObject);
        if (localByteBuffer != null) {
          break label252;
        }
        this.byteBuffer = ByteBuffer.allocateDirect(paramInt1 * paramInt2 * 2);
        bufferMap.put(localObject, this.byteBuffer);
      }
    }
    for (;;)
    {
      e.b("cyb", "***********CreateByteBuffer byteBuffer:" + this.byteBuffer);
      this.surfaceHolder.unlockCanvasAndPost(localCanvas);
      surfaceCreated(this.surfaceHolder);
      localObject = this.byteBuffer;
      return (ByteBuffer)localObject;
      label252:
      this.byteBuffer = localByteBuffer;
    }
  }
  
  public void DrawBitmap()
  {
    if (this.bitmap == null) {}
    Canvas localCanvas;
    do
    {
      return;
      localCanvas = this.surfaceHolder.lockCanvas();
    } while (localCanvas == null);
    synchronized (this.surfaceHolder)
    {
      localCanvas.drawBitmap(this.bitmap, this.srcRect, this.dstRect, null);
      this.surfaceHolder.unlockCanvasAndPost(localCanvas);
      return;
    }
  }
  
  public void DrawByteBuffer()
  {
    if (this.byteBuffer == null) {
      return;
    }
    this.byteBuffer.rewind();
    this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
    DrawBitmap();
  }
  
  public void SetCoordinates(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    e.a("ViESurfaceRenderer", "**********SetCoordinates " + paramFloat1 + "," + paramFloat2 + ":" + paramFloat3 + "," + paramFloat4);
    this.dstLeftScale = paramFloat1;
    this.dstTopScale = paramFloat2;
    this.dstRightScale = paramFloat3;
    this.dstBottomScale = paramFloat4;
  }
  
  protected void finalize()
  {
    e.a("ViESurfaceRenderer", "************finalize");
    if (this.surfaceHolder == null) {
      return;
    }
    this.surfaceHolder.removeCallback(this);
    super.finalize();
  }
  
  public void freeBitmap()
  {
    e.a("ViESurfaceRenderer", "***********ViESurfaceRenderer---freeBitmap");
    if (this.bitmap != null)
    {
      e.b("ViESurfaceRenderer", "***********bitmap!=null");
      this.bitmap.recycle();
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    e.a("ViESurfaceRenderer", "*************ViESurfaceRender::surfaceChanged");
    changeDestRect(paramInt2, paramInt3);
    if ((this.srcRect.bottom > this.srcRect.top) && (this.srcRect.right > this.srcRect.left)) {
      changeSrcRect();
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    e.a("ViESurfaceRenderer", "************surfaceCreated");
    paramSurfaceHolder = this.surfaceHolder.lockCanvas();
    if (paramSurfaceHolder != null)
    {
      Rect localRect = this.surfaceHolder.getSurfaceFrame();
      if (localRect != null)
      {
        changeDestRect(localRect.right - localRect.left, localRect.bottom - localRect.top);
        if ((this.srcRect.bottom > this.srcRect.top) && (this.srcRect.right > this.srcRect.left)) {
          changeSrcRect();
        }
      }
      this.surfaceHolder.unlockCanvasAndPost(paramSurfaceHolder);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    e.a("ViESurfaceRenderer", "***********ViESurfaceRenderer::surfaceDestroyed");
    this.bitmap = null;
    this.byteBuffer = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\ViESurfaceRenderer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */