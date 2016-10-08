package c;

public abstract class i
  implements r
{
  private final r delegate;
  
  public i(r paramr)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("delegate == null");
    }
    this.delegate = paramr;
  }
  
  public void close()
  {
    this.delegate.close();
  }
  
  public final r delegate()
  {
    return this.delegate;
  }
  
  public void flush()
  {
    this.delegate.flush();
  }
  
  public t timeout()
  {
    return this.delegate.timeout();
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
  }
  
  public void write(d paramd, long paramLong)
  {
    this.delegate.write(paramd, paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */