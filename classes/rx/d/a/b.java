package rx.d.a;

import java.io.Serializable;

class b
  implements Serializable
{
  private final Throwable a;
  
  public b(Throwable paramThrowable)
  {
    this.a = paramThrowable;
  }
  
  public String toString()
  {
    return "Notification=>Error:" + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */