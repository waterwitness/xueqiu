package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Calendar;

public class StockOption
  implements Parcelable
{
  public static final Parcelable.Creator<StockOption> CREATOR = new Parcelable.Creator()
  {
    public final StockOption createFromParcel(Parcel paramAnonymousParcel)
    {
      StockOption localStockOption = new StockOption();
      StockOption.access$002(localStockOption, paramAnonymousParcel.readString());
      StockOption.access$102(localStockOption, paramAnonymousParcel.readString());
      StockOption.access$202(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$302(localStockOption, paramAnonymousParcel.readString());
      StockOption.access$402(localStockOption, paramAnonymousParcel.readString());
      StockOption.access$502(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$602(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$702(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$802(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$902(localStockOption, paramAnonymousParcel.readDouble());
      StockOption.access$1002(localStockOption, (Calendar)paramAnonymousParcel.readValue(Calendar.class.getClassLoader()));
      return localStockOption;
    }
    
    public final StockOption[] newArray(int paramAnonymousInt)
    {
      return new StockOption[paramAnonymousInt];
    }
  };
  @Expose
  private String bondType;
  @Expose
  private double chg;
  @Expose
  private double current;
  @Expose
  private String dueDate;
  @Expose
  private double high;
  @Expose
  private double low;
  @Expose
  private String name;
  @Expose
  private double percent;
  @Expose
  private String symbol;
  @Expose
  private Calendar time;
  @Expose
  private double volume;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBondType()
  {
    return this.bondType;
  }
  
  public double getChg()
  {
    return this.chg;
  }
  
  public double getCurrent()
  {
    return this.current;
  }
  
  public String getDueDate()
  {
    return this.dueDate;
  }
  
  public double getHigh()
  {
    return this.high;
  }
  
  public double getLow()
  {
    return this.low;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getPercent()
  {
    return this.percent;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public Calendar getTime()
  {
    return this.time;
  }
  
  public double getVolume()
  {
    return this.volume;
  }
  
  public void setBondType(String paramString)
  {
    this.bondType = paramString;
  }
  
  public void setChg(double paramDouble)
  {
    this.chg = paramDouble;
  }
  
  public void setCurrent(double paramDouble)
  {
    this.current = paramDouble;
  }
  
  public void setDueDate(String paramString)
  {
    this.dueDate = paramString;
  }
  
  public void setHigh(double paramDouble)
  {
    this.high = paramDouble;
  }
  
  public void setLow(double paramDouble)
  {
    this.low = paramDouble;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPercent(double paramDouble)
  {
    this.percent = paramDouble;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTime(Calendar paramCalendar)
  {
    this.time = paramCalendar;
  }
  
  public void setVolume(double paramDouble)
  {
    this.volume = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.symbol);
    paramParcel.writeString(this.name);
    paramParcel.writeDouble(this.current);
    paramParcel.writeString(this.bondType);
    paramParcel.writeString(this.dueDate);
    paramParcel.writeDouble(this.percent);
    paramParcel.writeDouble(this.chg);
    paramParcel.writeDouble(this.high);
    paramParcel.writeDouble(this.low);
    paramParcel.writeDouble(this.volume);
    paramParcel.writeValue(this.time);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockOption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */