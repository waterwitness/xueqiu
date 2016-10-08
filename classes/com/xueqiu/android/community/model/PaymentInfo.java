package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class PaymentInfo
  implements Parcelable
{
  public static final Parcelable.Creator<PaymentInfo> CREATOR = new Parcelable.Creator()
  {
    public final PaymentInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      PaymentInfo localPaymentInfo = new PaymentInfo();
      PaymentInfo.access$002(localPaymentInfo, paramAnonymousParcel.readInt());
      PaymentInfo.access$102(localPaymentInfo, paramAnonymousParcel.readString());
      return localPaymentInfo;
    }
    
    public final PaymentInfo[] newArray(int paramAnonymousInt)
    {
      return new PaymentInfo[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("orderId")
  private int orderId;
  @Expose
  @SerializedName("paymentInfo")
  private String paymentInfo;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getOrderId()
  {
    return this.orderId;
  }
  
  public String getPaymentInfo()
  {
    return this.paymentInfo;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
  
  public void setPaymentInfo(String paramString)
  {
    this.paymentInfo = paramString;
  }
  
  public String toString()
  {
    return "PaymentInfo{orderId=" + this.orderId + ", paymentInfo='" + this.paymentInfo + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.orderId);
    paramParcel.writeString(this.paymentInfo);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\PaymentInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */