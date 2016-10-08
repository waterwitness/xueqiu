package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;

public class StockGroup
  implements Parcelable
{
  private Date createAt;
  private int grouId;
  private String name = null;
  private int orderId;
  private String[] stockCodes = null;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getCreateAt()
  {
    return this.createAt;
  }
  
  public int getGrouId()
  {
    return this.grouId;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getOrderId()
  {
    return this.orderId;
  }
  
  public String[] getStockCodes()
  {
    return this.stockCodes;
  }
  
  public void setCreateAt(Date paramDate)
  {
    this.createAt = paramDate;
  }
  
  public void setGrouId(int paramInt)
  {
    this.grouId = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
  
  public void setStockCodes(String[] paramArrayOfString)
  {
    this.stockCodes = paramArrayOfString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.grouId);
    paramParcel.writeInt(this.orderId);
    paramParcel.writeStringArray(this.stockCodes);
    if (this.createAt == null) {}
    for (long l = System.currentTimeMillis();; l = this.createAt.getTime())
    {
      paramParcel.writeLong(l);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */