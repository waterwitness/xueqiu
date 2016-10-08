package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class d
  implements Parcelable
{
  public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator() {};
  @Expose
  private long campaignId;
  @Expose
  private Date createAt;
  @Expose
  private long id;
  @Expose
  public g product;
  @Expose
  private long productId;
  @Expose
  private int quantity;
  @Expose
  private int status;
  @Expose
  private Date updateAt;
  @Expose
  private long userId;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = 0L;
    paramParcel.writeLong(this.campaignId);
    if (this.createAt == null)
    {
      l1 = 0L;
      paramParcel.writeLong(l1);
      paramParcel.writeLong(this.id);
      paramParcel.writeParcelable(this.product, paramInt);
      paramParcel.writeLong(this.productId);
      paramParcel.writeInt(this.quantity);
      paramParcel.writeInt(this.status);
      if (this.updateAt != null) {
        break label101;
      }
    }
    label101:
    for (long l1 = l2;; l1 = this.updateAt.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeLong(this.userId);
      return;
      l1 = this.createAt.getTime();
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */