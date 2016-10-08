package android.support.v4.d;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

public final class f<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final e<T> a;
  
  public f(e<T> parame)
  {
    this.a = parame;
  }
  
  public final T createFromParcel(Parcel paramParcel)
  {
    return (T)this.a.a(paramParcel, null);
  }
  
  public final T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return (T)this.a.a(paramParcel, paramClassLoader);
  }
  
  public final T[] newArray(int paramInt)
  {
    return this.a.a(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */