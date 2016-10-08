package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class PaidMention
  implements Parcelable
{
  public static final Parcelable.Creator<PaidMention> CREATOR = new Parcelable.Creator()
  {
    public final PaidMention createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PaidMention(paramAnonymousParcel);
    }
    
    public final PaidMention[] newArray(int paramAnonymousInt)
    {
      return new PaidMention[paramAnonymousInt];
    }
  };
  @Expose
  private float amount;
  @Expose
  private float payment;
  @Expose
  private String state;
  @Expose
  private long userId;
  
  public PaidMention() {}
  
  protected PaidMention(Parcel paramParcel)
  {
    this.state = paramParcel.readString();
    this.amount = paramParcel.readFloat();
    this.payment = paramParcel.readFloat();
    this.userId = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getAmount()
  {
    return this.amount;
  }
  
  public float getPayment()
  {
    return this.payment;
  }
  
  public String getState()
  {
    return this.state;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public void setAmount(float paramFloat)
  {
    this.amount = paramFloat;
  }
  
  public void setPayment(float paramFloat)
  {
    this.payment = paramFloat;
  }
  
  public void setState(String paramString)
  {
    this.state = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.state);
    paramParcel.writeFloat(this.amount);
    paramParcel.writeFloat(this.payment);
    paramParcel.writeLong(this.userId);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\PaidMention.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */