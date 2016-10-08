package com.sleepycat.b.i.b;

import com.sleepycat.b.am;
import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.az;

public class ac
  extends az
{
  s a = null;
  ai b = null;
  ai c = null;
  long d = Long.MIN_VALUE;
  final int e;
  int f;
  private am m;
  
  public ac(x paramx, s params, ai paramai1, ai paramai2, long paramLong, int paramInt1, int paramInt2, am paramam)
  {
    super(paramx);
    this.a = params;
    this.b = paramai1;
    this.c = paramai2;
    this.d = paramLong;
    this.e = paramInt1;
    this.f = paramInt2;
    this.m = paramam;
  }
  
  public final av a()
  {
    return this.g.g;
  }
  
  public final String b()
  {
    Object localObject2 = new StringBuilder().append(d()).append("|");
    if (this.a != null)
    {
      localObject1 = this.a.a();
      localObject2 = ((StringBuilder)localObject2).append((String)localObject1).append("|");
      if (this.b == null) {
        break label202;
      }
      localObject1 = this.b.b();
      label65:
      localObject2 = ((StringBuilder)localObject2).append((String)localObject1).append("|");
      if (this.c == null) {
        break label208;
      }
      localObject1 = this.c.b();
      label93:
      localObject2 = ((StringBuilder)localObject2).append((String)localObject1).append("|");
      if (this.d != Long.MIN_VALUE) {
        break label214;
      }
    }
    label202:
    label208:
    label214:
    for (Object localObject1 = "";; localObject1 = Long.toString(this.d))
    {
      localObject2 = (String)localObject1 + "|" + this.e;
      localObject1 = localObject2;
      if (x.a(this.i) > 1) {
        localObject1 = (String)localObject2 + "|" + this.f + "|" + this.m.toString();
      }
      return (String)localObject1;
      localObject1 = "";
      break;
      localObject1 = "";
      break label65;
      localObject1 = "";
      break label93;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!super.equals(paramObject)) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (ac)paramObject;
      if (!this.g.equals(((ac)paramObject).g)) {
        return false;
      }
      if (this.b == null)
      {
        if (((ac)paramObject).b != null) {
          return false;
        }
      }
      else if (!this.b.equals(((ac)paramObject).b)) {
        return false;
      }
      if (this.a == null)
      {
        if (((ac)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.equals(((ac)paramObject).a)) {
        return false;
      }
      if (this.e != ((ac)paramObject).e) {
        return false;
      }
      if (x.a(this.i) > 1)
      {
        if (this.f != ((ac)paramObject).f) {
          return false;
        }
        if (this.m.a(((ac)paramObject).m) != 0) {
          return false;
        }
      }
      if (this.c == null)
      {
        if (((ac)paramObject).c != null) {
          return false;
        }
      }
      else if (!this.c.equals(((ac)paramObject).c)) {
        return false;
      }
    } while (this.d == ((ac)paramObject).d);
    return false;
  }
  
  public int hashCode()
  {
    int k = 0;
    int n = super.hashCode();
    int i1 = this.g.hashCode();
    int i;
    int j;
    label35:
    int i2;
    if (this.b == null)
    {
      i = 0;
      if (this.a != null) {
        break label141;
      }
      j = 0;
      i2 = this.e;
      if (this.c != null) {
        break label152;
      }
    }
    for (;;)
    {
      j = (((j + (i + (n * 31 + i1) * 31) * 31) * 31 + i2) * 31 + k) * 31 + (int)(this.d ^ this.d >>> 32);
      i = j;
      if (x.a(this.i) > 1) {
        i = j + (j * 31 + this.f + this.m.hashCode());
      }
      return i;
      i = this.b.hashCode();
      break;
      label141:
      j = this.a.hashCode();
      break label35;
      label152:
      k = this.c.hashCode();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */