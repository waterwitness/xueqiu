package android.support.v4.e;

public final class m<T>
  implements l<T>
{
  private final Object[] a = new Object[30];
  private int b;
  
  public final T a()
  {
    if (this.b > 0)
    {
      int i = this.b - 1;
      Object localObject = this.a[i];
      this.a[i] = null;
      this.b -= 1;
      return (T)localObject;
    }
    return null;
  }
  
  public final boolean a(T paramT)
  {
    boolean bool = false;
    int i = 0;
    if (i < this.b) {
      if (this.a[i] != paramT) {}
    }
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label50;
      }
      throw new IllegalStateException("Already in the pool!");
      i += 1;
      break;
    }
    label50:
    if (this.b < this.a.length)
    {
      this.a[this.b] = paramT;
      this.b += 1;
      bool = true;
    }
    return bool;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */