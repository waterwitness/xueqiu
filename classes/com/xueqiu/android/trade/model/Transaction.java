package com.xueqiu.android.trade.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Transaction
  implements Parcelable, Comparable<Transaction>
{
  public static final Parcelable.Creator<Transaction> CREATOR = new Parcelable.Creator()
  {
    public final Transaction createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Transaction(paramAnonymousParcel);
    }
    
    public final Transaction[] newArray(int paramAnonymousInt)
    {
      return new Transaction[paramAnonymousInt];
    }
  };
  @Expose
  private String action;
  @Expose
  @SerializedName("business_balance")
  private String businessBalance;
  @Expose
  private String camount;
  @Expose
  @SerializedName("commission_fees")
  private String commissionFees;
  @Expose
  private double cprice;
  @Expose
  private String ctime;
  @Expose
  private long ctimestamp;
  @Expose
  private String etype;
  @Expose
  private String msg;
  @Expose
  @SerializedName("occur_amount")
  private String occurAmount;
  @Expose
  @SerializedName("occur_balance")
  private String occurBalance;
  @Expose
  private String oid;
  @Expose
  private String pos;
  @Expose
  @SerializedName("post_amount")
  private String postAmount;
  @Expose
  @SerializedName("post_balance")
  private String postBalance;
  @Expose
  @SerializedName("result_code")
  private String resultCode;
  @Expose
  private String scode;
  @Expose
  private String sname;
  @Expose
  @SerializedName("stamp_duty")
  private String stampDuty;
  @Expose
  @SerializedName("stock_account")
  private String stockAccount;
  @Expose
  private String tradeName;
  @Expose
  @SerializedName("transfer_fees")
  private String transferFees;
  
  public Transaction() {}
  
  protected Transaction(Parcel paramParcel)
  {
    this.resultCode = paramParcel.readString();
    this.msg = paramParcel.readString();
    this.etype = paramParcel.readString();
    this.stockAccount = paramParcel.readString();
    this.scode = paramParcel.readString();
    this.sname = paramParcel.readString();
    this.action = paramParcel.readString();
    this.oid = paramParcel.readString();
    this.cprice = paramParcel.readDouble();
    this.camount = paramParcel.readString();
    this.ctime = paramParcel.readString();
    this.occurAmount = paramParcel.readString();
    this.postBalance = paramParcel.readString();
    this.businessBalance = paramParcel.readString();
    this.occurBalance = paramParcel.readString();
    this.postAmount = paramParcel.readString();
    this.commissionFees = paramParcel.readString();
    this.stampDuty = paramParcel.readString();
    this.transferFees = paramParcel.readString();
    this.pos = paramParcel.readString();
    this.ctimestamp = paramParcel.readLong();
    this.tradeName = paramParcel.readString();
  }
  
  public int compareTo(@NonNull Transaction paramTransaction)
  {
    if (this.ctimestamp - paramTransaction.getCtimestamp() > 0L) {
      return -1;
    }
    return 1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return this.action;
  }
  
  public String getBusinessBalance()
  {
    return this.businessBalance;
  }
  
  public String getCamount()
  {
    return this.camount;
  }
  
  public String getCommissionFees()
  {
    return this.commissionFees;
  }
  
  public double getCprice()
  {
    return this.cprice;
  }
  
  public String getCtime()
  {
    return this.ctime;
  }
  
  public long getCtimestamp()
  {
    return this.ctimestamp;
  }
  
  public String getEtype()
  {
    return this.etype;
  }
  
  public String getMsg()
  {
    return this.msg;
  }
  
  public String getOccurAmount()
  {
    return this.occurAmount;
  }
  
  public String getOccurBalance()
  {
    return this.occurBalance;
  }
  
  public String getOid()
  {
    return this.oid;
  }
  
  public String getPos()
  {
    return this.pos;
  }
  
  public String getPostAmount()
  {
    return this.postAmount;
  }
  
  public String getPostBalance()
  {
    return this.postBalance;
  }
  
  public String getResultCode()
  {
    return this.resultCode;
  }
  
  public String getScode()
  {
    return this.scode;
  }
  
  public String getSname()
  {
    return this.sname;
  }
  
  public String getStampDuty()
  {
    return this.stampDuty;
  }
  
  public String getStockAccount()
  {
    return this.stockAccount;
  }
  
  public String getTradeName()
  {
    return this.tradeName;
  }
  
  public String getTransferFees()
  {
    return this.transferFees;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setBusinessBalance(String paramString)
  {
    this.businessBalance = paramString;
  }
  
  public void setCamount(String paramString)
  {
    this.camount = paramString;
  }
  
  public void setCommissionFees(String paramString)
  {
    this.commissionFees = paramString;
  }
  
  public void setCprice(double paramDouble)
  {
    this.cprice = paramDouble;
  }
  
  public void setCtime(String paramString)
  {
    this.ctime = paramString;
  }
  
  public void setCtimestamp(long paramLong)
  {
    this.ctimestamp = paramLong;
  }
  
  public void setEtype(String paramString)
  {
    this.etype = paramString;
  }
  
  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
  
  public void setOccurAmount(String paramString)
  {
    this.occurAmount = paramString;
  }
  
  public void setOccurBalance(String paramString)
  {
    this.occurBalance = paramString;
  }
  
  public void setOid(String paramString)
  {
    this.oid = paramString;
  }
  
  public void setPos(String paramString)
  {
    this.pos = paramString;
  }
  
  public void setPostAmount(String paramString)
  {
    this.postAmount = paramString;
  }
  
  public void setPostBalance(String paramString)
  {
    this.postBalance = paramString;
  }
  
  public void setResultCode(String paramString)
  {
    this.resultCode = paramString;
  }
  
  public void setScode(String paramString)
  {
    this.scode = paramString;
  }
  
  public void setSname(String paramString)
  {
    this.sname = paramString;
  }
  
  public void setStampDuty(String paramString)
  {
    this.stampDuty = paramString;
  }
  
  public void setStockAccount(String paramString)
  {
    this.stockAccount = paramString;
  }
  
  public void setTradeName(String paramString)
  {
    this.tradeName = paramString;
  }
  
  public void setTransferFees(String paramString)
  {
    this.transferFees = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.resultCode);
    paramParcel.writeString(this.msg);
    paramParcel.writeString(this.etype);
    paramParcel.writeString(this.stockAccount);
    paramParcel.writeString(this.scode);
    paramParcel.writeString(this.sname);
    paramParcel.writeString(this.action);
    paramParcel.writeString(this.oid);
    paramParcel.writeDouble(this.cprice);
    paramParcel.writeString(this.camount);
    paramParcel.writeString(this.ctime);
    paramParcel.writeString(this.occurAmount);
    paramParcel.writeString(this.postBalance);
    paramParcel.writeString(this.businessBalance);
    paramParcel.writeString(this.occurBalance);
    paramParcel.writeString(this.postAmount);
    paramParcel.writeString(this.commissionFees);
    paramParcel.writeString(this.stampDuty);
    paramParcel.writeString(this.transferFees);
    paramParcel.writeString(this.pos);
    paramParcel.writeLong(this.ctimestamp);
    paramParcel.writeString(this.tradeName);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\Transaction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */