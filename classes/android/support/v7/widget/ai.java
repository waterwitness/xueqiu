package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

final class ai
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<ai> CREATOR = new Parcelable.Creator() {};
  Parcelable a;
  
  ai(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readParcelable(aa.class.getClassLoader());
  }
  
  ai(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.a, 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */