package c;

final class b
  extends Thread
{
  public b()
  {
    super("Okio Watchdog");
    setDaemon(true);
  }
  
  public final void run()
  {
    try
    {
      for (;;)
      {
        a locala = a.access$000();
        if (locala != null) {
          locala.timedOut();
        }
      }
    }
    catch (InterruptedException localInterruptedException) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */