package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.xueqiu.android.base.util.ab;
import com.xueqiu.android.base.util.v;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class StockQuote
  implements Parcelable
{
  public static final Parcelable.Creator<StockQuote> CREATOR = new Parcelable.Creator()
  {
    public final StockQuote createFromParcel(Parcel paramAnonymousParcel)
    {
      StockQuote localStockQuote = new StockQuote();
      StockQuote.access$002(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$102(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$202(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$302(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$402(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$502(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$602(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$702(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$802(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$902(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1002(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1102(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1202(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1302(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1402(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1502(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1602(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1702(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1802(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$1902(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2002(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2102(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2202(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2302(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2402(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2502(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2602(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2702(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2802(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$2902(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3002(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3102(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3202(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3302(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3402(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3502(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$3602(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$3702(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$3802(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$3902(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$4002(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$4102(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$4202(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4302(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4402(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4502(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4602(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4702(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$4802(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$4902(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$5002(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5102(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5202(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$5302(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5402(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5502(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5602(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5702(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$5802(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$5902(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6002(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6102(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6202(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6302(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6402(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6502(localStockQuote, ab.b(paramAnonymousParcel));
      StockQuote.access$6602(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$6702(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$6802(localStockQuote, paramAnonymousParcel.readDouble());
      StockQuote.access$6902(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7002(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7102(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7202(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7302(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7402(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7502(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7602(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7702(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7802(localStockQuote, paramAnonymousParcel.readString());
      StockQuote.access$7902(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$8002(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$8102(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$8202(localStockQuote, paramAnonymousParcel.readInt());
      StockQuote.access$8302(localStockQuote, ab.c(paramAnonymousParcel));
      StockQuote.access$8402(localStockQuote, ab.b(paramAnonymousParcel));
      paramAnonymousParcel = paramAnonymousParcel.readString();
      if (!"".equals(paramAnonymousParcel)) {}
      try
      {
        StockQuote.access$8502(localStockQuote, new JSONObject(paramAnonymousParcel));
        return localStockQuote;
      }
      catch (JSONException paramAnonymousParcel)
      {
        v.a(paramAnonymousParcel.getMessage());
      }
      return localStockQuote;
    }
    
    public final StockQuote[] newArray(int paramAnonymousInt)
    {
      return new StockQuote[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("afterHoursChg")
  private double afterHoursChg;
  @Expose
  @SerializedName("afterHoursPct")
  private double afterHoursPct;
  @Expose
  @SerializedName("afterHoursTime")
  private Calendar afterHoursTime;
  @Expose
  private double amount;
  @Expose
  private double annualizedGain;
  @Expose
  private boolean badgesExist = false;
  @Expose
  private String bondType;
  @Expose
  private double change;
  @Expose
  private String circulation;
  @Expose
  private double close;
  @Expose
  private Date closedAt = null;
  @Expose
  private String code;
  @Expose
  private String currencyUnit;
  @Expose
  private double current;
  @Expose
  private double dailyGain;
  @Expose
  private double dividend;
  @Expose
  private String dueDate;
  @Expose
  private String dueTime;
  @Expose
  private double eps;
  @Expose
  private String exchange;
  @Expose
  private String extend1;
  @Expose
  private String extend2;
  @Expose
  private String extend3;
  @Expose
  private String extend4;
  @Expose
  private String extend5;
  @Expose
  private String extend6;
  @Expose
  private String extend7;
  @Expose
  private String extend8;
  @Expose
  private String extend9;
  @Expose
  private double fallStop;
  @Expose
  private int flag;
  @Expose
  @SerializedName("hasexist")
  private boolean following = false;
  @Expose
  private String hasWarrant;
  @Expose
  private double high;
  @Expose
  private double high52week;
  @Expose
  @SerializedName("instOwn")
  private double instOwn;
  @Expose
  private double ipoPrice;
  @Expose
  private String ipoTime;
  @Expose
  private String issueType;
  @Expose
  private double kzzConvertPrice;
  @Expose
  private String kzzConvertTime;
  @Expose
  private double kzzConvertValue;
  @Expose
  private double kzzCpr;
  @Expose
  private double kzzPutbackPrice;
  @Expose
  private double kzzRedemptPrice;
  @Expose
  private double kzzStockCurrent;
  @Expose
  private String kzzStockName = null;
  @Expose
  private String kzzStockSymbol = null;
  @Expose
  private double kzzStraightPrice;
  @Expose
  private double lastClose;
  @Expose
  private int lotSize;
  @Expose
  private double low;
  @Expose
  private double low52week;
  @Expose
  private String market;
  @Expose
  @SerializedName("marketCapital")
  private double marketCapital;
  @Expose
  private double monthlyGain;
  @Expose
  private String name;
  @Expose
  private double netAssets;
  @Expose
  private double netProfitYield;
  @Expose
  private double netValue;
  @Expose
  private double open;
  private JSONObject originalJson;
  @Expose
  private String parValue;
  @Expose
  private double pb;
  @Expose
  private double peLyr;
  @Expose
  private double peTtm;
  @Expose
  private double percentage;
  @Expose
  private boolean privateOpen;
  @Expose
  private String publisher;
  @Expose
  private String rate;
  @Expose
  private int rating;
  @Expose
  private String ratingAgencies;
  @Expose
  private String redeemType;
  @Expose
  private int redemptionStatus;
  @Expose
  private String releaseDate;
  @Expose
  private String restDay;
  @Expose
  private double riseStop;
  @Expose
  @SerializedName("sale_rrg")
  private String saleOrg;
  @Expose
  private int subscriptionStatus;
  @Expose
  private String symbol;
  @Expose
  private double tickSize;
  @Expose
  private double totalGain;
  @Expose
  @SerializedName("totalShares")
  private double totalShares;
  @Expose
  private int type;
  @Expose
  @SerializedName("time")
  private Calendar updateTime = null;
  @Expose
  private String valueDate;
  @Expose
  private double volume;
  @Expose
  @SerializedName("volumeAverage")
  private double volumeAverage;
  @Expose
  private String warrant;
  @Expose
  private double yield;
  
  public StockQuote() {}
  
  public StockQuote(String paramString)
  {
    this(null, paramString);
  }
  
  public StockQuote(String paramString1, String paramString2)
  {
    this.name = paramString1;
    this.symbol = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
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
  
  public double getAmount()
  {
    return this.amount;
  }
  
  public double getAnnualizedGain()
  {
    return this.annualizedGain;
  }
  
  public boolean getBadgesExist()
  {
    return this.badgesExist;
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
  
  public Date getClosedAt()
  {
    return this.closedAt;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public String getCurrencyUnit()
  {
    return this.currencyUnit;
  }
  
  public double getCurrent()
  {
    return this.current;
  }
  
  public double getDailyGain()
  {
    return this.dailyGain;
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
  
  public String getExtend1()
  {
    return this.extend1;
  }
  
  public String getExtend2()
  {
    return this.extend2;
  }
  
  public String getExtend3()
  {
    return this.extend3;
  }
  
  public String getExtend4()
  {
    return this.extend4;
  }
  
  public String getExtend5()
  {
    return this.extend5;
  }
  
  public String getExtend6()
  {
    return this.extend6;
  }
  
  public String getExtend7()
  {
    return this.extend7;
  }
  
  public String getExtend8()
  {
    return this.extend8;
  }
  
  public String getExtend9()
  {
    return this.extend9;
  }
  
  public double getFallStop()
  {
    return this.fallStop;
  }
  
  public int getFlag()
  {
    return this.flag;
  }
  
  public double getHigh()
  {
    return this.high;
  }
  
  public double getHigh52week()
  {
    return this.high52week;
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
  
  public double getLastClose()
  {
    return this.lastClose;
  }
  
  public int getLotSize()
  {
    return this.lotSize;
  }
  
  public double getLow()
  {
    return this.low;
  }
  
  public double getLow52week()
  {
    return this.low52week;
  }
  
  public String getMarket()
  {
    return this.market;
  }
  
  public double getMarketCapital()
  {
    return this.marketCapital;
  }
  
  public double getMonthlyGain()
  {
    return this.monthlyGain;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getNetAssets()
  {
    return this.netAssets;
  }
  
  public double getNetProfitYield()
  {
    return this.netProfitYield;
  }
  
  public double getNetValue()
  {
    return this.netValue;
  }
  
  public double getOpen()
  {
    return this.open;
  }
  
  public JSONObject getOriginalJson()
  {
    return this.originalJson;
  }
  
  public String getParValue()
  {
    return this.parValue;
  }
  
  public double getPb()
  {
    return this.pb;
  }
  
  public double getPeLyr()
  {
    return this.peLyr;
  }
  
  public double getPeTtm()
  {
    return this.peTtm;
  }
  
  public double getPercentage()
  {
    return this.percentage;
  }
  
  public String getPublisher()
  {
    return this.publisher;
  }
  
  public String getRate()
  {
    return this.rate;
  }
  
  public int getRating()
  {
    return this.rating;
  }
  
  public String getRatingAgencies()
  {
    return this.ratingAgencies;
  }
  
  public String getRedeemType()
  {
    return this.redeemType;
  }
  
  public int getRedemptionStatus()
  {
    return this.redemptionStatus;
  }
  
  public String getReleaseDate()
  {
    return this.releaseDate;
  }
  
  public String getRestDay()
  {
    return this.restDay;
  }
  
  public double getRiseStop()
  {
    return this.riseStop;
  }
  
  public String getSaleOrg()
  {
    return this.saleOrg;
  }
  
  public int getSubscriptionStatus()
  {
    return this.subscriptionStatus;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public double getTickSize()
  {
    return this.tickSize;
  }
  
  public double getTotalGain()
  {
    return this.totalGain;
  }
  
  public double getTotalShares()
  {
    return this.totalShares;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public Calendar getUpdateTime()
  {
    return this.updateTime;
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
  
  public double getYield()
  {
    return this.yield;
  }
  
  public String hasWarrant()
  {
    return this.hasWarrant;
  }
  
  public boolean isFollowing()
  {
    return this.following;
  }
  
  public boolean isPrivateOpen()
  {
    return this.privateOpen;
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
  
  public void setAmount(double paramDouble)
  {
    this.amount = paramDouble;
  }
  
  public void setAnnualizedGain(double paramDouble)
  {
    this.annualizedGain = paramDouble;
  }
  
  public void setBadgesExist(boolean paramBoolean)
  {
    this.badgesExist = paramBoolean;
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
  
  public void setClosedAt(Date paramDate)
  {
    this.closedAt = paramDate;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setCurrencyUnit(String paramString)
  {
    this.currencyUnit = paramString;
  }
  
  public void setCurrent(double paramDouble)
  {
    this.current = paramDouble;
  }
  
  public void setDailyGain(double paramDouble)
  {
    this.dailyGain = paramDouble;
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
  
  public void setExtend1(String paramString)
  {
    this.extend1 = paramString;
  }
  
  public void setExtend2(String paramString)
  {
    this.extend2 = paramString;
  }
  
  public void setExtend3(String paramString)
  {
    this.extend3 = paramString;
  }
  
  public void setExtend4(String paramString)
  {
    this.extend4 = paramString;
  }
  
  public void setExtend5(String paramString)
  {
    this.extend5 = paramString;
  }
  
  public void setExtend6(String paramString)
  {
    this.extend6 = paramString;
  }
  
  public void setExtend7(String paramString)
  {
    this.extend7 = paramString;
  }
  
  public void setExtend8(String paramString)
  {
    this.extend8 = paramString;
  }
  
  public void setExtend9(String paramString)
  {
    this.extend9 = paramString;
  }
  
  public void setFallStop(double paramDouble)
  {
    this.fallStop = paramDouble;
  }
  
  public void setFlag(int paramInt)
  {
    this.flag = paramInt;
  }
  
  public void setFollowing(boolean paramBoolean)
  {
    this.following = paramBoolean;
  }
  
  public void setHasWarrant(String paramString)
  {
    this.hasWarrant = paramString;
  }
  
  public void setHigh(double paramDouble)
  {
    this.high = paramDouble;
  }
  
  public void setHigh52week(double paramDouble)
  {
    this.high52week = paramDouble;
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
  
  public void setLastClose(double paramDouble)
  {
    this.lastClose = paramDouble;
  }
  
  public void setLotSize(int paramInt)
  {
    this.lotSize = paramInt;
  }
  
  public void setLow(double paramDouble)
  {
    this.low = paramDouble;
  }
  
  public void setLow52week(double paramDouble)
  {
    this.low52week = paramDouble;
  }
  
  public void setMarket(String paramString)
  {
    this.market = paramString;
  }
  
  public void setMarketCapital(double paramDouble)
  {
    this.marketCapital = paramDouble;
  }
  
  public void setMonthlyGain(double paramDouble)
  {
    this.monthlyGain = paramDouble;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNetAssets(double paramDouble)
  {
    this.netAssets = paramDouble;
  }
  
  public void setNetProfitYield(double paramDouble)
  {
    this.netProfitYield = paramDouble;
  }
  
  public void setNetValue(double paramDouble)
  {
    this.netValue = paramDouble;
  }
  
  public void setOpen(double paramDouble)
  {
    this.open = paramDouble;
  }
  
  public void setOriginalJson(JSONObject paramJSONObject)
  {
    this.originalJson = paramJSONObject;
  }
  
  public void setParValue(String paramString)
  {
    this.parValue = paramString;
  }
  
  public void setPb(double paramDouble)
  {
    this.pb = paramDouble;
  }
  
  public void setPeLyr(double paramDouble)
  {
    this.peLyr = paramDouble;
  }
  
  public void setPeTtm(double paramDouble)
  {
    this.peTtm = paramDouble;
  }
  
  public void setPercentage(double paramDouble)
  {
    this.percentage = paramDouble;
  }
  
  public void setPrivateOpen(boolean paramBoolean)
  {
    this.privateOpen = paramBoolean;
  }
  
  public void setPublisher(String paramString)
  {
    this.publisher = paramString;
  }
  
  public void setRate(String paramString)
  {
    this.rate = paramString;
  }
  
  public void setRating(int paramInt)
  {
    this.rating = paramInt;
  }
  
  public void setRatingAgencies(String paramString)
  {
    this.ratingAgencies = paramString;
  }
  
  public void setRedeemType(String paramString)
  {
    this.redeemType = paramString;
  }
  
  public void setRedemptionStatus(int paramInt)
  {
    this.redemptionStatus = paramInt;
  }
  
  public void setReleaseDate(String paramString)
  {
    this.releaseDate = paramString;
  }
  
  public void setRestDay(String paramString)
  {
    this.restDay = paramString;
  }
  
  public void setRiseStop(double paramDouble)
  {
    this.riseStop = paramDouble;
  }
  
  public void setSaleOrg(String paramString)
  {
    this.saleOrg = paramString;
  }
  
  public void setSubscriptionStatus(int paramInt)
  {
    this.subscriptionStatus = paramInt;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTickSize(double paramDouble)
  {
    this.tickSize = paramDouble;
  }
  
  public void setTotalGain(double paramDouble)
  {
    this.totalGain = paramDouble;
  }
  
  public void setTotalShares(double paramDouble)
  {
    this.totalShares = paramDouble;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setUpdateTime(Calendar paramCalendar)
  {
    this.updateTime = paramCalendar;
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
  
  public void setYield(double paramDouble)
  {
    this.yield = paramDouble;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.symbol);
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.exchange);
    paramParcel.writeString(this.market);
    paramParcel.writeDouble(this.netValue);
    paramParcel.writeDouble(this.dailyGain);
    paramParcel.writeDouble(this.monthlyGain);
    paramParcel.writeDouble(this.totalGain);
    paramParcel.writeDouble(this.annualizedGain);
    paramParcel.writeDouble(this.current);
    paramParcel.writeDouble(this.percentage);
    paramParcel.writeDouble(this.change);
    paramParcel.writeDouble(this.open);
    paramParcel.writeDouble(this.high);
    paramParcel.writeDouble(this.low);
    paramParcel.writeDouble(this.close);
    paramParcel.writeDouble(this.lastClose);
    paramParcel.writeDouble(this.high52week);
    paramParcel.writeDouble(this.low52week);
    paramParcel.writeDouble(this.volume);
    paramParcel.writeDouble(this.volumeAverage);
    paramParcel.writeDouble(this.amount);
    paramParcel.writeDouble(this.afterHoursChg);
    paramParcel.writeDouble(this.afterHoursPct);
    paramParcel.writeDouble(this.marketCapital);
    paramParcel.writeDouble(this.eps);
    paramParcel.writeDouble(this.peTtm);
    paramParcel.writeDouble(this.peLyr);
    paramParcel.writeDouble(this.totalShares);
    paramParcel.writeDouble(this.dividend);
    paramParcel.writeDouble(this.yield);
    paramParcel.writeDouble(this.instOwn);
    paramParcel.writeDouble(this.riseStop);
    paramParcel.writeDouble(this.fallStop);
    paramParcel.writeString(this.currencyUnit);
    paramParcel.writeDouble(this.netAssets);
    paramParcel.writeInt(this.type);
    paramParcel.writeInt(this.flag);
    paramParcel.writeString(this.restDay);
    paramParcel.writeString(this.kzzStockSymbol);
    paramParcel.writeString(this.kzzStockName);
    paramParcel.writeDouble(this.kzzStockCurrent);
    paramParcel.writeDouble(this.kzzConvertPrice);
    paramParcel.writeDouble(this.kzzConvertValue);
    paramParcel.writeDouble(this.kzzCpr);
    paramParcel.writeDouble(this.kzzPutbackPrice);
    paramParcel.writeString(this.kzzConvertTime);
    paramParcel.writeDouble(this.kzzRedemptPrice);
    paramParcel.writeDouble(this.kzzStraightPrice);
    paramParcel.writeString(this.ipoTime);
    paramParcel.writeString(this.releaseDate);
    paramParcel.writeDouble(this.ipoPrice);
    paramParcel.writeString(this.parValue);
    paramParcel.writeString(this.circulation);
    paramParcel.writeString(this.dueTime);
    paramParcel.writeString(this.dueDate);
    paramParcel.writeDouble(this.netProfitYield);
    paramParcel.writeString(this.publisher);
    paramParcel.writeString(this.redeemType);
    paramParcel.writeString(this.issueType);
    paramParcel.writeString(this.bondType);
    paramParcel.writeString(this.warrant);
    paramParcel.writeString(this.saleOrg);
    paramParcel.writeString(this.rate);
    ab.a(paramParcel, this.following);
    paramParcel.writeString(this.hasWarrant);
    paramParcel.writeDouble(this.tickSize);
    paramParcel.writeDouble(this.pb);
    paramParcel.writeString(this.extend1);
    paramParcel.writeString(this.extend2);
    paramParcel.writeString(this.extend3);
    paramParcel.writeString(this.extend4);
    paramParcel.writeString(this.extend5);
    paramParcel.writeString(this.extend6);
    paramParcel.writeString(this.extend7);
    paramParcel.writeString(this.extend8);
    paramParcel.writeString(this.extend9);
    paramParcel.writeString(this.ratingAgencies);
    paramParcel.writeInt(this.rating);
    paramParcel.writeInt(this.subscriptionStatus);
    paramParcel.writeInt(this.redemptionStatus);
    paramParcel.writeInt(this.lotSize);
    ab.a(paramParcel, this.closedAt);
    ab.a(paramParcel, this.badgesExist);
    if (this.originalJson == null) {}
    for (String str = "";; str = this.originalJson.toString())
    {
      paramParcel.writeString(str);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockQuote.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */