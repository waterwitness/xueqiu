package com.xueqiu.android.trade.patternlock;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

final class j
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<j> CREATOR = new Parcelable.Creator() {};
  final String a;
  final int b;
  final boolean c;
  final boolean d;
  
  private j(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = ((Boolean)paramParcel.readValue(null)).booleanValue();
    this.d = ((Boolean)paramParcel.readValue(null)).booleanValue();
  }
  
  private j(Parcelable paramParcelable, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramParcelable);
    this.a = paramString;
    this.b = paramInt;
    this.c = paramBoolean1;
    this.d = paramBoolean2;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeValue(Boolean.valueOf(this.c));
    paramParcel.writeValue(Boolean.valueOf(this.d));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */