package rx.h;

import java.util.concurrent.Executor;
import rx.g;
import rx.h;

final class i
  extends g
{
  final Executor a;
  
  public i(Executor paramExecutor)
  {
    this.a = paramExecutor;
  }
  
  public final h a()
  {
    return new k(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */