package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class u
  implements Parcelable
{
  public static final Parcelable.Creator<u> CREATOR = new Parcelable.Creator() {};
  w[] a;
  int[] b;
  e[] c;
  
  public u() {}
  
  public u(Parcel paramParcel)
  {
    this.a = ((w[])paramParcel.createTypedArray(w.CREATOR));
    this.b = paramParcel.createIntArray();
    this.c = ((e[])paramParcel.createTypedArray(e.CREATOR));
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(this.a, paramInt);
    paramParcel.writeIntArray(this.b);
    paramParcel.writeTypedArray(this.c, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */