package com.sleepycat.b.n;

import com.sleepycat.b.g.a;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.ax;
import java.nio.ByteBuffer;

public class ah
  extends ai
  implements ax
{
  public ah() {}
  
  public ah(long paramLong1, long paramLong2, int paramInt)
  {
    super(paramLong1, paramLong2, paramInt);
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof ah)) {}
    do
    {
      return false;
      paramat = (ah)paramat;
    } while ((this.a != paramat.a) || (this.c != paramat.c));
    return true;
  }
  
  public final void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    a.a(this, paramByteBuffer, paramInt);
  }
  
  protected final String c()
  {
    return "TxnCommit";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */