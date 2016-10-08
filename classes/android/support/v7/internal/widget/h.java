package android.support.v7.internal.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class h
  implements Comparable<h>
{
  public final ResolveInfo a;
  public float b;
  
  public h(g paramg, ResolveInfo paramResolveInfo)
  {
    this.a = paramResolveInfo;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (h)paramObject;
    } while (Float.floatToIntBits(this.b) == Float.floatToIntBits(((h)paramObject).b));
    return false;
  }
  
  public final int hashCode()
  {
    return Float.floatToIntBits(this.b) + 31;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(this.a.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(this.b));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */