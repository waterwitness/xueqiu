package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.List;

public class OrderCondition
  implements Parcelable
{
  public static final Parcelable.Creator<OrderCondition> CREATOR = new Parcelable.Creator()
  {
    public final OrderCondition createFromParcel(Parcel paramAnonymousParcel)
    {
      return new OrderCondition(paramAnonymousParcel);
    }
    
    public final OrderCondition[] newArray(int paramAnonymousInt)
    {
      return new OrderCondition[paramAnonymousInt];
    }
  };
  @Expose
  private double buyUnit;
  @Expose
  private double enableAmount;
  @Expose
  private Double enableBalance;
  @Expose
  private List<OrderCondition.EntrustProp> entrustProp;
  @Expose
  private String etype;
  @Expose
  private Boolean isMargin;
  @Expose
  private Double marginBuyingPower;
  @Expose
  private Double nonMarginBuyingPower;
  @Expose
  private double priceStep;
  @Expose
  private String scode;
  
  protected OrderCondition(Parcel paramParcel)
  {
    this.enableAmount = paramParcel.readDouble();
    this.buyUnit = paramParcel.readDouble();
    this.priceStep = paramParcel.readDouble();
    this.scode = paramParcel.readString();
    this.etype = paramParcel.readString();
    this.enableBalance = ((Double)paramParcel.readValue(Double.class.getClassLoader()));
    this.nonMarginBuyingPower = ((Double)paramParcel.readValue(Double.class.getClassLoader()));
    this.marginBuyingPower = ((Double)paramParcel.readValue(Double.class.getClassLoader()));
    if (paramParcel.readInt() == 1) {}
    for (boolean bool = true;; bool = false)
    {
      this.isMargin = Boolean.valueOf(bool);
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public double getBuyUnit()
  {
    return this.buyUnit;
  }
  
  public double getEnableAmount()
  {
    return this.enableAmount;
  }
  
  public Double getEnableBalance()
  {
    return this.enableBalance;
  }
  
  public List<OrderCondition.EntrustProp> getEntrustPropList()
  {
    return this.entrustProp;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public Boolean getMargin()
  {
    return this.isMargin;
  }
  
  public Double getMarginBuyingPower()
  {
    return this.marginBuyingPower;
  }
  
  public Double getNonMarginBuyingPower()
  {
    return this.nonMarginBuyingPower;
  }
  
  public double getPriceStep()
  {
    return this.priceStep;
  }
  
  public String getScode()
  {
    return this.scode;
  }
  
  public void setBuyUnit(double paramDouble)
  {
    this.buyUnit = paramDouble;
  }
  
  public void setEnableAmount(double paramDouble)
  {
    this.enableAmount = paramDouble;
  }
  
  public void setEnableBalance(Double paramDouble)
  {
    this.enableBalance = paramDouble;
  }
  
  public void setEntrustPropList(List<OrderCondition.EntrustProp> paramList)
  {
    this.entrustProp = paramList;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setMargin(Boolean paramBoolean)
  {
    this.isMargin = paramBoolean;
  }
  
  public void setMarginBuyingPower(Double paramDouble)
  {
    this.marginBuyingPower = paramDouble;
  }
  
  public void setNonMarginBuyingPower(Double paramDouble)
  {
    this.nonMarginBuyingPower = paramDouble;
  }
  
  public void setPriceStep(double paramDouble)
  {
    this.priceStep = paramDouble;
  }
  
  public void setScode(String paramString)
  {
    this.scode = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.enableAmount);
    paramParcel.writeDouble(this.buyUnit);
    paramParcel.writeDouble(this.priceStep);
    paramParcel.writeString(this.scode);
    paramParcel.writeString(this.etype);
    paramParcel.writeValue(this.enableBalance);
    paramParcel.writeValue(this.nonMarginBuyingPower);
    paramParcel.writeValue(this.marginBuyingPower);
    if (this.isMargin.booleanValue()) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\OrderCondition.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */