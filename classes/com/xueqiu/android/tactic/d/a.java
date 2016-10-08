package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class a
  implements Parcelable
{
  public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator() {};
  @Expose
  private int id;
  @Expose
  private String label;
  @Expose
  private long productId;
  @Expose
  private Date updateAt;
  @Expose
  private String value;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeString(this.label);
    paramParcel.writeLong(this.productId);
    if (this.updateAt == null) {}
    for (long l = 0L;; l = this.updateAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(this.value);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */