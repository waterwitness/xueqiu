package com.snowballfinance.message.io.d;

import com.snowballfinance.message.io.a.b;
import java.nio.ByteBuffer;

public final class a
{
  public static b a(b paramb, int paramInt)
  {
    b localb = new b(ByteBuffer.allocate(paramInt));
    paramInt = paramb.c;
    int i = paramb.d;
    int j = paramb.b;
    paramInt = (paramInt + i) % j;
    paramb = paramb.a.array();
    i = j - i;
    j = localb.b - localb.c;
    localb.a.limit(localb.b);
    localb.a.position(localb.c);
    if (j >= i) {
      localb.a.put(paramb, paramInt, i);
    }
    for (;;)
    {
      localb.d -= i;
      localb.c = ((localb.c + i) % localb.b);
      return localb;
      localb.a.put(paramb, paramInt, j);
      localb.a.position(0);
      localb.a.put(paramb, paramInt + j, i - j);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */