package rx.h;

final class e
  extends rx.g
{
  private static final rx.d.c.g b = new rx.d.c.g("RxComputationThreadPool-");
  final g a = new g();
  
  public final rx.h a()
  {
    g localg = this.a;
    h[] arrayOfh = localg.b;
    long l = localg.c;
    localg.c = (1L + l);
    return new f(arrayOfh[((int)(l % localg.a))]);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */