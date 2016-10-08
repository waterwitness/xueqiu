package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.ArrayList;
import java.util.Date;

public class h
  implements Parcelable
{
  public static final Parcelable.Creator<h> CREATOR = new Parcelable.Creator() {};
  @Expose
  public Date createdAt;
  @Expose
  public long id;
  @Expose
  public g product;
  @Expose
  public int stockTotal;
  @Expose
  public ArrayList<b> stocks;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    if (this.createdAt == null) {}
    for (long l = 0L;; l = this.createdAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(this.product, paramInt);
      paramParcel.writeInt(this.stockTotal);
      paramParcel.writeList(this.stocks);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */