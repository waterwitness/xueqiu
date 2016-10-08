package com.xueqiu.android.common.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.View.BaseSavedState;

final class at
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<at> CREATOR = new Parcelable.Creator() {};
  CharSequence a;
  CharSequence b;
  
  private at(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.b = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }
  
  at(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    TextUtils.writeToParcel(this.a, paramParcel, paramInt);
    TextUtils.writeToParcel(this.b, paramParcel, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */