package com.tencent.bugly.proguard;

import java.util.ArrayList;

public final class al
  extends j
  implements Cloneable
{
  private static ArrayList<ak> b;
  public ArrayList<ak> a = null;
  
  public final void a(h paramh)
  {
    if (b == null)
    {
      b = new ArrayList();
      ak localak = new ak();
      b.add(localak);
    }
    this.a = ((ArrayList)paramh.a(b, 0, true));
  }
  
  public final void a(i parami)
  {
    parami.a(this.a, 0);
  }
  
  public final void a(StringBuilder paramStringBuilder, int paramInt) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */