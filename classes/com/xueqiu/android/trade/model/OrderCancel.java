package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class OrderCancel
  implements Parcelable
{
  public static final Parcelable.Creator<OrderCancel> CREATOR = new Parcelable.Creator()
  {
    public final OrderCancel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new OrderCancel(paramAnonymousParcel);
    }
    
    public final OrderCancel[] newArray(int paramAnonymousInt)
    {
      return new OrderCancel[paramAnonymousInt];
    }
  };
  @SerializedName("cancel_oid")
  private String cancelOid;
  private String cur;
  private String etype;
  @SerializedName("init_date")
  private Long initDate;
  private String oid;
  private String ostatus;
  @SerializedName("report_no")
  private String reportNo;
  @SerializedName("seat_no")
  private String seatNo;
  @SerializedName("stock_account")
  private String stockAccount;
  
  public OrderCancel() {}
  
  protected OrderCancel(Parcel paramParcel)
  {
    this.initDate = ((Long)paramParcel.readValue(Long.class.getClassLoader()));
    this.cancelOid = paramParcel.readString();
    this.oid = paramParcel.readString();
    this.etype = paramParcel.readString();
    this.stockAccount = paramParcel.readString();
    this.cur = paramParcel.readString();
    this.ostatus = paramParcel.readString();
    this.reportNo = paramParcel.readString();
    this.seatNo = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCancelOid()
  {
    return this.cancelOid;
  }
  
  public String getCur()
  {
    return this.cur;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public Long getInitDate()
  {
    return this.initDate;
  }
  
  public String getOid()
  {
    return this.oid;
  }
  
  public String getOstatus()
  {
    return this.ostatus;
  }
  
  public String getReportNo()
  {
    return this.reportNo;
  }
  
  public String getSeatNo()
  {
    return this.seatNo;
  }
  
  public String getStockAccount()
  {
    return this.stockAccount;
  }
  
  public void setCancelOid(String paramString)
  {
    this.cancelOid = paramString;
  }
  
  public void setCur(String paramString)
  {
    this.cur = paramString;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setInitDate(Long paramLong)
  {
    this.initDate = paramLong;
  }
  
  public void setOid(String paramString)
  {
    this.oid = paramString;
  }
  
  public void setOstatus(String paramString)
  {
    this.ostatus = paramString;
  }
  
  public void setReportNo(String paramString)
  {
    this.reportNo = paramString;
  }
  
  public void setSeatNo(String paramString)
  {
    this.seatNo = paramString;
  }
  
  public void setStockAccount(String paramString)
  {
    this.stockAccount = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.initDate);
    paramParcel.writeString(this.cancelOid);
    paramParcel.writeString(this.oid);
    paramParcel.writeString(this.etype);
    paramParcel.writeString(this.stockAccount);
    paramParcel.writeString(this.cur);
    paramParcel.writeString(this.ostatus);
    paramParcel.writeString(this.reportNo);
    paramParcel.writeString(this.seatNo);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\OrderCancel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */