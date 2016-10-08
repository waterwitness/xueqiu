package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class o
  implements Parcelable
{
  public static final Parcelable.Creator<o> CREATOR = new Parcelable.Creator() {};
  int a;
  int b;
  boolean c;
  
  public o() {}
  
  o(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      this.c = bool;
      return;
      bool = false;
    }
  }
  
  public o(o paramo)
  {
    this.a = paramo.a;
    this.b = paramo.b;
    this.c = paramo.c;
  }
  
  final boolean a()
  {
    return this.a >= 0;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
    if (this.c) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */