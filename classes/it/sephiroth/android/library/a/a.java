package it.sephiroth.android.library.a;

public final class a
  implements b
{
  public final double a(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    paramDouble1 = paramDouble1 / paramDouble3 - 1.0D;
    return (paramDouble1 * (paramDouble1 * paramDouble1) + 1.0D) * paramDouble2 + 0.0D;
  }
  
  public final double b(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    paramDouble1 /= paramDouble3 / 2.0D;
    if (paramDouble1 < 1.0D) {
      return paramDouble1 * (paramDouble2 / 2.0D * paramDouble1 * paramDouble1) + 0.0D;
    }
    paramDouble2 /= 2.0D;
    paramDouble1 -= 2.0D;
    return (paramDouble1 * (paramDouble1 * paramDouble1) + 2.0D) * paramDouble2 + 0.0D;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\it\sephiroth\android\library\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */