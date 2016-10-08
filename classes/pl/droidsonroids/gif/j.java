package pl.droidsonroids.gif;

import android.content.res.AssetManager;
import android.support.annotation.NonNull;

public final class j
  extends i
{
  private final AssetManager a;
  private final String b;
  
  public j(@NonNull AssetManager paramAssetManager, @NonNull String paramString)
  {
    this.a = paramAssetManager;
    this.b = paramString;
  }
  
  final GifInfoHandle a()
  {
    return GifInfoHandle.a(this.a.openFd(this.b));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */