package com.sleepycat.b;

import com.sleepycat.b.m.d;
import java.util.List;

public final class bf
  extends l
{
  public static final bf x = new bf();
  bl A;
  i B;
  ai C = ai.a;
  aj D;
  ak E;
  boolean F;
  boolean G;
  boolean y;
  bk z;
  
  public final l a(List<d> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return this;
    }
    throw new IllegalArgumentException("Triggers may only be associated with a Primary database");
  }
  
  public final String toString()
  {
    return "keyCreator=" + this.z + "\nmultiKeyCreator=" + this.A + "\nallowPopulate=" + this.y + "\nforeignKeyDatabase=" + this.B + "\nforeignKeyDeleteAction=" + this.C + "\nforeignKeyNullifier=" + this.D + "\nforeignMultiKeyNullifier=" + this.E + "\nimmutableSecondaryKey=" + this.G + "\n";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */