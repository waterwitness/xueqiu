package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class OldPortFolio
  implements Parcelable
{
  public static final Parcelable.Creator<OldPortFolio> CREATOR = new Parcelable.Creator()
  {
    public final OldPortFolio createFromParcel(Parcel paramAnonymousParcel)
    {
      return new OldPortFolio(paramAnonymousParcel, null);
    }
    
    public final OldPortFolio[] newArray(int paramAnonymousInt)
    {
      return new OldPortFolio[paramAnonymousInt];
    }
  };
  public static final int FLAG_EXIT = 3;
  public static final int FLAG_PREIPO = 0;
  public static final int FLAG_RECOVERABLE_FUSE = 4;
  public static final int FLAG_SUSPENSION = 2;
  public static final int FLAG_UNRECOVERABLE_FUSE = 5;
  private Date actualDate;
  private double afterHoursChg;
  private double afterHoursPct;
  private Calendar afterHoursTime;
  private String alias = null;
  private double amount;
  private String bondType;
  private double change;
  private String circulation;
  private double close;
  private String code = null;
  private int count;
  private String currencyUnit;
  private double current;
  private int deal7dCount;
  private int dealCount;
  private double dividend;
  private String dueDate;
  private String dueTime;
  private double eps;
  private String exchange = null;
  private double fall_stop;
  private int flag;
  private int follow7dCount;
  private int followCount;
  private boolean following;
  private Double growthRateMonth1;
  private Double growthRateMonth3;
  private Double growthRateMonth6;
  private Double growthRateYear;
  private double high;
  private boolean holding;
  private double instOwn;
  private double ipoPrice;
  private String ipoTime;
  private String issueType;
  private JSONObject jsonData = null;
  private double kzzConvertPrice;
  private String kzzConvertTime;
  private double kzzConvertValue;
  private double kzzCpr;
  private double kzzPutbackPrice;
  private double kzzRedemptPrice;
  private double kzzStockCurrent;
  private String kzzStockName = null;
  private String kzzStockSymbol = null;
  private double kzzStraightPrice;
  private double last_close;
  private double low;
  private double marketCapital;
  private String name = null;
  private double netProfit;
  private double netProfitYield;
  private double net_assets;
  private double open;
  private String parValue;
  private double peRatio;
  private double pe_lyr;
  private String pe_ttm;
  private double percentage;
  private String priceCurrency = null;
  private String priceRange;
  private String publisher;
  private String rate;
  private String redeemType;
  private String releaseDate;
  private String restDay;
  private double rise_stop;
  private String saleOrg;
  private String showMarketCapital = null;
  private int status7dCount;
  private int statusCount;
  private String symbol = null;
  private double totalShares;
  private Double turnoverRate;
  private String type = "0";
  private Double unitNetValue;
  private Calendar updatedTime = null;
  private String valueDate;
  private double volume;
  private double volumeAverage;
  private String warrant;
  private double week52High;
  private double week52Low;
  private double yield;
  
  public OldPortFolio() {}
  
  private OldPortFolio(Parcel paramParcel)
  {
    this.current = paramParcel.readDouble();
    this.change = paramParcel.readDouble();
    this.percentage = paramParcel.readDouble();
    this.open = paramParcel.readDouble();
    this.close = paramParcel.readDouble();
    this.marketCapital = paramParcel.readDouble();
    this.volume = paramParcel.readDouble();
    this.volumeAverage = paramParcel.readDouble();
    this.dividend = paramParcel.readDouble();
    this.peRatio = paramParcel.readDouble();
    this.high = paramParcel.readDouble();
    this.low = paramParcel.readDouble();
    this.week52High = paramParcel.readDouble();
    this.week52Low = paramParcel.readDouble();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      this.following = bool;
      this.afterHoursChg = paramParcel.readDouble();
      this.afterHoursPct = paramParcel.readDouble();
      this.last_close = paramParcel.readDouble();
      this.amount = paramParcel.readDouble();
      this.rise_stop = paramParcel.readDouble();
      this.fall_stop = paramParcel.readDouble();
      this.eps = paramParcel.readDouble();
      this.net_assets = paramParcel.readDouble();
      this.totalShares = paramParcel.readDouble();
      this.yield = paramParcel.readDouble();
      this.instOwn = paramParcel.readDouble();
      this.type = ab.a(paramParcel);
      this.currencyUnit = ab.a(paramParcel);
      this.symbol = ab.a(paramParcel);
      this.code = ab.a(paramParcel);
      this.name = ab.a(paramParcel);
      this.alias = ab.a(paramParcel);
      this.exchange = ab.a(paramParcel);
      this.showMarketCapital = ab.a(paramParcel);
      this.pe_ttm = ab.a(paramParcel);
      this.pe_lyr = paramParcel.readDouble();
      this.flag = paramParcel.readInt();
      this.restDay = ab.a(paramParcel);
      try
      {
        paramParcel = ab.a(paramParcel);
        if ((paramParcel != null) && (!paramParcel.equals(""))) {
          this.jsonData = new JSONObject(paramParcel);
        }
        return;
      }
      catch (JSONException paramParcel)
      {
        this.jsonData = null;
      }
      bool = false;
    }
  }
  
  public OldPortFolio(String paramString)
  {
    this(null, paramString);
  }
  
  public OldPortFolio(String paramString1, String paramString2)
  {
    this.name = paramString1;
    this.symbol = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getActualDate()
  {
    if (this.actualDate == null) {
      return null;
    }
    return new Date(this.actualDate.getTime());
  }
  
  public double getAfterHoursChg()
  {
    return this.afterHoursChg;
  }
  
  public double getAfterHoursPct()
  {
    return this.afterHoursPct;
  }
  
  public Calendar getAfterHoursTime()
  {
    return this.afterHoursTime;
  }
  
  public String getAlias()
  {
    return this.alias;
  }
  
  public double getAmount()
  {
    return this.amount;
  }
  
  public String getBondType()
  {
    return this.bondType;
  }
  
  public double getChange()
  {
    return this.change;
  }
  
  public String getCirculation()
  {
    return this.circulation;
  }
  
  public double getClose()
  {
    return this.close;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public String getCurrencyUnit()
  {
    return this.currencyUnit;
  }
  
  public double getCurrent()
  {
    return this.current;
  }
  
  public int getDeal7dCount()
  {
    return this.deal7dCount;
  }
  
  public int getDealCount()
  {
    return this.dealCount;
  }
  
  public double getDividend()
  {
    return this.dividend;
  }
  
  public String getDueDate()
  {
    return this.dueDate;
  }
  
  public String getDueTime()
  {
    return this.dueTime;
  }
  
  public double getEps()
  {
    return this.eps;
  }
  
  public String getExchange()
  {
    return this.exchange;
  }
  
  public double getFall_stop()
  {
    return this.fall_stop;
  }
  
  public int getFlag()
  {
    return this.flag;
  }
  
  public int getFollow7dCount()
  {
    return this.follow7dCount;
  }
  
  public int getFollowCount()
  {
    return this.followCount;
  }
  
  public Double getGrowthRateMonth1()
  {
    return this.growthRateMonth1;
  }
  
  public Double getGrowthRateMonth3()
  {
    return this.growthRateMonth3;
  }
  
  public Double getGrowthRateMonth6()
  {
    return this.growthRateMonth6;
  }
  
  public Double getGrowthRateYear()
  {
    return this.growthRateYear;
  }
  
  public double getHigh()
  {
    return this.high;
  }
  
  public double getInstOwn()
  {
    return this.instOwn;
  }
  
  public double getIpoPrice()
  {
    return this.ipoPrice;
  }
  
  public String getIpoTime()
  {
    return this.ipoTime;
  }
  
  public String getIssueType()
  {
    return this.issueType;
  }
  
  public JSONObject getJsonData()
  {
    return this.jsonData;
  }
  
  public double getKzzConvertPrice()
  {
    return this.kzzConvertPrice;
  }
  
  public String getKzzConvertTime()
  {
    return this.kzzConvertTime;
  }
  
  public double getKzzConvertValue()
  {
    return this.kzzConvertValue;
  }
  
  public double getKzzCpr()
  {
    return this.kzzCpr;
  }
  
  public double getKzzPutbackPrice()
  {
    return this.kzzPutbackPrice;
  }
  
  public double getKzzRedemptPrice()
  {
    return this.kzzRedemptPrice;
  }
  
  public double getKzzStockCurrent()
  {
    return this.kzzStockCurrent;
  }
  
  public String getKzzStockName()
  {
    return this.kzzStockName;
  }
  
  public String getKzzStockSymbol()
  {
    return this.kzzStockSymbol;
  }
  
  public double getKzzStraightPrice()
  {
    return this.kzzStraightPrice;
  }
  
  public double getLast_close()
  {
    return this.last_close;
  }
  
  public double getLow()
  {
    return this.low;
  }
  
  public double getMarketCapital()
  {
    return this.marketCapital;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getNetProfit()
  {
    return this.netProfit;
  }
  
  public double getNetProfitYield()
  {
    return this.netProfitYield;
  }
  
  public double getNet_assets()
  {
    return this.net_assets;
  }
  
  public double getOpen()
  {
    return this.open;
  }
  
  public String getParValue()
  {
    return this.parValue;
  }
  
  public double getPeRatio()
  {
    return this.peRatio;
  }
  
  public double getPe_lyr()
  {
    return this.pe_lyr;
  }
  
  public String getPe_ttm()
  {
    return this.pe_ttm;
  }
  
  public double getPercentage()
  {
    return this.percentage;
  }
  
  public String getPriceCurrency()
  {
    return this.priceCurrency;
  }
  
  public String getPriceRange()
  {
    return this.priceRange;
  }
  
  public String getPublisher()
  {
    return this.publisher;
  }
  
  public String getRate()
  {
    return this.rate;
  }
  
  public String getRedeemType()
  {
    return this.redeemType;
  }
  
  public String getReleaseDate()
  {
    return this.releaseDate;
  }
  
  public String getRestDay()
  {
    return this.restDay;
  }
  
  public double getRise_stop()
  {
    return this.rise_stop;
  }
  
  public String getSaleOrg()
  {
    return this.saleOrg;
  }
  
  public String getShowMarketCapital()
  {
    return this.showMarketCapital;
  }
  
  public int getStatus7dCount()
  {
    return this.status7dCount;
  }
  
  public int getStatusCount()
  {
    return this.statusCount;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public double getTotalShares()
  {
    return this.totalShares;
  }
  
  public Double getTurnoverRate()
  {
    return this.turnoverRate;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public Double getUnitNetValue()
  {
    return this.unitNetValue;
  }
  
  public Calendar getUpdatedTime()
  {
    return this.updatedTime;
  }
  
  public String getValueDate()
  {
    return this.valueDate;
  }
  
  public double getVolume()
  {
    return this.volume;
  }
  
  public double getVolumeAverage()
  {
    return this.volumeAverage;
  }
  
  public String getWarrant()
  {
    return this.warrant;
  }
  
  public double getWeek52High()
  {
    return this.week52High;
  }
  
  public double getWeek52Low()
  {
    return this.week52Low;
  }
  
  public double getYield()
  {
    return this.yield;
  }
  
  public boolean isFollowing()
  {
    return this.following;
  }
  
  public boolean isHolding()
  {
    return this.holding;
  }
  
  public void setActualDate(Date paramDate)
  {
    if (paramDate != null) {}
    for (paramDate = new Date(paramDate.getTime());; paramDate = null)
    {
      this.actualDate = paramDate;
      return;
    }
  }
  
  public void setAfterHoursChg(double paramDouble)
  {
    this.afterHoursChg = paramDouble;
  }
  
  public void setAfterHoursPct(double paramDouble)
  {
    this.afterHoursPct = paramDouble;
  }
  
  public void setAfterHoursTime(Calendar paramCalendar)
  {
    this.afterHoursTime = paramCalendar;
  }
  
  public void setAlias(String paramString)
  {
    this.alias = paramString;
  }
  
  public void setAmount(double paramDouble)
  {
    this.amount = paramDouble;
  }
  
  public void setBondType(String paramString)
  {
    this.bondType = paramString;
  }
  
  public void setChange(double paramDouble)
  {
    this.change = paramDouble;
  }
  
  public void setCirculation(String paramString)
  {
    this.circulation = paramString;
  }
  
  public void setClose(double paramDouble)
  {
    this.close = paramDouble;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setCurrencyUnit(String paramString)
  {
    this.currencyUnit = paramString;
  }
  
  public void setCurrent(double paramDouble)
  {
    this.current = paramDouble;
  }
  
  public void setDeal7dCount(int paramInt)
  {
    this.deal7dCount = paramInt;
  }
  
  public void setDealCount(int paramInt)
  {
    this.dealCount = paramInt;
  }
  
  public void setDividend(double paramDouble)
  {
    this.dividend = paramDouble;
  }
  
  public void setDueDate(String paramString)
  {
    this.dueDate = paramString;
  }
  
  public void setDueTime(String paramString)
  {
    this.dueTime = paramString;
  }
  
  public void setEps(double paramDouble)
  {
    this.eps = paramDouble;
  }
  
  public void setExchange(String paramString)
  {
    this.exchange = paramString;
  }
  
  public void setFall_stop(double paramDouble)
  {
    this.fall_stop = paramDouble;
  }
  
  public void setFlag(int paramInt)
  {
    this.flag = paramInt;
  }
  
  public void setFollow7dCount(int paramInt)
  {
    this.follow7dCount = paramInt;
  }
  
  public void setFollowCount(int paramInt)
  {
    this.followCount = paramInt;
  }
  
  public void setFollowing(boolean paramBoolean)
  {
    this.following = paramBoolean;
  }
  
  public void setGrowthRateMonth1(Double paramDouble)
  {
    this.growthRateMonth1 = paramDouble;
  }
  
  public void setGrowthRateMonth3(Double paramDouble)
  {
    this.growthRateMonth3 = paramDouble;
  }
  
  public void setGrowthRateMonth6(Double paramDouble)
  {
    this.growthRateMonth6 = paramDouble;
  }
  
  public void setGrowthRateYear(Double paramDouble)
  {
    this.growthRateYear = paramDouble;
  }
  
  public void setHigh(double paramDouble)
  {
    this.high = paramDouble;
  }
  
  public void setHolding(boolean paramBoolean)
  {
    this.holding = paramBoolean;
  }
  
  public void setInstOwn(double paramDouble)
  {
    this.instOwn = paramDouble;
  }
  
  public void setIpoPrice(double paramDouble)
  {
    this.ipoPrice = paramDouble;
  }
  
  public void setIpoTime(String paramString)
  {
    this.ipoTime = paramString;
  }
  
  public void setIssueType(String paramString)
  {
    this.issueType = paramString;
  }
  
  public void setJsonData(JSONObject paramJSONObject)
  {
    this.jsonData = paramJSONObject;
  }
  
  public void setKzzConvertPrice(double paramDouble)
  {
    this.kzzConvertPrice = paramDouble;
  }
  
  public void setKzzConvertTime(String paramString)
  {
    this.kzzConvertTime = paramString;
  }
  
  public void setKzzConvertValue(double paramDouble)
  {
    this.kzzConvertValue = paramDouble;
  }
  
  public void setKzzCpr(double paramDouble)
  {
    this.kzzCpr = paramDouble;
  }
  
  public void setKzzPutbackPrice(double paramDouble)
  {
    this.kzzPutbackPrice = paramDouble;
  }
  
  public void setKzzRedemptPrice(double paramDouble)
  {
    this.kzzRedemptPrice = paramDouble;
  }
  
  public void setKzzStockCurrent(double paramDouble)
  {
    this.kzzStockCurrent = paramDouble;
  }
  
  public void setKzzStockName(String paramString)
  {
    this.kzzStockName = paramString;
  }
  
  public void setKzzStockSymbol(String paramString)
  {
    this.kzzStockSymbol = paramString;
  }
  
  public void setKzzStraightPrice(double paramDouble)
  {
    this.kzzStraightPrice = paramDouble;
  }
  
  public void setLast_close(double paramDouble)
  {
    this.last_close = paramDouble;
  }
  
  public void setLow(double paramDouble)
  {
    this.low = paramDouble;
  }
  
  public void setMarketCapital(double paramDouble)
  {
    this.marketCapital = paramDouble;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNetProfit(double paramDouble)
  {
    this.netProfit = paramDouble;
  }
  
  public void setNetProfitYield(double paramDouble)
  {
    this.netProfitYield = paramDouble;
  }
  
  public void setNet_assets(double paramDouble)
  {
    this.net_assets = paramDouble;
  }
  
  public void setOpen(double paramDouble)
  {
    this.open = paramDouble;
  }
  
  public void setParValue(String paramString)
  {
    this.parValue = paramString;
  }
  
  public void setPeRatio(double paramDouble)
  {
    this.peRatio = paramDouble;
  }
  
  public void setPe_lyr(double paramDouble)
  {
    this.pe_lyr = paramDouble;
  }
  
  public void setPe_ttm(String paramString)
  {
    this.pe_ttm = paramString;
  }
  
  public void setPercentage(double paramDouble)
  {
    this.percentage = paramDouble;
  }
  
  public void setPriceCurrency(String paramString)
  {
    this.priceCurrency = paramString;
  }
  
  public void setPriceRange(String paramString)
  {
    this.priceRange = paramString;
  }
  
  public void setPublisher(String paramString)
  {
    this.publisher = paramString;
  }
  
  public void setRate(String paramString)
  {
    this.rate = paramString;
  }
  
  public void setRedeemType(String paramString)
  {
    this.redeemType = paramString;
  }
  
  public void setReleaseDate(String paramString)
  {
    this.releaseDate = paramString;
  }
  
  public void setRestDay(String paramString)
  {
    this.restDay = paramString;
  }
  
  public void setRise_stop(double paramDouble)
  {
    this.rise_stop = paramDouble;
  }
  
  public void setSaleOrg(String paramString)
  {
    this.saleOrg = paramString;
  }
  
  public void setShowMarketCapital(String paramString)
  {
    this.showMarketCapital = paramString;
  }
  
  public void setStatus7dCount(int paramInt)
  {
    this.status7dCount = paramInt;
  }
  
  public void setStatusCount(int paramInt)
  {
    this.statusCount = paramInt;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTotalShares(double paramDouble)
  {
    this.totalShares = paramDouble;
  }
  
  public void setTurnoverRate(Double paramDouble)
  {
    this.turnoverRate = paramDouble;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setUnitNetValue(double paramDouble)
  {
    this.unitNetValue = Double.valueOf(paramDouble);
  }
  
  public void setUpdatedTime(Calendar paramCalendar)
  {
    this.updatedTime = paramCalendar;
  }
  
  public void setValueDate(String paramString)
  {
    this.valueDate = paramString;
  }
  
  public void setVolume(double paramDouble)
  {
    this.volume = paramDouble;
  }
  
  public void setVolumeAverage(double paramDouble)
  {
    this.volumeAverage = paramDouble;
  }
  
  public void setWarrant(String paramString)
  {
    this.warrant = paramString;
  }
  
  public void setWeek52High(double paramDouble)
  {
    this.week52High = paramDouble;
  }
  
  public void setWeek52Low(double paramDouble)
  {
    this.week52Low = paramDouble;
  }
  
  public void setYield(double paramDouble)
  {
    this.yield = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.current);
    paramParcel.writeDouble(this.change);
    paramParcel.writeDouble(this.percentage);
    paramParcel.writeDouble(this.open);
    paramParcel.writeDouble(this.close);
    paramParcel.writeDouble(this.marketCapital);
    paramParcel.writeDouble(this.volume);
    paramParcel.writeDouble(this.volumeAverage);
    paramParcel.writeDouble(this.dividend);
    paramParcel.writeDouble(this.peRatio);
    paramParcel.writeDouble(this.high);
    paramParcel.writeDouble(this.low);
    paramParcel.writeDouble(this.week52High);
    paramParcel.writeDouble(this.week52Low);
    if (this.following) {}
    for (paramInt = 1;; paramInt = 2)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeDouble(this.afterHoursChg);
      paramParcel.writeDouble(this.afterHoursPct);
      paramParcel.writeDouble(this.last_close);
      paramParcel.writeDouble(this.amount);
      paramParcel.writeDouble(this.rise_stop);
      paramParcel.writeDouble(this.fall_stop);
      paramParcel.writeDouble(this.eps);
      paramParcel.writeDouble(this.net_assets);
      paramParcel.writeDouble(this.totalShares);
      paramParcel.writeDouble(this.yield);
      paramParcel.writeDouble(this.instOwn);
      ab.a(paramParcel, this.type);
      ab.a(paramParcel, this.currencyUnit);
      ab.a(paramParcel, this.symbol);
      ab.a(paramParcel, this.code);
      ab.a(paramParcel, this.name);
      ab.a(paramParcel, this.alias);
      ab.a(paramParcel, this.exchange);
      ab.a(paramParcel, this.showMarketCapital);
      ab.a(paramParcel, this.pe_ttm);
      paramParcel.writeDouble(this.pe_lyr);
      paramParcel.writeInt(this.flag);
      ab.a(paramParcel, this.restDay);
      if (this.jsonData != null) {
        ab.a(paramParcel, this.jsonData.toString());
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\OldPortFolio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */