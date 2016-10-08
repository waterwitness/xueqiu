package com.xueqiu.android.stock.model;

import com.xueqiu.android.base.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class StockRank
{
  public static final int BIT_COIN = 51;
  public static final int BOND_BUY_BACK = 44;
  public static final int BOND_CAN_SWITCH = 41;
  public static final int BOND_COMPANY = 43;
  public static final int BOND_NATIONAL = 42;
  public static final int FUND = 31;
  public static final int FUND_CLOSE = 34;
  public static final int FUND_CURRENCY = 32;
  public static final int FUND_OPEN = 33;
  public static final int HGT_AH = 73;
  public static final int HGT_HK = 72;
  public static final int HGT_HU = 71;
  public static final int HK_FALL = 24;
  public static final int HK_HOT_ONE_DAY = 22;
  public static final int HK_HOT_ONE_HOUR = 21;
  public static final int HK_RISE = 23;
  public static final int HS_AMOUNT = 5;
  public static final int HS_FALL = 4;
  public static final int HS_HOT_ONE_DAY = 2;
  public static final int HS_HOT_ONE_HOUR = 1;
  public static final int HS_NEW_IPO = 9;
  public static final int HS_PRE_IPO = 8;
  public static final int HS_RISE = 3;
  public static final int HS_TURNOVER_RATE = 6;
  public static final int HS_XQ = 10;
  public static final int INDUSTRY = 61;
  public static final int OC_MARKET_FALL = 82;
  public static final int OC_MARKET_RISE = 81;
  public static final int OC_PROTOCAL_FALL = 84;
  public static final int OC_PROTOCAL_RISE = 83;
  public static final int PRIVATE_FUND_1 = 74;
  public static final int PRIVATE_FUND_12 = 77;
  public static final int PRIVATE_FUND_3 = 75;
  public static final int PRIVATE_FUND_6 = 76;
  public static final int US_ALL_FALL = 19;
  public static final int US_ALL_RISE = 18;
  public static final int US_CHINA_FALL = 14;
  public static final int US_CHINA_RISE = 13;
  public static final int US_ETF = 17;
  public static final int US_HOT_ONE_DAY = 12;
  public static final int US_HOT_ONE_HOUR = 11;
  public static final int US_NEW_IPO = 190;
  public static final int US_PRE_IPO = 180;
  public static final int US_STAR_FALL = 16;
  public static final int US_STAR_RISE = 15;
  private AHStockQuote mAhStockQuote;
  private OldPortFolio mOldPortFolio;
  private int rankType;
  
  public StockRank(AHStockQuote paramAHStockQuote)
  {
    this.mAhStockQuote = paramAHStockQuote;
  }
  
  public StockRank(OldPortFolio paramOldPortFolio)
  {
    this.mOldPortFolio = paramOldPortFolio;
  }
  
  public static ArrayList<StockRank> convertAhQuoteToStockRank(List<AHStockQuote> paramList, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      StockRank localStockRank = new StockRank((AHStockQuote)paramList.next());
      localStockRank.setRankType(paramInt);
      localArrayList.add(localStockRank);
    }
    return localArrayList;
  }
  
  public static ArrayList<StockRank> convertToStockRank(List<OldPortFolio> paramList, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      StockRank localStockRank = new StockRank((OldPortFolio)paramList.next());
      localStockRank.setRankType(paramInt);
      localArrayList.add(localStockRank);
    }
    return localArrayList;
  }
  
  private static String formatBuyBackName(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 3)) {
      return "";
    }
    try
    {
      i = Integer.parseInt(paramString.subSequence(paramString.length() - 3, paramString.length()).toString());
      return r.a(2131165268, new Object[] { Integer.valueOf(i) });
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        int i = 0;
      }
    }
  }
  
  public static ArrayList<OldPortFolio> formatNameAndSortForBuyBack(ArrayList<OldPortFolio> paramArrayList)
  {
    Collections.sort(paramArrayList, new Comparator()
    {
      public final int compare(OldPortFolio paramAnonymousOldPortFolio1, OldPortFolio paramAnonymousOldPortFolio2)
      {
        try
        {
          paramAnonymousOldPortFolio1 = paramAnonymousOldPortFolio1.getName();
          int i = Integer.parseInt(paramAnonymousOldPortFolio1.subSequence(paramAnonymousOldPortFolio1.length() - 3, paramAnonymousOldPortFolio1.length()).toString());
          paramAnonymousOldPortFolio1 = paramAnonymousOldPortFolio2.getName();
          int j = Integer.parseInt(paramAnonymousOldPortFolio1.subSequence(paramAnonymousOldPortFolio1.length() - 3, paramAnonymousOldPortFolio1.length()).toString());
          return i - j;
        }
        catch (Exception paramAnonymousOldPortFolio1) {}
        return 0;
      }
    });
    formatNameForBuyBack(paramArrayList);
    return paramArrayList;
  }
  
  public static ArrayList<OldPortFolio> formatNameForBuyBack(ArrayList<OldPortFolio> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      OldPortFolio localOldPortFolio = (OldPortFolio)localIterator.next();
      localOldPortFolio.setName(formatBuyBackName(localOldPortFolio.getName()));
    }
    return paramArrayList;
  }
  
  public static ArrayList<OldPortFolio> parseAmountAndTurnoverRateRankResult(JSONArray paramJSONArray, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramJSONArray.length())
    {
      JSONArray localJSONArray = paramJSONArray.getJSONArray(i);
      OldPortFolio localOldPortFolio;
      if (localJSONArray.length() == 5)
      {
        String str1 = localJSONArray.getString(0);
        String str2 = localJSONArray.getString(1);
        double d1 = localJSONArray.getDouble(2);
        double d2 = localJSONArray.getDouble(3);
        localOldPortFolio = new OldPortFolio();
        localOldPortFolio.setSymbol(str1);
        localOldPortFolio.setName(str2);
        localOldPortFolio.setCurrent(d1);
        localOldPortFolio.setPercentage(d2);
        if (!paramBoolean) {
          break label140;
        }
        localOldPortFolio.setTurnoverRate(Double.valueOf(localJSONArray.getDouble(4)));
      }
      for (;;)
      {
        localArrayList.add(localOldPortFolio);
        i += 1;
        break;
        label140:
        localOldPortFolio.setAmount(localJSONArray.getDouble(4));
      }
    }
    return localArrayList;
  }
  
  public static ArrayList<OldPortFolio> parseHSPreIpoRankResult(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      JSONArray localJSONArray = paramJSONArray.getJSONArray(i);
      OldPortFolio localOldPortFolio = new OldPortFolio();
      String str1 = localJSONArray.getString(0);
      String str2 = localJSONArray.getString(1);
      localOldPortFolio.setSymbol(str1);
      localOldPortFolio.setName(str2);
      localOldPortFolio.setIpoTime(localJSONArray.getString(2));
      if (localJSONArray.get(3) != JSONObject.NULL) {
        localOldPortFolio.setIpoPrice(localJSONArray.getDouble(3));
      }
      localArrayList.add(localOldPortFolio);
      i += 1;
    }
    return localArrayList;
  }
  
  public static ArrayList<OldPortFolio> parseNewIpoRankResult(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      JSONArray localJSONArray = paramJSONArray.getJSONArray(i);
      OldPortFolio localOldPortFolio = new OldPortFolio();
      String str1 = localJSONArray.getString(0);
      String str2 = localJSONArray.getString(1);
      localOldPortFolio.setSymbol(str1);
      localOldPortFolio.setName(str2);
      if (localJSONArray.get(2) != JSONObject.NULL) {
        localOldPortFolio.setCurrent(localJSONArray.getDouble(2));
      }
      if (localJSONArray.get(3) != JSONObject.NULL) {
        localOldPortFolio.setIpoPrice(localJSONArray.getDouble(3));
      }
      localArrayList.add(localOldPortFolio);
      i += 1;
    }
    return localArrayList;
  }
  
  public static ArrayList<OldPortFolio> parseUSPreIpoRankResult(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Object localObject = paramJSONArray.getJSONArray(i);
      OldPortFolio localOldPortFolio = new OldPortFolio();
      String str1 = ((JSONArray)localObject).getString(0);
      String str2 = ((JSONArray)localObject).getString(1);
      localOldPortFolio.setSymbol(str1);
      localOldPortFolio.setName(str2);
      str1 = ((JSONArray)localObject).getString(2);
      localObject = ((JSONArray)localObject).getString(3);
      localOldPortFolio.setIpoTime(str1);
      localOldPortFolio.setPriceRange((String)localObject);
      localArrayList.add(localOldPortFolio);
      i += 1;
    }
    return localArrayList;
  }
  
  public static ArrayList<OldPortFolio> parseUpsOrDownsRankResult(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Object localObject = paramJSONArray.getJSONArray(i);
      String str1 = ((JSONArray)localObject).getString(0);
      String str2 = ((JSONArray)localObject).getString(1);
      double d1 = ((JSONArray)localObject).getDouble(2);
      double d2 = ((JSONArray)localObject).getDouble(3);
      localObject = new OldPortFolio();
      ((OldPortFolio)localObject).setSymbol(str1);
      ((OldPortFolio)localObject).setName(str2);
      ((OldPortFolio)localObject).setCurrent(d1);
      ((OldPortFolio)localObject).setPercentage(d2);
      localArrayList.add(localObject);
      i += 1;
    }
    return localArrayList;
  }
  
  public AHStockQuote getAhStockQuote()
  {
    return this.mAhStockQuote;
  }
  
  public OldPortFolio getPortFolio()
  {
    return this.mOldPortFolio;
  }
  
  public int getRankType()
  {
    return this.rankType;
  }
  
  public void setAhStockQuote(AHStockQuote paramAHStockQuote)
  {
    this.mAhStockQuote = paramAHStockQuote;
  }
  
  public void setPortFolio(OldPortFolio paramOldPortFolio)
  {
    this.mOldPortFolio = paramOldPortFolio;
  }
  
  public void setRankType(int paramInt)
  {
    this.rankType = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockRank.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */