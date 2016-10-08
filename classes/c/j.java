package c;

public abstract class j
  implements s
{
  private final s delegate;
  
  public j(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = params;
  }
  
  public void close()
  {
    this.delegate.close();
  }
  
  public final s delegate()
  {
    return this.delegate;
  }
  
  public long read(d paramd, long paramLong)
  {
    return this.delegate.read(paramd, paramLong);
  }
  
  public t timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */