package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class TradeFee
  implements Parcelable
{
  public static final Parcelable.Creator<TradeFee> CREATOR = new Parcelable.Creator()
  {
    public final TradeFee createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TradeFee(paramAnonymousParcel);
    }
    
    public final TradeFee[] newArray(int paramAnonymousInt)
    {
      return new TradeFee[paramAnonymousInt];
    }
  };
  @Expose
  private double calculateAmount;
  
  protected TradeFee(Parcel paramParcel)
  {
    this.calculateAmount = paramParcel.readDouble();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getCalculateAmount()
  {
    return this.calculateAmount;
  }
  
  public void setCalculateAmount(double paramDouble)
  {
    this.calculateAmount = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.calculateAmount);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TradeFee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */