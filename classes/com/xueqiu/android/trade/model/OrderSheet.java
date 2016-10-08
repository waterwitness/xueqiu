package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class OrderSheet
  implements Parcelable
{
  public static final Parcelable.Creator<OrderSheet> CREATOR = new Parcelable.Creator()
  {
    public final OrderSheet createFromParcel(Parcel paramAnonymousParcel)
    {
      return new OrderSheet(paramAnonymousParcel);
    }
    
    public final OrderSheet[] newArray(int paramAnonymousInt)
    {
      return new OrderSheet[paramAnonymousInt];
    }
  };
  @Expose
  private String oid;
  @Expose
  private String xoid;
  
  protected OrderSheet(Parcel paramParcel)
  {
    this.oid = paramParcel.readString();
    this.xoid = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getOrderId()
  {
    return this.oid;
  }
  
  public String getXoid()
  {
    return this.xoid;
  }
  
  public void setOrderId(String paramString)
  {
    this.oid = paramString;
  }
  
  public void setXoid(String paramString)
  {
    this.xoid = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.oid);
    paramParcel.writeString(this.xoid);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\OrderSheet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */