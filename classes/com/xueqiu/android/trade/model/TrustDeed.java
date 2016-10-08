package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class TrustDeed
  implements Parcelable
{
  public static final Parcelable.Creator<TrustDeed> CREATOR = new Parcelable.Creator()
  {
    public final TrustDeed createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TrustDeed(paramAnonymousParcel);
    }
    
    public final TrustDeed[] newArray(int paramAnonymousInt)
    {
      return new TrustDeed[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("action")
  private String action;
  @Expose
  @SerializedName("amount")
  private String amount;
  @Expose
  @SerializedName("batch_no")
  private String batchNo;
  @Expose
  @SerializedName("camount")
  private String camount;
  @Expose
  @SerializedName("cprice")
  private double cprice;
  @Expose
  @SerializedName("ctime")
  private String ctime;
  @Expose
  @SerializedName("etype")
  private String etype;
  @Expose
  @SerializedName("oid")
  private String oid;
  @Expose
  @SerializedName("oprop")
  private String oprop;
  @Expose
  @SerializedName("ostatus")
  private String ostatus;
  @Expose
  @SerializedName("ostatus_color")
  private String ostatusColor;
  @Expose
  @SerializedName("ostatus_name")
  private String ostatusName;
  @Expose
  @SerializedName("otime")
  private String otime;
  @Expose
  @SerializedName("otimestamp")
  private long otimestamp;
  @Expose
  @SerializedName("pos")
  private String pos;
  @Expose
  @SerializedName("price")
  private double price;
  @Expose
  @SerializedName("can_withdraw")
  private boolean revokeable;
  @Expose
  @SerializedName("scode")
  private String scode;
  @Expose
  @SerializedName("sname")
  private String sname;
  @Expose
  @SerializedName("stock_account")
  private String stockAccount;
  
  public TrustDeed() {}
  
  protected TrustDeed(Parcel paramParcel)
  {
    this.etype = paramParcel.readString();
    this.stockAccount = paramParcel.readString();
    this.scode = paramParcel.readString();
    this.sname = paramParcel.readString();
    this.action = paramParcel.readString();
    this.oid = paramParcel.readString();
    this.batchNo = paramParcel.readString();
    this.price = paramParcel.readDouble();
    this.amount = paramParcel.readString();
    this.cprice = paramParcel.readDouble();
    this.camount = paramParcel.readString();
    this.ostatus = paramParcel.readString();
    this.otime = paramParcel.readString();
    this.ctime = paramParcel.readString();
    this.pos = paramParcel.readString();
    this.oprop = paramParcel.readString();
    this.ostatusName = paramParcel.readString();
    this.ostatusColor = paramParcel.readString();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.revokeable = bool;
      this.otimestamp = paramParcel.readLong();
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return this.action;
  }
  
  public String getAmount()
  {
    return this.amount;
  }
  
  public String getBatchNo()
  {
    return this.batchNo;
  }
  
  public String getCamount()
  {
    return this.camount;
  }
  
  public double getCprice()
  {
    return this.cprice;
  }
  
  public String getCtime()
  {
    return this.ctime;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public String getOid()
  {
    return this.oid;
  }
  
  public String getOprop()
  {
    return this.oprop;
  }
  
  public String getOstatus()
  {
    return this.ostatus;
  }
  
  public String getOstatusColor()
  {
    return this.ostatusColor;
  }
  
  public String getOstatusName()
  {
    return this.ostatusName;
  }
  
  public String getOtime()
  {
    return this.otime;
  }
  
  public long getOtimestamp()
  {
    return this.otimestamp;
  }
  
  public String getPos()
  {
    return this.pos;
  }
  
  public double getPrice()
  {
    return this.price;
  }
  
  public String getScode()
  {
    return this.scode;
  }
  
  public String getSname()
  {
    return this.sname;
  }
  
  public String getStockAccount()
  {
    return this.stockAccount;
  }
  
  public boolean isRevokeable()
  {
    return this.revokeable;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setAmount(String paramString)
  {
    this.amount = paramString;
  }
  
  public void setBatchNo(String paramString)
  {
    this.batchNo = paramString;
  }
  
  public void setCamount(String paramString)
  {
    this.camount = paramString;
  }
  
  public void setCprice(double paramDouble)
  {
    this.cprice = paramDouble;
  }
  
  public void setCtime(String paramString)
  {
    this.ctime = paramString;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setOid(String paramString)
  {
    this.oid = paramString;
  }
  
  public void setOprop(String paramString)
  {
    this.oprop = paramString;
  }
  
  public void setOstatus(String paramString)
  {
    this.ostatus = paramString;
  }
  
  public void setOstatusColor(String paramString)
  {
    this.ostatusColor = paramString;
  }
  
  public void setOstatusName(String paramString)
  {
    this.ostatusName = paramString;
  }
  
  public void setOtime(String paramString)
  {
    this.otime = paramString;
  }
  
  public void setOtimestamp(long paramLong)
  {
    this.otimestamp = paramLong;
  }
  
  public void setPos(String paramString)
  {
    this.pos = paramString;
  }
  
  public void setPrice(double paramDouble)
  {
    this.price = paramDouble;
  }
  
  public void setRevokeable(boolean paramBoolean)
  {
    this.revokeable = paramBoolean;
  }
  
  public void setScode(String paramString)
  {
    this.scode = paramString;
  }
  
  public void setSname(String paramString)
  {
    this.sname = paramString;
  }
  
  public void setStockAccount(String paramString)
  {
    this.stockAccount = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.etype);
    paramParcel.writeString(this.stockAccount);
    paramParcel.writeString(this.scode);
    paramParcel.writeString(this.sname);
    paramParcel.writeString(this.action);
    paramParcel.writeString(this.oid);
    paramParcel.writeString(this.batchNo);
    paramParcel.writeDouble(this.price);
    paramParcel.writeString(this.amount);
    paramParcel.writeDouble(this.cprice);
    paramParcel.writeString(this.camount);
    paramParcel.writeString(this.ostatus);
    paramParcel.writeString(this.otime);
    paramParcel.writeString(this.ctime);
    paramParcel.writeString(this.pos);
    paramParcel.writeString(this.oprop);
    paramParcel.writeString(this.ostatusName);
    paramParcel.writeString(this.ostatusColor);
    if (this.revokeable) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeLong(this.otimestamp);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\TrustDeed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */