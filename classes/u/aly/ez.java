package u.aly;

public final class ez
{
  int a = -1;
  private short[] b = new short[15];
  
  public final short a()
  {
    short[] arrayOfShort = this.b;
    int i = this.a;
    this.a = (i - 1);
    return arrayOfShort[i];
  }
  
  public final void a(short paramShort)
  {
    if (this.b.length == this.a + 1)
    {
      arrayOfShort = new short[this.b.length * 2];
      System.arraycopy(this.b, 0, arrayOfShort, 0, this.b.length);
      this.b = arrayOfShort;
    }
    short[] arrayOfShort = this.b;
    int i = this.a + 1;
    this.a = i;
    arrayOfShort[i] = paramShort;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<ShortStack vector:[");
    int i = 0;
    for (;;)
    {
      if (i >= this.b.length)
      {
        localStringBuilder.append("]>");
        return localStringBuilder.toString();
      }
      if (i != 0) {
        localStringBuilder.append(" ");
      }
      if (i == this.a) {
        localStringBuilder.append(">>");
      }
      localStringBuilder.append(this.b[i]);
      if (i == this.a) {
        localStringBuilder.append("<<");
      }
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */