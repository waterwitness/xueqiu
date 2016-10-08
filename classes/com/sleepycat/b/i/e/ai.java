package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.h.e;
import com.sleepycat.b.i.o;
import java.nio.ByteBuffer;
import java.util.UUID;

public class ai
  extends ad
{
  final String a;
  final UUID c;
  public final x d;
  public final String e;
  public final int f;
  final o g;
  final boolean h;
  
  public ai(t paramt, String paramString1, UUID paramUUID, x paramx, String paramString2, int paramInt, o paramo, boolean paramBoolean)
  {
    super(paramt);
    this.a = paramString1;
    this.c = paramUUID;
    this.d = paramx;
    this.e = paramString2;
    this.f = paramInt;
    this.g = paramo;
    this.h = paramBoolean;
  }
  
  public final e a()
  {
    return t.g;
  }
  
  public final ByteBuffer b()
  {
    return a(new Object[] { this.a, Long.valueOf(this.c.getMostSignificantBits()), Long.valueOf(this.c.getLeastSignificantBits()), this.d, this.e, Integer.valueOf(this.f), this.g, Boolean.valueOf(this.h) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */