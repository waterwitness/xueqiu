package b.a.a;

final class a
  implements Runnable
{
  final i a;
  private final c b;
  
  a(c paramc)
  {
    this.b = paramc;
    this.a = new i();
  }
  
  public final void run()
  {
    h localh = this.a.a();
    if (localh == null) {
      throw new IllegalStateException("No pending post available");
    }
    this.b.a(localh);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */