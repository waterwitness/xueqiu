package com.sleepycat.b.h;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.aq;
import java.nio.ByteBuffer;
import java.util.Calendar;
import java.util.Date;

public class b
  implements at
{
  private aq a;
  private long b;
  private String c;
  
  public b() {}
  
  public b(long paramLong, String paramString)
  {
    this.a = new aq(Calendar.getInstance().getTime().getTime());
    this.b = paramLong;
    if (paramString == null)
    {
      this.c = "";
      return;
    }
    this.c = paramString;
  }
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b) + ar.a(this.c);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<CkptStart invoker=\"").append(this.c);
    paramStringBuilder.append("\" time=\"").append(this.a);
    paramStringBuilder.append("\" id=\"").append(this.b);
    paramStringBuilder.append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.c(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.e(paramByteBuffer, bool);
      this.b = ar.b(paramByteBuffer, bool);
      this.c = ar.d(paramByteBuffer, bool);
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */