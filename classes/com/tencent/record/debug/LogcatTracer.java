package com.tencent.record.debug;

import android.util.Log;

public final class LogcatTracer
  extends Tracer
{
  public static final LogcatTracer a = new LogcatTracer();
  
  protected final void a(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      Log.v(paramString1, paramString2, paramThrowable);
      return;
    case 2: 
      Log.d(paramString1, paramString2, paramThrowable);
      return;
    case 4: 
      Log.i(paramString1, paramString2, paramThrowable);
      return;
    case 8: 
      Log.w(paramString1, paramString2, paramThrowable);
      return;
    case 16: 
      Log.e(paramString1, paramString2, paramThrowable);
      return;
    }
    Log.e(paramString1, paramString2, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\LogcatTracer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */