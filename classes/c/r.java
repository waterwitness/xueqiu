package c;

import java.io.Closeable;
import java.io.Flushable;

public abstract interface r
  extends Closeable, Flushable
{
  public abstract void close();
  
  public abstract void flush();
  
  public abstract t timeout();
  
  public abstract void write(d paramd, long paramLong);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */