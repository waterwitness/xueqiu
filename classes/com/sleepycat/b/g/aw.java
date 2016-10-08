package com.sleepycat.b.g;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.a.s;
import com.sleepycat.b.p.aq;
import java.nio.ByteBuffer;
import java.util.Calendar;
import java.util.Date;
import java.util.Queue;

public class aw
  extends a
{
  private aq a;
  private String b;
  
  public aw() {}
  
  public aw(String paramString)
  {
    this.a = new aq(Calendar.getInstance().getTime().getTime());
    this.b = paramString;
  }
  
  public static void a(ad paramad, String paramString)
  {
    paramString = new aw(paramString);
    if (a(paramad)) {
      paramad.w.b(new s(paramString), av.g);
    }
  }
  
  private static boolean a(ad paramad)
  {
    return (paramad != null) && (!paramad.g) && (!paramad.m()) && (!paramad.X);
  }
  
  public static void b(ad paramad, String paramString)
  {
    if (a(paramad))
    {
      paramad = paramad.w;
      paramString = new s(new aw(paramString));
      av localav = av.g;
      paramad.i.add(new an(paramString, localav, (byte)0));
    }
  }
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<Dbg time=\"");
    paramStringBuilder.append(this.a);
    paramStringBuilder.append("\">");
    paramStringBuilder.append("<msg val=\"");
    paramStringBuilder.append(this.b);
    paramStringBuilder.append("\"/>");
    paramStringBuilder.append("</Dbg>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.a(paramByteBuffer, this.b);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.e(paramByteBuffer, bool);
      this.b = ar.d(paramByteBuffer, bool);
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof aw)) {
      return false;
    }
    return this.b.equals(((aw)paramat).b);
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof aw)) {
      return false;
    }
    return toString().equals(paramObject.toString());
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toString()
  {
    return this.a + "/" + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */