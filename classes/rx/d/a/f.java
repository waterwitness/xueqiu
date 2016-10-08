package rx.d.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.c;
import rx.i;

public final class f<T>
  implements c<List<T>, T>
{
  final int a;
  final int b;
  
  public f(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("count must be greater than 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("skip must be greater than 0");
    }
    this.a = paramInt1;
    this.b = paramInt2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */