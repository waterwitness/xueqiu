package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Cube
  implements Parcelable
{
  public static final Parcelable.Creator<Cube> CREATOR = new Parcelable.Creator()
  {
    public final Cube createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool2 = true;
      Cube localCube = new Cube();
      Cube.access$002(localCube, paramAnonymousParcel.readLong());
      Cube.access$102(localCube, paramAnonymousParcel.readString());
      Cube.access$202(localCube, paramAnonymousParcel.readLong());
      Cube.access$302(localCube, paramAnonymousParcel.readString());
      Cube.access$402(localCube, paramAnonymousParcel.readString());
      if (paramAnonymousParcel.readInt() == 1)
      {
        bool1 = true;
        Cube.access$502(localCube, bool1);
        Cube.access$602(localCube, paramAnonymousParcel.readString());
        Cube.access$702(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$802(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$902(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$1002(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$1102(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$1202(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$1302(localCube, paramAnonymousParcel.readInt());
        Cube.access$1402(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$1502(localCube, paramAnonymousParcel.readInt());
        Cube.access$1602(localCube, new Date(paramAnonymousParcel.readLong()));
        Cube.access$1702(localCube, new Date(paramAnonymousParcel.readLong()));
        Cube.access$1802(localCube, new Date(paramAnonymousParcel.readLong()));
        Cube.access$1902(localCube, (User)paramAnonymousParcel.readParcelable(User.class.getClassLoader()));
        Cube.access$2002(localCube, (Style)paramAnonymousParcel.readParcelable(Style.class.getClassLoader()));
        Cube.access$2102(localCube, new ArrayList());
        paramAnonymousParcel.readStringList(localCube.tag);
        Cube.access$2202(localCube, (Performance)paramAnonymousParcel.readParcelable(Performance.class.getClassLoader()));
        Cube.access$2302(localCube, (Rebalancing)paramAnonymousParcel.readParcelable(Rebalancing.class.getClassLoader()));
        Cube.access$2402(localCube, (Rebalancing)paramAnonymousParcel.readParcelable(Rebalancing.class.getClassLoader()));
        Cube.access$2502(localCube, (Rebalancing)paramAnonymousParcel.readParcelable(Rebalancing.class.getClassLoader()));
        Cube.access$2602(localCube, (Rebalancing)paramAnonymousParcel.readParcelable(Rebalancing.class.getClassLoader()));
        Cube.access$2702(localCube, paramAnonymousParcel.readLong());
        Cube.access$2802(localCube, paramAnonymousParcel.readLong());
        if (paramAnonymousParcel.readInt() != 1) {
          break label740;
        }
        bool1 = true;
        label433:
        Cube.access$2902(localCube, bool1);
        Cube.access$3002(localCube, paramAnonymousParcel.readInt());
        if (paramAnonymousParcel.readInt() != 1) {
          break label745;
        }
        bool1 = true;
        label458:
        Cube.access$3102(localCube, bool1);
        Cube.access$3202(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$3302(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        if (paramAnonymousParcel.readInt() != 1) {
          break label750;
        }
        bool1 = true;
        label508:
        Cube.access$3402(localCube, bool1);
        Cube.access$3502(localCube, (Long)paramAnonymousParcel.readValue(Long.class.getClassLoader()));
        Cube.access$3602(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$3702(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$3802(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        if (paramAnonymousParcel.readInt() != 1) {
          break label755;
        }
        bool1 = true;
        label592:
        Cube.access$3902(localCube, bool1);
        Cube.access$4002(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$4102(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$4202(localCube, (Double)paramAnonymousParcel.readValue(Double.class.getClassLoader()));
        Cube.access$4302(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$4402(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$4502(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        Cube.access$4602(localCube, (Integer)paramAnonymousParcel.readValue(Integer.class.getClassLoader()));
        if (paramAnonymousParcel.readInt() != 1) {
          break label760;
        }
      }
      label740:
      label745:
      label750:
      label755:
      label760:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localCube.badgesExist = bool1;
        return localCube;
        bool1 = false;
        break;
        bool1 = false;
        break label433;
        bool1 = false;
        break label458;
        bool1 = false;
        break label508;
        bool1 = false;
        break label592;
      }
    }
    
    public final Cube[] newArray(int paramAnonymousInt)
    {
      return new Cube[paramAnonymousInt];
    }
  };
  @Expose
  private boolean activeFlag;
  @Expose
  private Double annualizedGainRate;
  @Expose
  private boolean applyFlag;
  @Expose
  boolean badgesExist = false;
  @Expose
  private Double bbRate;
  @Expose
  private Date closedAt = null;
  @Expose
  private Double commission;
  @Expose
  private Contractor contractor;
  @Expose
  private Long contractorId;
  @Expose
  private Date createdAt;
  @Expose
  private Integer cubeLevel;
  @Expose
  private Double dailyAmount;
  @Expose
  private Double dailyGain;
  @Expose
  private String description;
  @Expose
  private int followerCount;
  @Expose
  private boolean following;
  @Expose
  private Double gainOnLevel;
  @Expose
  private long id;
  @Expose
  private Double initialCapital;
  @Expose
  private long lastBuyRbGid;
  @Expose
  private int lastMonthRank;
  @Expose
  private Rebalancing lastRebalancing;
  @Expose
  private Rebalancing lastSuccessRebalancing;
  @Expose
  private long lastUserRbGid;
  @Expose
  private boolean listedFlag;
  @Expose
  private String market;
  @Expose
  private Double monthlyGain;
  @Expose
  private String name;
  @Expose
  private Double netValue;
  @Expose
  private Integer orderTicketCount;
  @Expose
  private User owner;
  @Expose
  private long ownerId;
  @Expose
  private Performance performance;
  @Expose
  private Integer rank;
  @Expose
  private Double rankPercent;
  @Expose
  private Rebalancing rebalancing;
  @Expose
  private String recommendReason;
  @Expose
  private Integer saleCount;
  @Expose
  private boolean sellFlag;
  @Expose
  private int star;
  @Expose
  private Style style;
  @Expose
  private String symbol;
  @Expose
  private List<String> tag;
  @Expose
  private Integer topFlag;
  @Expose
  private Double totalAmount;
  @Expose
  private Double totalGain;
  @Expose
  private Integer totalScore;
  @Expose
  private Integer trend;
  @Expose
  private Date updatedAt;
  @Expose
  private Rebalancing viewRebalancing;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Double getAnnualizedGainRate()
  {
    return this.annualizedGainRate;
  }
  
  public boolean getApply()
  {
    return this.applyFlag;
  }
  
  public Double getBbRate()
  {
    return this.bbRate;
  }
  
  public Date getClosedAt()
  {
    if ((isSpCube()) && (this.closedAt != null) && (this.closedAt.getTime() == new Date(0L).getTime())) {
      return null;
    }
    return this.closedAt;
  }
  
  public Double getCommission()
  {
    return this.commission;
  }
  
  public Contractor getContractor()
  {
    return this.contractor;
  }
  
  public Long getContractorId()
  {
    return this.contractorId;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public Integer getCubeLevel()
  {
    return this.cubeLevel;
  }
  
  public Double getDailyAmount()
  {
    return this.dailyAmount;
  }
  
  public Double getDailyGain()
  {
    return this.dailyGain;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public int getFollowerCount()
  {
    return this.followerCount;
  }
  
  public Double getGainOnLevel()
  {
    return this.gainOnLevel;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public Double getInitialCapital()
  {
    return this.initialCapital;
  }
  
  public long getLastBuyRbGid()
  {
    return this.lastBuyRbGid;
  }
  
  public int getLastMonthRank()
  {
    return this.lastMonthRank;
  }
  
  public Rebalancing getLastRebalancing()
  {
    return this.lastRebalancing;
  }
  
  public Rebalancing getLastSuccessRebalancing()
  {
    return this.lastSuccessRebalancing;
  }
  
  public long getLastUserRbGid()
  {
    return this.lastUserRbGid;
  }
  
  public String getMarket()
  {
    return this.market;
  }
  
  public Double getMonthlyGain()
  {
    return this.monthlyGain;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public Double getNetValue()
  {
    return this.netValue;
  }
  
  public Integer getOrderTicketCount()
  {
    return this.orderTicketCount;
  }
  
  public User getOwner()
  {
    return this.owner;
  }
  
  public long getOwnerId()
  {
    return this.ownerId;
  }
  
  public Performance getPerformance()
  {
    return this.performance;
  }
  
  public Integer getRank()
  {
    return this.rank;
  }
  
  public Double getRankPercent()
  {
    return this.rankPercent;
  }
  
  public Rebalancing getRebalancing()
  {
    return this.rebalancing;
  }
  
  public String getRecommendReason()
  {
    return this.recommendReason;
  }
  
  public Integer getSaleCount()
  {
    return this.saleCount;
  }
  
  public int getStar()
  {
    return this.star;
  }
  
  public Style getStyle()
  {
    return this.style;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public List<String> getTag()
  {
    return this.tag;
  }
  
  public Integer getTopFlag()
  {
    return this.topFlag;
  }
  
  public Double getTotalAmount()
  {
    return this.totalAmount;
  }
  
  public Double getTotalGain()
  {
    return this.totalGain;
  }
  
  public Integer getTotalScore()
  {
    return this.totalScore;
  }
  
  public Integer getTrend()
  {
    return this.trend;
  }
  
  public Date getUpdatedAt()
  {
    return this.updatedAt;
  }
  
  public Rebalancing getViewRebalancing()
  {
    return this.viewRebalancing;
  }
  
  public boolean isActiveFlag()
  {
    return this.activeFlag;
  }
  
  public boolean isBadgesExist()
  {
    return this.badgesExist;
  }
  
  public boolean isFollowing()
  {
    return this.following;
  }
  
  public boolean isListedFlag()
  {
    return this.listedFlag;
  }
  
  public boolean isSellFlag()
  {
    return this.sellFlag;
  }
  
  public boolean isSpCube()
  {
    return (this.symbol != null) && (this.symbol.toLowerCase().startsWith("sp"));
  }
  
  public void setActiveFlag(boolean paramBoolean)
  {
    this.activeFlag = paramBoolean;
  }
  
  public void setAnnualizedGainRate(Double paramDouble)
  {
    this.annualizedGainRate = paramDouble;
  }
  
  public void setApply(boolean paramBoolean)
  {
    this.applyFlag = paramBoolean;
  }
  
  public void setBadgesExist(boolean paramBoolean)
  {
    this.badgesExist = paramBoolean;
  }
  
  public void setBbRate(Double paramDouble)
  {
    this.bbRate = paramDouble;
  }
  
  public void setClosedAt(Date paramDate)
  {
    this.closedAt = paramDate;
  }
  
  public void setCommission(Double paramDouble)
  {
    this.commission = paramDouble;
  }
  
  public void setContractor(Contractor paramContractor)
  {
    this.contractor = paramContractor;
  }
  
  public void setContractorId(Long paramLong)
  {
    this.contractorId = paramLong;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setCubeLevel(Integer paramInteger)
  {
    this.cubeLevel = paramInteger;
  }
  
  public void setDailyAmount(Double paramDouble)
  {
    this.dailyAmount = paramDouble;
  }
  
  public void setDailyGain(Double paramDouble)
  {
    this.dailyGain = paramDouble;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setFollowerCount(int paramInt)
  {
    this.followerCount = paramInt;
  }
  
  public void setFollowing(boolean paramBoolean)
  {
    this.following = paramBoolean;
  }
  
  public void setGainOnLevel(Double paramDouble)
  {
    this.gainOnLevel = paramDouble;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setInitialCapital(Double paramDouble)
  {
    this.initialCapital = paramDouble;
  }
  
  public void setLastBuyRbGid(long paramLong)
  {
    this.lastBuyRbGid = paramLong;
  }
  
  public void setLastMonthRank(int paramInt)
  {
    this.lastMonthRank = paramInt;
  }
  
  public void setLastRebalancing(Rebalancing paramRebalancing)
  {
    this.lastRebalancing = paramRebalancing;
  }
  
  public void setLastSuccessRebalancing(Rebalancing paramRebalancing)
  {
    this.lastSuccessRebalancing = paramRebalancing;
  }
  
  public void setLastUserRbGid(long paramLong)
  {
    this.lastUserRbGid = paramLong;
  }
  
  public void setListedFlag(boolean paramBoolean)
  {
    this.listedFlag = paramBoolean;
  }
  
  public void setMarket(String paramString)
  {
    this.market = paramString;
  }
  
  public void setMonthlyGain(Double paramDouble)
  {
    this.monthlyGain = paramDouble;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNetValue(Double paramDouble)
  {
    this.netValue = paramDouble;
  }
  
  public void setOrderTicketCount(Integer paramInteger)
  {
    this.orderTicketCount = paramInteger;
  }
  
  public void setOwner(User paramUser)
  {
    this.owner = paramUser;
  }
  
  public void setOwnerId(long paramLong)
  {
    this.ownerId = paramLong;
  }
  
  public void setPerformance(Performance paramPerformance)
  {
    this.performance = paramPerformance;
  }
  
  public void setRank(Integer paramInteger)
  {
    this.rank = paramInteger;
  }
  
  public void setRankPercent(Double paramDouble)
  {
    this.rankPercent = paramDouble;
  }
  
  public void setRebalancing(Rebalancing paramRebalancing)
  {
    this.rebalancing = paramRebalancing;
  }
  
  public void setRecommendReason(String paramString)
  {
    this.recommendReason = paramString;
  }
  
  public void setSaleCount(Integer paramInteger)
  {
    this.saleCount = paramInteger;
  }
  
  public void setSellFlag(boolean paramBoolean)
  {
    this.sellFlag = paramBoolean;
  }
  
  public void setStar(int paramInt)
  {
    this.star = paramInt;
  }
  
  public void setStyle(Style paramStyle)
  {
    this.style = paramStyle;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTag(List<String> paramList)
  {
    this.tag = paramList;
  }
  
  public void setTopFlag(Integer paramInteger)
  {
    this.topFlag = paramInteger;
  }
  
  public void setTotalAmount(Double paramDouble)
  {
    this.totalAmount = paramDouble;
  }
  
  public void setTotalGain(Double paramDouble)
  {
    this.totalGain = paramDouble;
  }
  
  public void setTotalScore(Integer paramInteger)
  {
    this.totalScore = paramInteger;
  }
  
  public void setTrend(Integer paramInteger)
  {
    this.trend = paramInteger;
  }
  
  public void setUpdatedAt(Date paramDate)
  {
    this.updatedAt = paramDate;
  }
  
  public void setViewRebalancing(Rebalancing paramRebalancing)
  {
    this.viewRebalancing = paramRebalancing;
  }
  
  public String toString()
  {
    return String.format("[id:%s name:%s market:%s active:%s]", new Object[] { Long.valueOf(this.id), this.name, this.market, Boolean.valueOf(this.activeFlag) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = 0L;
    int j = 1;
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeLong(this.ownerId);
    paramParcel.writeString(this.symbol);
    paramParcel.writeString(this.description);
    int i;
    long l1;
    if (this.activeFlag)
    {
      i = 1;
      paramParcel.writeInt(i);
      paramParcel.writeString(this.market);
      paramParcel.writeValue(this.netValue);
      paramParcel.writeValue(this.dailyGain);
      paramParcel.writeValue(this.monthlyGain);
      paramParcel.writeValue(this.annualizedGainRate);
      paramParcel.writeValue(this.totalGain);
      paramParcel.writeValue(this.bbRate);
      paramParcel.writeInt(this.star);
      paramParcel.writeValue(this.rankPercent);
      paramParcel.writeInt(this.lastMonthRank);
      if (this.createdAt == null) {
        break label486;
      }
      l1 = this.createdAt.getTime();
      label156:
      paramParcel.writeLong(l1);
      if (this.updatedAt == null) {
        break label492;
      }
      l1 = this.updatedAt.getTime();
      label178:
      paramParcel.writeLong(l1);
      l1 = l2;
      if (this.closedAt != null) {
        l1 = this.closedAt.getTime();
      }
      paramParcel.writeLong(l1);
      paramParcel.writeParcelable(this.owner, paramInt);
      paramParcel.writeParcelable(this.style, paramInt);
      paramParcel.writeStringList(this.tag);
      paramParcel.writeParcelable(this.performance, paramInt);
      paramParcel.writeParcelable(this.rebalancing, paramInt);
      paramParcel.writeParcelable(this.viewRebalancing, paramInt);
      paramParcel.writeParcelable(this.lastRebalancing, paramInt);
      paramParcel.writeParcelable(this.lastSuccessRebalancing, paramInt);
      paramParcel.writeLong(this.lastBuyRbGid);
      paramParcel.writeLong(this.lastUserRbGid);
      if (!this.following) {
        break label498;
      }
      paramInt = 1;
      label306:
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.followerCount);
      if (!this.sellFlag) {
        break label503;
      }
      paramInt = 1;
      label328:
      paramParcel.writeInt(paramInt);
      paramParcel.writeValue(this.commission);
      paramParcel.writeValue(this.initialCapital);
      if (!this.listedFlag) {
        break label508;
      }
      paramInt = 1;
      label358:
      paramParcel.writeInt(paramInt);
      paramParcel.writeValue(this.contractorId);
      paramParcel.writeValue(this.saleCount);
      paramParcel.writeValue(this.dailyAmount);
      paramParcel.writeValue(this.totalAmount);
      if (!this.applyFlag) {
        break label513;
      }
      paramInt = 1;
      label404:
      paramParcel.writeInt(paramInt);
      paramParcel.writeValue(this.orderTicketCount);
      paramParcel.writeValue(this.cubeLevel);
      paramParcel.writeValue(this.gainOnLevel);
      paramParcel.writeValue(this.topFlag);
      paramParcel.writeValue(this.totalScore);
      paramParcel.writeValue(this.rank);
      paramParcel.writeValue(this.trend);
      if (!this.badgesExist) {
        break label518;
      }
    }
    label486:
    label492:
    label498:
    label503:
    label508:
    label513:
    label518:
    for (paramInt = j;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      i = 0;
      break;
      l1 = 0L;
      break label156;
      l1 = 0L;
      break label178;
      paramInt = 0;
      break label306;
      paramInt = 0;
      break label328;
      paramInt = 0;
      break label358;
      paramInt = 0;
      break label404;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Cube.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */