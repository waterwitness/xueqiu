package android.support.v4.a;

import java.util.ArrayList;
import java.util.List;

public final class o
{
  public final p<?> a;
  
  o(p<?> paramp)
  {
    this.a = paramp;
  }
  
  public final int a()
  {
    ArrayList localArrayList = this.a.f.f;
    if (localArrayList == null) {
      return 0;
    }
    return localArrayList.size();
  }
  
  public final List<i> a(List<i> paramList)
  {
    if (this.a.f.f == null) {
      return null;
    }
    paramList.addAll(this.a.f.f);
    return paramList;
  }
  
  public final void b()
  {
    this.a.f.t = false;
  }
  
  public final boolean c()
  {
    return this.a.f.f();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */