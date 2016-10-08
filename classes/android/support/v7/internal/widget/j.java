package android.support.v7.internal.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class j
{
  public final ComponentName a;
  public final long b;
  public final float c;
  
  public j(ComponentName paramComponentName, long paramLong, float paramFloat)
  {
    this.a = paramComponentName;
    this.b = paramLong;
    this.c = paramFloat;
  }
  
  public j(String paramString, long paramLong, float paramFloat)
  {
    this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
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
      paramObject = (j)paramObject;
      if (this.a == null)
      {
        if (((j)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.equals(((j)paramObject).a)) {
        return false;
      }
      if (this.b != ((j)paramObject).b) {
        return false;
      }
    } while (Float.floatToIntBits(this.c) == Float.floatToIntBits(((j)paramObject).c));
    return false;
  }
  
  public final int hashCode()
  {
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return ((i + 31) * 31 + (int)(this.b ^ this.b >>> 32)) * 31 + Float.floatToIntBits(this.c);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("; activity:").append(this.a);
    localStringBuilder.append("; time:").append(this.b);
    localStringBuilder.append("; weight:").append(new BigDecimal(this.c));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */