package com.tencent.record.debug;

import com.tencent.record.util.Utils.Bit;

public abstract class Tracer
{
  private volatile int a = 63;
  private volatile boolean b = true;
  private TraceFormat c = TraceFormat.a;
  
  public Tracer()
  {
    this(63, true, TraceFormat.a);
  }
  
  public Tracer(int paramInt, boolean paramBoolean, TraceFormat paramTraceFormat)
  {
    a(paramInt);
    a(paramBoolean);
    a(paramTraceFormat);
  }
  
  public void a(int paramInt)
  {
    this.a = paramInt;
  }
  
  protected abstract void a(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable);
  
  public void a(TraceFormat paramTraceFormat)
  {
    this.c = paramTraceFormat;
  }
  
  public void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void b(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if ((d()) && (Utils.Bit.a(this.a, paramInt))) {
      a(paramInt, paramThread, paramLong, paramString1, paramString2, paramThrowable);
    }
  }
  
  public boolean d()
  {
    return this.b;
  }
  
  public TraceFormat e()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\Tracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */