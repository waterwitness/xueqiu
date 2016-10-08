package rx.b;

final class b
  extends RuntimeException
{
  static String a = "Chain of Causes for CompositeException In Order Received =>";
  
  public final String getMessage()
  {
    return a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */