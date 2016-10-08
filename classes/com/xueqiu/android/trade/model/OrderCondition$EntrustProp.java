package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class OrderCondition$EntrustProp
  implements Parcelable
{
  public final Parcelable.Creator<EntrustProp> CREATOR = new Parcelable.Creator()
  {
    public OrderCondition.EntrustProp createFromParcel(Parcel paramAnonymousParcel)
    {
      return new OrderCondition.EntrustProp(OrderCondition.EntrustProp.this.this$0, paramAnonymousParcel);
    }
    
    public OrderCondition.EntrustProp[] newArray(int paramAnonymousInt)
    {
      return new OrderCondition.EntrustProp[paramAnonymousInt];
    }
  };
  @Expose
  private String oprop;
  
  protected OrderCondition$EntrustProp(OrderCondition paramOrderCondition, Parcel paramParcel)
  {
    this.oprop = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getOprop()
  {
    return this.oprop;
  }
  
  public void setOprop(String paramString)
  {
    this.oprop = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.oprop);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\OrderCondition$EntrustProp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */