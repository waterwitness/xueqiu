package u.aly;

public final class fx
{
  public final String a;
  public final byte b;
  public final short c;
  
  public fx()
  {
    this("", (byte)0, (short)0);
  }
  
  public fx(String paramString, byte paramByte, short paramShort)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramShort;
  }
  
  public final String toString()
  {
    return "<TField name:'" + this.a + "' type:" + this.b + " field-id:" + this.c + ">";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */