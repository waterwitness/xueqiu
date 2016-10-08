package rx.h;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.g;
import rx.h;

public final class r
  extends g
{
  static final AtomicIntegerFieldUpdater<r> b = AtomicIntegerFieldUpdater.newUpdater(r.class, "a");
  private static final r c = new r();
  volatile int a;
  
  public final h a()
  {
    return new s(this, (byte)0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */