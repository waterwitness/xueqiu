package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.annotation.IntRange;
import android.view.Surface;
import java.io.FileDescriptor;

final class GifInfoHandle
{
  static final GifInfoHandle e = new GifInfoHandle(0L, 0, 0, 0);
  volatile long a;
  final int b;
  final int c;
  final int d;
  
  static
  {
    System.loadLibrary("pl_droidsonroids_gif");
  }
  
  private GifInfoHandle(long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramLong;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
  }
  
  static GifInfoHandle a(ContentResolver paramContentResolver, Uri paramUri)
  {
    if ("file".equals(paramUri.getScheme())) {
      return openFile(paramUri.getPath(), false);
    }
    return a(paramContentResolver.openAssetFileDescriptor(paramUri, "r"));
  }
  
  static GifInfoHandle a(AssetFileDescriptor paramAssetFileDescriptor)
  {
    try
    {
      GifInfoHandle localGifInfoHandle = openFd(paramAssetFileDescriptor.getFileDescriptor(), paramAssetFileDescriptor.getStartOffset(), false);
      return localGifInfoHandle;
    }
    finally
    {
      paramAssetFileDescriptor.close();
    }
  }
  
  static native void bindSurface(long paramLong, Surface paramSurface, long[] paramArrayOfLong, boolean paramBoolean);
  
  private static native void free(long paramLong);
  
  private static native int getCurrentFrameIndex(long paramLong);
  
  private static native int getCurrentLoop(long paramLong);
  
  private static native int getCurrentPosition(long paramLong);
  
  private static native int getDuration(long paramLong);
  
  private static native int getLoopCount(long paramLong);
  
  private static native int getNativeErrorCode(long paramLong);
  
  private static native long[] getSavedState(long paramLong);
  
  static native GifInfoHandle openFd(FileDescriptor paramFileDescriptor, long paramLong, boolean paramBoolean);
  
  static native GifInfoHandle openFile(String paramString, boolean paramBoolean);
  
  private static native void postUnbindSurface(long paramLong);
  
  private static native long renderFrame(long paramLong, Bitmap paramBitmap);
  
  private static native boolean reset(long paramLong);
  
  private static native long restoreRemainder(long paramLong);
  
  private static native int restoreSavedState(long paramLong, long[] paramArrayOfLong, Bitmap paramBitmap);
  
  private static native void saveRemainder(long paramLong);
  
  private static native void seekToTime(long paramLong, int paramInt, Bitmap paramBitmap);
  
  private static native void setSpeedFactor(long paramLong, float paramFloat);
  
  final int a(long[] paramArrayOfLong, Bitmap paramBitmap)
  {
    try
    {
      int i = restoreSavedState(this.a, paramArrayOfLong, paramBitmap);
      return i;
    }
    finally
    {
      paramArrayOfLong = finally;
      throw paramArrayOfLong;
    }
  }
  
  final long a(Bitmap paramBitmap)
  {
    try
    {
      long l = renderFrame(this.a, paramBitmap);
      return l;
    }
    finally
    {
      paramBitmap = finally;
      throw paramBitmap;
    }
  }
  
  final void a()
  {
    try
    {
      free(this.a);
      this.a = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(float paramFloat)
  {
    if ((paramFloat <= 0.0F) || (Float.isNaN(paramFloat))) {
      throw new IllegalArgumentException("Speed factor is not positive");
    }
    float f = paramFloat;
    if (paramFloat < 0.0F) {
      f = 0.0F;
    }
    try
    {
      setSpeedFactor(this.a, f);
      return;
    }
    finally {}
  }
  
  final void a(@IntRange int paramInt, Bitmap paramBitmap)
  {
    try
    {
      seekToTime(this.a, paramInt, paramBitmap);
      return;
    }
    finally
    {
      paramBitmap = finally;
      throw paramBitmap;
    }
  }
  
  final long b()
  {
    try
    {
      long l = restoreRemainder(this.a);
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean c()
  {
    try
    {
      boolean bool = reset(this.a);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void d()
  {
    try
    {
      saveRemainder(this.a);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int e()
  {
    try
    {
      int i = getLoopCount(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int f()
  {
    try
    {
      int i = getNativeErrorCode(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final void finalize()
  {
    try
    {
      a();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  final int g()
  {
    try
    {
      int i = getDuration(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int h()
  {
    try
    {
      int i = getCurrentPosition(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int i()
  {
    try
    {
      int i = getCurrentFrameIndex(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int j()
  {
    try
    {
      int i = getCurrentLoop(this.a);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final boolean k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 33	pl/droidsonroids/gif/GifInfoHandle:a	J
    //   6: lstore_2
    //   7: lload_2
    //   8: lconst_0
    //   9: lcmp
    //   10: ifne +11 -> 21
    //   13: iconst_1
    //   14: istore 4
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 4
    //   20: ireturn
    //   21: iconst_0
    //   22: istore 4
    //   24: goto -8 -> 16
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	GifInfoHandle
    //   27	4	1	localObject	Object
    //   6	2	2	l	long
    //   14	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	27	finally
  }
  
  final void l()
  {
    try
    {
      postUnbindSurface(this.a);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final long[] m()
  {
    try
    {
      long[] arrayOfLong = getSavedState(this.a);
      return arrayOfLong;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\GifInfoHandle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */