package com.tencent.record.debug;

public class Trace
  implements TraceLevel
{
  private static volatile Tracer a = new LogcatTracer();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\Trace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */