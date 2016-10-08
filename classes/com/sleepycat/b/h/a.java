package com.sleepycat.b.h;

import com.sleepycat.b.a.d;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;
import java.util.Calendar;
import java.util.Date;

public class a
  implements at
{
  public String a;
  long b;
  long c;
  long d;
  long e;
  long f;
  long g;
  long h;
  long i;
  long j;
  public long k;
  final d l;
  public boolean m;
  private aq n;
  private boolean o;
  
  public a()
  {
    this.b = -1L;
    this.c = -1L;
    this.d = -1L;
    this.l = new d();
  }
  
  public a(String paramString, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7, long paramLong8, long paramLong9, long paramLong10, boolean paramBoolean, d paramd)
  {
    if (paramString == null)
    {
      this.a = "";
      this.n = new aq(Calendar.getInstance().getTime().getTime());
      this.b = paramLong1;
      this.c = paramLong2;
      if (paramLong2 != -1L) {
        break label136;
      }
      this.o = false;
      label59:
      if (paramLong3 != -1L) {
        break label144;
      }
    }
    label136:
    label144:
    for (this.d = paramLong1;; this.d = paramLong3)
    {
      this.e = paramLong4;
      this.f = paramLong5;
      this.g = paramLong6;
      this.h = paramLong7;
      this.i = paramLong8;
      this.j = paramLong9;
      this.k = paramLong10;
      this.m = paramBoolean;
      this.l = paramd;
      return;
      this.a = paramString;
      break;
      this.o = true;
      break label59;
    }
  }
  
  public final int a()
  {
    int i2 = ar.a(this.a) + ar.a(this.n) + ar.a(this.b) + 1 + ar.a(this.d) + ar.a(this.e) + ar.a(this.f) + ar.a(this.g) + ar.a(this.h) + ar.a(this.i) + ar.a(this.j) + ar.a(this.k) + this.l.a();
    int i1 = i2;
    if (this.o) {
      i1 = i2 + ar.a(this.c);
    }
    return i1;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<CkptEnd invoker=\"").append(this.a);
    paramStringBuilder.append("\" time=\"").append(this.n);
    paramStringBuilder.append("\" lastLocalNodeId=\"").append(this.e);
    paramStringBuilder.append("\" lastReplicatedNodeId=\"").append(this.f);
    paramStringBuilder.append("\" lastLocalDbId=\"").append(this.g);
    paramStringBuilder.append("\" lastReplicatedDbId=\"").append(this.h);
    paramStringBuilder.append("\" lastLocalTxnId=\"").append(this.i);
    paramStringBuilder.append("\" lastReplicatedTxnId=\"").append(this.j);
    paramStringBuilder.append("\" id=\"").append(this.k);
    paramStringBuilder.append("\" rootExists=\"").append(this.o);
    paramStringBuilder.append("\">");
    paramStringBuilder.append("<ckptStart>");
    paramStringBuilder.append(j.g(this.b));
    paramStringBuilder.append("</ckptStart>");
    if (this.o)
    {
      paramStringBuilder.append("<root>");
      paramStringBuilder.append(j.g(this.c));
      paramStringBuilder.append("</root>");
    }
    paramStringBuilder.append("<firstActive>");
    paramStringBuilder.append(j.g(this.d));
    paramStringBuilder.append("</firstActive>");
    this.l.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("</CkptEnd>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.a(paramByteBuffer, this.n);
    ar.c(paramByteBuffer, this.b);
    byte b1 = 0;
    if (this.o) {
      b1 = 1;
    }
    byte b2 = b1;
    if (this.m) {
      b2 = (byte)(b1 | 0x2);
    }
    paramByteBuffer.put(b2);
    if (this.o) {
      ar.c(paramByteBuffer, this.c);
    }
    ar.c(paramByteBuffer, this.d);
    ar.c(paramByteBuffer, this.e);
    ar.c(paramByteBuffer, this.f);
    ar.c(paramByteBuffer, this.g);
    ar.c(paramByteBuffer, this.h);
    ar.c(paramByteBuffer, this.i);
    ar.c(paramByteBuffer, this.j);
    ar.c(paramByteBuffer, this.k);
    this.l.a(paramByteBuffer);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    boolean bool2 = true;
    int i1;
    if (paramInt >= 6)
    {
      i1 = 1;
      if (i1 != 0) {
        break label264;
      }
      bool1 = true;
      label18:
      this.a = ar.d(paramByteBuffer, bool1);
      if (i1 != 0) {
        break label270;
      }
      bool1 = true;
      label35:
      this.n = ar.e(paramByteBuffer, bool1);
      if (i1 != 0) {
        break label276;
      }
      bool1 = true;
      label52:
      this.b = ar.b(paramByteBuffer, bool1);
      int i2 = paramByteBuffer.get();
      if ((i2 & 0x1) == 0) {
        break label282;
      }
      bool1 = true;
      label78:
      this.o = bool1;
      if (this.o)
      {
        if (i1 != 0) {
          break label288;
        }
        bool1 = true;
        label98:
        this.c = ar.b(paramByteBuffer, bool1);
      }
      if (paramInt < 7) {
        break label300;
      }
      if ((i2 & 0x2) == 0) {
        break label294;
      }
      bool1 = true;
      label124:
      this.m = bool1;
      label130:
      if (i1 != 0) {
        break label308;
      }
      bool1 = true;
      label137:
      this.d = ar.b(paramByteBuffer, bool1);
      if (i1 != 0) {
        break label314;
      }
      bool1 = true;
      label154:
      this.e = ar.b(paramByteBuffer, bool1);
      if (i1 != 0) {
        this.f = ar.g(paramByteBuffer);
      }
      if (i1 == 0) {
        break label320;
      }
      this.g = ar.g(paramByteBuffer);
      this.h = ar.g(paramByteBuffer);
      label196:
      if (i1 != 0) {
        break label332;
      }
      bool1 = true;
      label203:
      this.i = ar.b(paramByteBuffer, bool1);
      if (i1 != 0) {
        this.j = ar.g(paramByteBuffer);
      }
      if (i1 != 0) {
        break label338;
      }
    }
    label264:
    label270:
    label276:
    label282:
    label288:
    label294:
    label300:
    label308:
    label314:
    label320:
    label332:
    label338:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.k = ar.b(paramByteBuffer, bool1);
      if (paramInt >= 8) {
        this.l.a(paramByteBuffer, paramInt);
      }
      return;
      i1 = 0;
      break;
      bool1 = false;
      break label18;
      bool1 = false;
      break label35;
      bool1 = false;
      break label52;
      bool1 = false;
      break label78;
      bool1 = false;
      break label98;
      bool1 = false;
      break label124;
      this.m = true;
      break label130;
      bool1 = false;
      break label137;
      bool1 = false;
      break label154;
      this.g = ar.c(paramByteBuffer);
      break label196;
      bool1 = false;
      break label203;
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
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("time=").append(this.n);
    localStringBuilder.append(" lastLocalNodeId=").append(this.e);
    localStringBuilder.append(" lastReplicatedNodeId=").append(this.f);
    localStringBuilder.append(" lastLocalDbId=").append(this.g);
    localStringBuilder.append(" lastReplicatedDbId=").append(this.h);
    localStringBuilder.append(" lastLocalTxnId=").append(this.i);
    localStringBuilder.append(" lastReplicatedTxnId=").append(this.j);
    localStringBuilder.append(" id=").append(this.k);
    localStringBuilder.append(" rootExists=").append(this.o);
    localStringBuilder.append(" ckptStartLsn=").append(j.h(this.b));
    if (this.o) {
      localStringBuilder.append(" root=").append(j.h(this.c));
    }
    localStringBuilder.append(" firstActive=").append(j.h(this.d));
    localStringBuilder.append(" cleanerLogSummary=").append(this.l.toString());
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */