package pl.droidsonroids.gif;

import android.support.annotation.NonNull;
import java.io.IOException;
import java.util.Locale;

public class GifIOException
  extends IOException
{
  @NonNull
  public final c a;
  
  GifIOException(int paramInt)
  {
    this(c.a(paramInt));
  }
  
  private GifIOException(@NonNull c paramc)
  {
    super(String.format(Locale.US, "GifError %d: %s", new Object[] { Integer.valueOf(paramc.w), paramc.v }));
    this.a = paramc;
  }
  
  static GifIOException a(int paramInt)
  {
    if (paramInt == c.a.w) {
      return null;
    }
    return new GifIOException(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\GifIOException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */