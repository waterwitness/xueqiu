package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class Portfolio
  implements Parcelable
{
  public static final Parcelable.Creator<Portfolio> CREATOR = new Parcelable.Creator()
  {
    public final Portfolio createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool = true;
      Portfolio localPortfolio = new Portfolio();
      Portfolio.access$002(localPortfolio, paramAnonymousParcel.readInt());
      Portfolio.access$102(localPortfolio, paramAnonymousParcel.readString());
      Portfolio.access$202(localPortfolio, paramAnonymousParcel.readInt());
      if (paramAnonymousParcel.readInt() == 1) {}
      for (;;)
      {
        Portfolio.access$302(localPortfolio, bool);
        Portfolio.access$402(localPortfolio, paramAnonymousParcel.readInt());
        return localPortfolio;
        bool = false;
      }
    }
    
    public final Portfolio[] newArray(int paramAnonymousInt)
    {
      return new Portfolio[paramAnonymousInt];
    }
  };
  @Expose
  private int id;
  @Expose
  private boolean include;
  @Expose
  private String name;
  @Expose
  private int orderId;
  @Expose
  private int type;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getOrderId()
  {
    return this.orderId;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isInclude()
  {
    return this.include;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setInclude(boolean paramBoolean)
  {
    this.include = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.orderId);
    if (this.include) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.type);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\Portfolio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */