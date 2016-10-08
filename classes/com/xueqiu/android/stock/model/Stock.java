package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Stock
  implements Parcelable
{
  public static final Parcelable.Creator<Stock> CREATOR = new Parcelable.Creator()
  {
    public final Stock createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Stock(paramAnonymousParcel, null);
    }
    
    public final Stock[] newArray(int paramAnonymousInt)
    {
      return new Stock[paramAnonymousInt];
    }
  };
  public static final String KEY_STOCK_CODE = "code";
  private String code = null;
  private String enName = null;
  private StockStatus flag = StockStatus.LISTED;
  private boolean hasExist = false;
  private String indColor;
  private long indId;
  private String indName;
  private String name = null;
  private long stockId;
  private String type;
  
  public Stock() {}
  
  private Stock(Parcel paramParcel)
  {
    this.stockId = paramParcel.readLong();
    this.indId = paramParcel.readLong();
    this.indName = paramParcel.readString();
    this.indColor = paramParcel.readString();
    this.code = paramParcel.readString();
    this.name = paramParcel.readString();
    this.enName = paramParcel.readString();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      this.hasExist = bool;
      this.flag = StockStatus.fromInt(paramParcel.readInt());
      this.type = paramParcel.readString();
      return;
      bool = false;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public String getEnName()
  {
    return this.enName;
  }
  
  public StockStatus getFlag()
  {
    return this.flag;
  }
  
  public String getIndColor()
  {
    return this.indColor;
  }
  
  public long getIndId()
  {
    return this.indId;
  }
  
  public String getIndName()
  {
    return this.indName;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public long getStockId()
  {
    return this.stockId;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public boolean isHasExist()
  {
    return this.hasExist;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setEnName(String paramString)
  {
    this.enName = paramString;
  }
  
  public void setFlag(StockStatus paramStockStatus)
  {
    this.flag = paramStockStatus;
  }
  
  public void setHasExist(boolean paramBoolean)
  {
    this.hasExist = paramBoolean;
  }
  
  public void setIndColor(String paramString)
  {
    this.indColor = paramString;
  }
  
  public void setIndId(long paramLong)
  {
    this.indId = paramLong;
  }
  
  public void setIndName(String paramString)
  {
    this.indName = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setStockId(long paramLong)
  {
    this.stockId = paramLong;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public String toString()
  {
    return this.name + "(" + this.code + ")";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.stockId);
    paramParcel.writeLong(this.indId);
    paramParcel.writeString(this.indName);
    paramParcel.writeString(this.indColor);
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.enName);
    if (this.hasExist) {}
    for (paramInt = 1;; paramInt = 2)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.flag.value());
      paramParcel.writeString(this.type);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\Stock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */