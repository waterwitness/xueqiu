package pl.droidsonroids.gif;

import android.graphics.SurfaceTexture;
import android.support.annotation.NonNull;
import android.view.TextureView.SurfaceTextureListener;
import java.io.IOException;
import java.lang.ref.WeakReference;

final class e
  extends Thread
  implements TextureView.SurfaceTextureListener
{
  final a a = new a();
  long[] b;
  private GifInfoHandle c = GifInfoHandle.e;
  private IOException d;
  private final WeakReference<GifTextureView> e;
  
  e(GifTextureView paramGifTextureView)
  {
    super("GifRenderThread");
    this.e = new WeakReference(paramGifTextureView);
  }
  
  final void a(@NonNull GifTextureView paramGifTextureView)
  {
    this.a.b();
    GifTextureView.a(paramGifTextureView, null);
    this.c.l();
    interrupt();
    boolean bool = Thread.currentThread().isInterrupted();
    if (bool) {
      interrupted();
    }
    try
    {
      join();
      if (bool) {
        Thread.currentThread().interrupt();
      }
      return;
    }
    catch (InterruptedException paramGifTextureView)
    {
      throw new RuntimeException(paramGifTextureView);
    }
  }
  
  public final void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    paramSurfaceTexture = (GifTextureView)this.e.get();
    if (paramSurfaceTexture != null) {
      GifTextureView.a(paramSurfaceTexture, this.c);
    }
    this.a.a();
  }
  
  public final boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    this.a.b();
    this.c.l();
    return false;
  }
  
  public final void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public final void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 46	pl/droidsonroids/gif/e:e	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 94	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 58	pl/droidsonroids/gif/GifTextureView
    //   10: astore_1
    //   11: aload_1
    //   12: ifnonnull +4 -> 16
    //   15: return
    //   16: aload_0
    //   17: aload_1
    //   18: invokestatic 110	pl/droidsonroids/gif/GifTextureView:a	(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/i;
    //   21: invokevirtual 115	pl/droidsonroids/gif/i:a	()Lpl/droidsonroids/gif/GifInfoHandle;
    //   24: putfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   27: aload_0
    //   28: getfield 46	pl/droidsonroids/gif/e:e	Ljava/lang/ref/WeakReference;
    //   31: invokevirtual 94	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   34: checkcast 58	pl/droidsonroids/gif/GifTextureView
    //   37: astore_1
    //   38: aload_1
    //   39: ifnonnull +18 -> 57
    //   42: aload_0
    //   43: getfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   46: invokevirtual 116	pl/droidsonroids/gif/GifInfoHandle:a	()V
    //   49: return
    //   50: astore_1
    //   51: aload_0
    //   52: aload_1
    //   53: putfield 51	pl/droidsonroids/gif/e:d	Ljava/io/IOException;
    //   56: return
    //   57: aload_1
    //   58: aload_0
    //   59: invokestatic 61	pl/droidsonroids/gif/GifTextureView:a	(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/e;)V
    //   62: aload_1
    //   63: invokevirtual 119	pl/droidsonroids/gif/GifTextureView:isAvailable	()Z
    //   66: istore 5
    //   68: aload_0
    //   69: getfield 33	pl/droidsonroids/gif/e:a	Lpl/droidsonroids/gif/a;
    //   72: iload 5
    //   74: invokevirtual 122	pl/droidsonroids/gif/a:a	(Z)V
    //   77: iload 5
    //   79: ifeq +17 -> 96
    //   82: aload_1
    //   83: new 8	pl/droidsonroids/gif/e$1
    //   86: dup
    //   87: aload_0
    //   88: aload_1
    //   89: invokespecial 125	pl/droidsonroids/gif/e$1:<init>	(Lpl/droidsonroids/gif/e;Lpl/droidsonroids/gif/GifTextureView;)V
    //   92: invokevirtual 129	pl/droidsonroids/gif/GifTextureView:post	(Ljava/lang/Runnable;)Z
    //   95: pop
    //   96: aload_0
    //   97: getfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   100: aload_1
    //   101: invokestatic 132	pl/droidsonroids/gif/GifTextureView:b	(Lpl/droidsonroids/gif/GifTextureView;)F
    //   104: invokevirtual 135	pl/droidsonroids/gif/GifInfoHandle:a	(F)V
    //   107: aload_0
    //   108: invokevirtual 136	pl/droidsonroids/gif/e:isInterrupted	()Z
    //   111: ifne +72 -> 183
    //   114: aload_0
    //   115: getfield 33	pl/droidsonroids/gif/e:a	Lpl/droidsonroids/gif/a;
    //   118: invokevirtual 138	pl/droidsonroids/gif/a:c	()V
    //   121: aload_1
    //   122: invokevirtual 142	pl/droidsonroids/gif/GifTextureView:getSurfaceTexture	()Landroid/graphics/SurfaceTexture;
    //   125: astore_2
    //   126: aload_2
    //   127: ifnull -20 -> 107
    //   130: new 144	android/view/Surface
    //   133: dup
    //   134: aload_2
    //   135: invokespecial 146	android/view/Surface:<init>	(Landroid/graphics/SurfaceTexture;)V
    //   138: astore_2
    //   139: aload_0
    //   140: getfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   143: astore_3
    //   144: aload_0
    //   145: getfield 148	pl/droidsonroids/gif/e:b	[J
    //   148: astore 4
    //   150: aload_1
    //   151: invokevirtual 151	pl/droidsonroids/gif/GifTextureView:isOpaque	()Z
    //   154: istore 5
    //   156: aload_3
    //   157: getfield 154	pl/droidsonroids/gif/GifInfoHandle:a	J
    //   160: aload_2
    //   161: aload 4
    //   163: iload 5
    //   165: invokestatic 158	pl/droidsonroids/gif/GifInfoHandle:bindSurface	(JLandroid/view/Surface;[JZ)V
    //   168: aload_2
    //   169: invokevirtual 161	android/view/Surface:release	()V
    //   172: goto -65 -> 107
    //   175: astore_1
    //   176: aload_2
    //   177: invokevirtual 161	android/view/Surface:release	()V
    //   180: aload_1
    //   181: athrow
    //   182: astore_1
    //   183: aload_0
    //   184: getfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   187: invokevirtual 116	pl/droidsonroids/gif/GifInfoHandle:a	()V
    //   190: aload_0
    //   191: getstatic 37	pl/droidsonroids/gif/GifInfoHandle:e	Lpl/droidsonroids/gif/GifInfoHandle;
    //   194: putfield 39	pl/droidsonroids/gif/e:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   197: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	e
    //   10	29	1	localGifTextureView	GifTextureView
    //   50	101	1	localIOException	IOException
    //   175	6	1	localObject1	Object
    //   182	1	1	localInterruptedException	InterruptedException
    //   125	52	2	localObject2	Object
    //   143	14	3	localGifInfoHandle	GifInfoHandle
    //   148	14	4	arrayOfLong	long[]
    //   66	98	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	11	50	java/io/IOException
    //   16	27	50	java/io/IOException
    //   139	168	175	finally
    //   114	121	182	java/lang/InterruptedException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */