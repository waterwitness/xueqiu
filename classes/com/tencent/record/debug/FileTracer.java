package com.tencent.record.debug;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

public class FileTracer
  extends Tracer
  implements Handler.Callback
{
  private FileTracerConfig a;
  private FileWriter b;
  private File c;
  private char[] d;
  private volatile SafeStringQueue e;
  private volatile SafeStringQueue f;
  private volatile SafeStringQueue g;
  private volatile SafeStringQueue h;
  private volatile boolean i = false;
  private HandlerThread j;
  private Handler k;
  
  public FileTracer(int paramInt, boolean paramBoolean, TraceFormat paramTraceFormat, FileTracerConfig paramFileTracerConfig)
  {
    super(paramInt, paramBoolean, paramTraceFormat);
    a(paramFileTracerConfig);
    this.e = new SafeStringQueue();
    this.f = new SafeStringQueue();
    this.g = this.e;
    this.h = this.f;
    this.d = new char[paramFileTracerConfig.f()];
    paramFileTracerConfig.b();
    h();
    this.j = new HandlerThread(paramFileTracerConfig.c(), paramFileTracerConfig.i());
    if (this.j != null) {
      this.j.start();
    }
    if (this.j.isAlive()) {
      this.k = new Handler(this.j.getLooper(), this);
    }
    f();
  }
  
  public FileTracer(FileTracerConfig paramFileTracerConfig)
  {
    this(63, true, TraceFormat.a, paramFileTracerConfig);
  }
  
  private void f()
  {
    this.k.sendEmptyMessageDelayed(1024, c().g());
  }
  
  private void g()
  {
    if (Thread.currentThread() != this.j) {}
    while (this.i) {
      return;
    }
    this.i = true;
    j();
    try
    {
      this.h.a(h(), this.d);
      this.h.b();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException = localIOException;
        this.h.b();
      }
    }
    finally
    {
      localObject = finally;
      this.h.b();
      throw ((Throwable)localObject);
    }
    this.i = false;
  }
  
  private Writer h()
  {
    File localFile = c().a();
    if ((localFile != null) && (!localFile.equals(this.c)))
    {
      this.c = localFile;
      i();
    }
    try
    {
      this.b = new FileWriter(this.c, true);
      return this.b;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  private void i()
  {
    try
    {
      if (this.b != null)
      {
        this.b.flush();
        this.b.close();
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/tencent/record/debug/FileTracer:g	Lcom/tencent/record/debug/SafeStringQueue;
    //   6: aload_0
    //   7: getfield 42	com/tencent/record/debug/FileTracer:e	Lcom/tencent/record/debug/SafeStringQueue;
    //   10: if_acmpne +22 -> 32
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 44	com/tencent/record/debug/FileTracer:f	Lcom/tencent/record/debug/SafeStringQueue;
    //   18: putfield 46	com/tencent/record/debug/FileTracer:g	Lcom/tencent/record/debug/SafeStringQueue;
    //   21: aload_0
    //   22: aload_0
    //   23: getfield 42	com/tencent/record/debug/FileTracer:e	Lcom/tencent/record/debug/SafeStringQueue;
    //   26: putfield 48	com/tencent/record/debug/FileTracer:h	Lcom/tencent/record/debug/SafeStringQueue;
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_0
    //   33: aload_0
    //   34: getfield 42	com/tencent/record/debug/FileTracer:e	Lcom/tencent/record/debug/SafeStringQueue;
    //   37: putfield 46	com/tencent/record/debug/FileTracer:g	Lcom/tencent/record/debug/SafeStringQueue;
    //   40: aload_0
    //   41: aload_0
    //   42: getfield 44	com/tencent/record/debug/FileTracer:f	Lcom/tencent/record/debug/SafeStringQueue;
    //   45: putfield 48	com/tencent/record/debug/FileTracer:h	Lcom/tencent/record/debug/SafeStringQueue;
    //   48: goto -19 -> 29
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	FileTracer
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	29	51	finally
    //   29	31	51	finally
    //   32	48	51	finally
    //   52	54	51	finally
  }
  
  public void a()
  {
    if (this.k.hasMessages(1024)) {
      this.k.removeMessages(1024);
    }
  }
  
  protected void a(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(e().a(paramInt, paramThread, paramLong, paramString1, paramString2, paramThrowable));
  }
  
  public void a(FileTracerConfig paramFileTracerConfig)
  {
    this.a = paramFileTracerConfig;
  }
  
  protected void a(String paramString)
  {
    this.g.a(paramString);
    if (this.g.a() >= c().f()) {
      a();
    }
  }
  
  public void b()
  {
    i();
    this.j.quit();
  }
  
  public FileTracerConfig c()
  {
    return this.a;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      return true;
      g();
      f();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\FileTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */