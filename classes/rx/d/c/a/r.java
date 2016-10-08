package rx.d.c.a;

abstract class r<E>
  extends a<E>
{
  private static final Integer f = Integer.getInteger("jctoolts.spsc.max.lookahead.step", 4096);
  protected final int e;
  
  public r(int paramInt)
  {
    super(paramInt);
    this.e = Math.min(paramInt / 4, f.intValue());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */