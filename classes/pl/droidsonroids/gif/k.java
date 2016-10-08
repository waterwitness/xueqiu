package pl.droidsonroids.gif;

import android.content.res.Resources;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.RawRes;

public final class k
  extends i
{
  private final Resources a;
  private final int b;
  
  public k(@NonNull Resources paramResources, @DrawableRes @RawRes int paramInt)
  {
    this.a = paramResources;
    this.b = paramInt;
  }
  
  final GifInfoHandle a()
  {
    return GifInfoHandle.a(this.a.openRawResourceFd(this.b));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */