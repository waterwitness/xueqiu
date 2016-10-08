package android.support.v7.widget;

import android.support.v4.e.a;
import android.util.SparseArray;

public final class al
{
  int a = -1;
  a<ao, z> b = new a();
  a<ao, z> c = new a();
  a<Long, ao> d = new a();
  int e = 0;
  int f = 0;
  int g = 0;
  boolean h = false;
  boolean i = false;
  boolean j = false;
  boolean k = false;
  private SparseArray<Object> l;
  
  public final int a()
  {
    if (this.i) {
      return this.f - this.g;
    }
    return this.e;
  }
  
  public final void a(ao paramao)
  {
    this.b.remove(paramao);
    this.c.remove(paramao);
    a locala;
    int m;
    if (this.d != null)
    {
      locala = this.d;
      m = locala.size() - 1;
    }
    for (;;)
    {
      if (m >= 0)
      {
        if (paramao == locala.c(m)) {
          locala.d(m);
        }
      }
      else {
        return;
      }
      m -= 1;
    }
  }
  
  public final String toString()
  {
    return "State{mTargetPosition=" + this.a + ", mPreLayoutHolderMap=" + this.b + ", mPostLayoutHolderMap=" + this.c + ", mData=" + this.l + ", mItemCount=" + this.e + ", mPreviousLayoutItemCount=" + this.f + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.g + ", mStructureChanged=" + this.h + ", mInPreLayout=" + this.i + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */