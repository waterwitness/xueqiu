package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class IndustryInStock
  implements Parcelable
{
  public static final Parcelable.Creator<IndustryInStock> CREATOR = new Parcelable.Creator()
  {
    public final IndustryInStock createFromParcel(Parcel paramAnonymousParcel)
    {
      IndustryInStock localIndustryInStock = new IndustryInStock();
      IndustryInStock.access$002(localIndustryInStock, paramAnonymousParcel.readString());
      IndustryInStock.access$102(localIndustryInStock, Double.valueOf(paramAnonymousParcel.readDouble()));
      IndustryInStock.access$202(localIndustryInStock, Double.valueOf(paramAnonymousParcel.readDouble()));
      IndustryInStock.access$302(localIndustryInStock, Double.valueOf(paramAnonymousParcel.readDouble()));
      IndustryInStock.access$402(localIndustryInStock, paramAnonymousParcel.readString());
      IndustryInStock.access$502(localIndustryInStock, paramAnonymousParcel.readString());
      IndustryInStock.access$602(localIndustryInStock, paramAnonymousParcel.readString());
      IndustryInStock.access$702(localIndustryInStock, paramAnonymousParcel.readString());
      return localIndustryInStock;
    }
    
    public final IndustryInStock[] newArray(int paramAnonymousInt)
    {
      return new IndustryInStock[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("indCode")
  private String code;
  @Expose
  @SerializedName("indClass")
  private String indClass;
  @Expose
  @SerializedName("indName")
  private String name;
  @Expose
  private Double percent;
  @Expose
  @SerializedName("topStockCurrent")
  private Double topStockCurrent;
  @Expose
  @SerializedName("topStockName")
  private String topStockName;
  @Expose
  @SerializedName("topStockPercent")
  private Double topStockPercent;
  @Expose
  @SerializedName("topStockSymbol")
  private String topStockSymbol;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public String getIndClass()
  {
    return this.indClass;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public Double getPercent()
  {
    return this.percent;
  }
  
  public Double getTopStockCurrent()
  {
    return this.topStockCurrent;
  }
  
  public String getTopStockName()
  {
    return this.topStockName;
  }
  
  public Double getTopStockPercent()
  {
    return this.topStockPercent;
  }
  
  public String getTopStockSymbol()
  {
    return this.topStockSymbol;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setIndClass(String paramString)
  {
    this.indClass = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPercent(Double paramDouble)
  {
    this.percent = paramDouble;
  }
  
  public void setTopStockCurrent(Double paramDouble)
  {
    this.topStockCurrent = paramDouble;
  }
  
  public void setTopStockName(String paramString)
  {
    this.topStockName = paramString;
  }
  
  public void setTopStockPercent(Double paramDouble)
  {
    this.topStockPercent = paramDouble;
  }
  
  public void setTopStockSymbol(String paramString)
  {
    this.topStockSymbol = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeDouble(this.percent.doubleValue());
    paramParcel.writeDouble(this.topStockPercent.doubleValue());
    paramParcel.writeDouble(this.topStockCurrent.doubleValue());
    paramParcel.writeString(this.topStockSymbol);
    paramParcel.writeString(this.topStockName);
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.indClass);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\IndustryInStock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */