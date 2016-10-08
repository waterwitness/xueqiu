package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stockchart.f.a;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
import org.json.JSONObject;

public final class as
{
  public static String a = "1d";
  public static String b = "5d";
  public static String c = "1m";
  public static String d = "3m";
  public static String e = "6m";
  public static String f = "1y";
  public static String g = "3y";
  public static String h = "5y";
  public static String i = "10y";
  public static String j = "all";
  public static final TimeZone k = TimeZone.getTimeZone("GMT+8");
  public static final String[] l = { "symbol", "current", "change", "percentage", "name", "type", "marketCapital", "flag" };
  
  public static at a(StockQuote paramStockQuote)
  {
    int m = paramStockQuote.getType();
    if (m == 15) {
      return new at("¥", "国债", "沪深");
    }
    if (m == 16) {
      return new at("¥", "企债", "沪深");
    }
    if (m == 18) {
      return new at("¥", "货币基金", "沪深");
    }
    if (m == 40) {
      return new at("", "bitcoin", "bitcoin");
    }
    return a(paramStockQuote.getSymbol());
  }
  
  public static at a(String paramString)
  {
    int n = 1;
    if (TextUtils.isEmpty(paramString)) {
      return new at("", "", "");
    }
    int m;
    if (TextUtils.isEmpty(paramString)) {
      m = 0;
    }
    for (;;)
    {
      if (m != 0)
      {
        return new at("￥", "沪深", "可转债");
        m = 0;
        for (;;)
        {
          if (m >= 2) {
            break label566;
          }
          if (paramString.startsWith(new String[] { "SH11", "SH12" }[m]))
          {
            m = 1;
            break;
          }
          m += 1;
        }
      }
      if (TextUtils.isEmpty(paramString)) {
        m = 0;
      }
      for (;;)
      {
        if (m != 0)
        {
          return new at("￥", "沪深", "基金");
          m = 0;
          for (;;)
          {
            if (m >= 8) {
              break label561;
            }
            if (paramString.startsWith(new String[] { "SH500", "SH502", "SH510", "SH511", "SH513", "SZ15", "SZ18", "SZ16" }[m]))
            {
              m = 1;
              break;
            }
            m += 1;
          }
        }
        if ((paramString.matches("SH\\d+")) || (paramString.matches("SZ\\d+")))
        {
          if (paramString.startsWith("SZ200")) {
            return new at("HK$", "深B", "沪深");
          }
          if (paramString.startsWith("SH900")) {
            return new at("$", "沪B", "沪深");
          }
          if ((paramString.startsWith("SH00")) || (paramString.startsWith("SZ399"))) {
            return new at("", "沪深", "指数");
          }
          return new at("￥", "A股", "沪深");
        }
        if (g(paramString))
        {
          if (paramString.startsWith("8")) {}
          for (paramString = "￥";; paramString = "HK$") {
            return new at(paramString, "港股", "港股");
          }
        }
        m = 0;
        if (m < 10) {
          if (!new String[] { "HKHSI", "HKHSF", "HKHSU", "HKHSP", "HKHSC", "HKVHSI", "HKHSCEI", "HKHSCCI", "HKGEM", "HKHKL" }[m].equals(paramString)) {}
        }
        for (m = 1;; m = 0)
        {
          if (m != 0)
          {
            return new at("", "港股", "指数");
            m += 1;
            break;
          }
          m = 0;
          if (m < 8) {
            if (!new String[] { "DJI30", "NASDAQ", "SP500", "ICS30", "SLR10", "TMT20", "HCP10", "EDU10" }[m].equals(paramString)) {}
          }
          for (m = n;; m = 0)
          {
            if (m != 0)
            {
              return new at("", "美股", "指数");
              m += 1;
              break;
            }
            return new at("$", "美股", "美股");
          }
        }
        label561:
        m = 0;
      }
      label566:
      m = 0;
    }
  }
  
  private static String a(double paramDouble)
  {
    String str = "#" + ".";
    int m = 0;
    while (m < 2)
    {
      str = str + "0";
      m += 1;
    }
    return new DecimalFormat(str).format(paramDouble);
  }
  
  public static String a(double paramDouble1, double paramDouble2)
  {
    int m = 2;
    String str;
    if (paramDouble1 != 0.0D)
    {
      str = String.valueOf(paramDouble1);
      if (!str.contains("E")) {
        break label75;
      }
    }
    label75:
    for (m = (int)Math.abs(Math.log10(paramDouble1));; m = str.replace("0.", "").length()) {
      return String.format("%." + m + "f", new Object[] { Double.valueOf(paramDouble2) });
    }
  }
  
  public static String a(double paramDouble, int paramInt)
  {
    switch (paramInt)
    {
    case 26: 
    case 27: 
    case 28: 
    case 29: 
    case 33: 
    case 34: 
    case 35: 
    case 36: 
    case 37: 
    case 38: 
    case 39: 
    default: 
      return String.format("%.2f", new Object[] { Double.valueOf(paramDouble) });
    case 11: 
    case 12: 
    case 15: 
    case 19: 
    case 22: 
    case 30: 
    case 31: 
    case 40: 
      return String.format("%.2f", new Object[] { Double.valueOf(paramDouble) });
    case 13: 
    case 14: 
    case 16: 
    case 17: 
    case 18: 
    case 23: 
    case 24: 
    case 32: 
      return String.format("%.3f", new Object[] { Double.valueOf(paramDouble) });
    }
    return String.format("%.4f", new Object[] { Double.valueOf(paramDouble) });
  }
  
  public static List<Map<String, Object>> a(Context paramContext, StockQuote paramStockQuote)
  {
    at localat = a(paramStockQuote);
    Resources localResources = paramContext.getResources();
    boolean bool4 = localResources.getString(2131166113).equals(localat.c);
    boolean bool1 = localResources.getString(2131166109).equals(localat.c);
    boolean bool2 = localResources.getString(2131166111).equals(localat.b);
    boolean bool3 = localResources.getString(2131166115).equals(localat.b);
    ArrayList localArrayList = new ArrayList();
    if (paramStockQuote.getUpdateTime() != null)
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131166010), paramStockQuote.getUpdateTime());
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getOpen())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165994), Double.valueOf(paramStockQuote.getOpen()));
      localArrayList.add(paramContext);
    }
    HashMap localHashMap;
    label467:
    label1106:
    label1163:
    Object localObject1;
    label1347:
    label1404:
    int m;
    label1505:
    Object localObject2;
    if (a(Double.valueOf(paramStockQuote.getLastClose())))
    {
      paramContext = new HashMap();
      if (bool1)
      {
        paramContext.put(localResources.getString(2131165958), Double.valueOf(paramStockQuote.getLastClose()));
        localArrayList.add(paramContext);
      }
    }
    else
    {
      if (a(Double.valueOf(paramStockQuote.getHigh())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165973), Double.valueOf(paramStockQuote.getHigh()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getLow())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165989), Double.valueOf(paramStockQuote.getLow()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getVolume())))
      {
        localHashMap = new HashMap();
        if (!bool1) {
          break label2040;
        }
        localHashMap.put(localResources.getString(2131165956), au.a(paramStockQuote.getVolume() / Math.pow(10.0D, 8.0D)));
        localArrayList.add(localHashMap);
      }
      if (a(Double.valueOf(paramStockQuote.getAmount())))
      {
        paramContext = new HashMap();
        if (!bool1) {
          break label2237;
        }
        paramContext.put(localResources.getString(2131165955), au.a(paramStockQuote.getAmount()));
        localArrayList.add(paramContext);
      }
      if (a(paramStockQuote.getIpoTime()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165977), paramStockQuote.getIpoTime());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getReleaseDate()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166006), paramStockQuote.getReleaseDate());
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getIpoPrice())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165976), String.format("%s %s", new Object[] { Double.valueOf(paramStockQuote.getIpoPrice()), localResources.getString(2131166553) }));
        localArrayList.add(paramContext);
      }
      if (a(paramStockQuote.getParValue()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165995), paramStockQuote.getParValue());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getDueDate()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165965), paramStockQuote.getDueDate());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getPublisher()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166002), paramStockQuote.getPublisher());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getRedeemType()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166004), paramStockQuote.getRedeemType());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getIssueType()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165978), paramStockQuote.getIssueType());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getBondType()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165962), paramStockQuote.getBondType());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getWarrant()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166013), paramStockQuote.getWarrant());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getSaleOrg()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166008), paramStockQuote.getSaleOrg());
        localArrayList.add(paramContext);
      }
      if (!TextUtils.isEmpty(paramStockQuote.getRate()))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131166003), paramStockQuote.getRate());
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getRiseStop())))
      {
        paramContext = new HashMap();
        if (!bool1) {
          break label2262;
        }
        paramContext.put(localResources.getString(2131165960), Double.valueOf(paramStockQuote.getRiseStop()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getFallStop())))
      {
        paramContext = new HashMap();
        if (!bool1) {
          break label2287;
        }
        paramContext.put(localResources.getString(2131165957), Double.valueOf(paramStockQuote.getFallStop()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getHigh52week())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165974), Double.valueOf(paramStockQuote.getHigh52week()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getLow52week())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165990), Double.valueOf(paramStockQuote.getLow52week()));
        localArrayList.add(paramContext);
      }
      if (bool4) {
        break label2643;
      }
      bool4 = localResources.getString(2131166110).equals(localat.c);
      if (a(Double.valueOf(paramStockQuote.getPeLyr())))
      {
        localObject1 = new HashMap();
        if (!bool1) {
          break label2312;
        }
        ((Map)localObject1).put(localResources.getString(2131165959), Double.valueOf(paramStockQuote.getPeLyr()));
        localArrayList.add(localObject1);
      }
      if (a(Double.valueOf(paramStockQuote.getPeTtm())))
      {
        localObject1 = new HashMap();
        if (!bool1) {
          break label2422;
        }
        ((Map)localObject1).put(localResources.getString(2131165961), Double.valueOf(paramStockQuote.getPeTtm()));
        localArrayList.add(localObject1);
      }
      if (a(Double.valueOf(paramStockQuote.getEps())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165967), Double.valueOf(paramStockQuote.getEps()));
        localArrayList.add(paramContext);
      }
      if (a(Double.valueOf(paramStockQuote.getNetAssets())))
      {
        localObject1 = new HashMap();
        if (!bool4) {
          break label2540;
        }
        if (paramStockQuote.getNetAssets() >= 0.0D) {
          break label2532;
        }
        m = 2131165971;
        localObject2 = localResources.getString(m);
        if (!bool4) {
          break label2548;
        }
        paramContext = a(Math.abs(paramStockQuote.getNetAssets()) * 100.0D);
        label1533:
        ((Map)localObject1).put(localObject2, paramContext);
        localArrayList.add(localObject1);
      }
      if (a(Double.valueOf(paramStockQuote.getDividend())))
      {
        localObject1 = new HashMap();
        if (!a(Double.valueOf(paramStockQuote.getYield()))) {
          break label2559;
        }
        m = 2131165964;
        label1590:
        localObject2 = localResources.getString(m);
        if (!a(Double.valueOf(paramStockQuote.getYield()))) {
          break label2567;
        }
        paramContext = paramStockQuote.getDividend() + "/" + paramStockQuote.getYield();
        label1642:
        ((Map)localObject1).put(localObject2, paramContext);
        localArrayList.add(localObject1);
      }
      if (a(Double.valueOf(paramStockQuote.getTotalShares())))
      {
        localObject1 = new HashMap();
        if (!bool4) {
          break label2578;
        }
        m = 2131165970;
        label1691:
        localObject2 = localResources.getString(m);
        if (!bool4) {
          break label2586;
        }
        paramContext = au.a(paramStockQuote.getTotalShares()) + "份";
        label1731:
        ((Map)localObject1).put(localObject2, paramContext);
        localArrayList.add(localObject1);
      }
      if (a(Double.valueOf(paramStockQuote.getMarketCapital())))
      {
        localObject1 = new HashMap();
        if (!bool4) {
          break label2597;
        }
        m = 2131165993;
        label1780:
        localObject2 = localResources.getString(m);
        if (!bool4) {
          break label2632;
        }
      }
    }
    label2040:
    label2058:
    label2231:
    label2237:
    label2262:
    label2287:
    label2312:
    label2370:
    label2411:
    label2422:
    label2480:
    label2521:
    label2532:
    label2540:
    label2548:
    label2559:
    label2567:
    label2578:
    label2586:
    label2597:
    label2632:
    for (paramContext = au.a(paramStockQuote.getMarketCapital()) + "元";; paramContext = au.a(paramStockQuote.getMarketCapital()))
    {
      ((Map)localObject1).put(localObject2, paramContext);
      localArrayList.add(localObject1);
      if (a(Double.valueOf(paramStockQuote.getInstOwn())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165975), paramStockQuote.getInstOwn() + "%");
        localArrayList.add(paramContext);
      }
      if (((bool2) || (bool3)) && (!TextUtils.isEmpty(paramStockQuote.getDueTime())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165966), paramStockQuote.getDueTime());
        localArrayList.add(paramContext);
      }
      if ((paramStockQuote.getType() == 40) && (!TextUtils.isEmpty(paramStockQuote.getCurrencyUnit())))
      {
        paramContext = new HashMap();
        paramContext.put("交易货币", paramStockQuote.getCurrencyUnit());
        localArrayList.add(paramContext);
      }
      return localArrayList;
      paramContext.put(localResources.getString(2131165988), Double.valueOf(paramStockQuote.getLastClose()));
      break;
      String str2;
      String str1;
      if (a(Double.valueOf(paramStockQuote.getVolumeAverage())))
      {
        m = 2131166011;
        str2 = localResources.getString(m);
        str1 = au.a(paramStockQuote.getVolume());
        if (!a(Double.valueOf(paramStockQuote.getVolumeAverage()))) {
          break label2231;
        }
      }
      for (paramContext = "/" + au.a(paramStockQuote.getVolumeAverage());; paramContext = "")
      {
        localObject2 = paramContext;
        localObject1 = str1;
        if (bool4)
        {
          str1 = str1 + localResources.getString(2131166552);
          localObject2 = paramContext;
          localObject1 = str1;
          if (!TextUtils.isEmpty(paramContext))
          {
            localObject2 = paramContext + localResources.getString(2131166552);
            localObject1 = str1;
          }
        }
        localHashMap.put(str2, (String)localObject1 + (String)localObject2);
        break;
        m = 2131166012;
        break label2058;
      }
      paramContext.put(localResources.getString(2131165954), au.a(paramStockQuote.getAmount()));
      break label467;
      paramContext.put(localResources.getString(2131166007), Double.valueOf(paramStockQuote.getRiseStop()));
      break label1106;
      paramContext.put(localResources.getString(2131165968), Double.valueOf(paramStockQuote.getFallStop()));
      break label1163;
      if ((bool2) || (bool3))
      {
        ((Map)localObject1).put(localResources.getString(2131165998), String.format("%s%%", new Object[] { Double.valueOf(paramStockQuote.getPeLyr()) }));
        break label1347;
      }
      if (bool4)
      {
        m = 2131165997;
        localObject2 = localResources.getString(m);
        if (!bool4) {
          break label2411;
        }
      }
      for (paramContext = Double.valueOf(paramStockQuote.getPeLyr());; paramContext = a(paramStockQuote.getPeLyr()))
      {
        ((Map)localObject1).put(localObject2, paramContext);
        break;
        m = 2131165996;
        break label2370;
      }
      if ((bool2) || (bool3))
      {
        ((Map)localObject1).put(localResources.getString(2131166001), String.format("%s%%", new Object[] { Double.valueOf(paramStockQuote.getPeTtm()) }));
        break label1404;
      }
      if (bool4)
      {
        m = 2131166000;
        localObject2 = localResources.getString(m);
        if (!bool4) {
          break label2521;
        }
      }
      for (paramContext = Double.valueOf(paramStockQuote.getPeTtm());; paramContext = a(paramStockQuote.getPeTtm()))
      {
        ((Map)localObject1).put(localObject2, paramContext);
        break;
        m = 2131165999;
        break label2480;
      }
      m = 2131165972;
      break label1505;
      m = 2131165969;
      break label1505;
      paramContext = Double.valueOf(paramStockQuote.getNetAssets());
      break label1533;
      m = 2131165963;
      break label1590;
      paramContext = Double.valueOf(paramStockQuote.getDividend());
      break label1642;
      m = 2131166009;
      break label1691;
      paramContext = au.a(paramStockQuote.getTotalShares());
      break label1731;
      if (localResources.getString(2131166112).equals(localat.b))
      {
        m = 2131165992;
        break label1780;
      }
      m = 2131165991;
      break label1780;
    }
    label2643:
    if ((!TextUtils.isEmpty(paramStockQuote.getKzzStockSymbol())) && (!TextUtils.isEmpty(paramStockQuote.getKzzStockName())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165985), paramStockQuote.getKzzStockName() + "(" + paramStockQuote.getKzzStockSymbol() + ")");
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getKzzStockCurrent())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165986), Double.valueOf(paramStockQuote.getKzzStockCurrent()));
      localArrayList.add(paramContext);
    }
    if (!TextUtils.isEmpty(paramStockQuote.getKzzConvertTime()))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165980), paramStockQuote.getKzzConvertTime());
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getKzzConvertPrice())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165979), Double.valueOf(paramStockQuote.getKzzConvertPrice()));
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getKzzConvertValue())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165981), Double.valueOf(paramStockQuote.getKzzConvertValue()));
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getKzzCpr())))
    {
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165982), a(paramStockQuote.getKzzCpr() * 100.0D) + "%");
      localArrayList.add(paramContext);
    }
    if (a(Double.valueOf(paramStockQuote.getKzzRedemptPrice())))
    {
      paramContext = new HashMap();
      if ((!bool2) && (!bool3)) {
        break label3177;
      }
      paramContext.put(localResources.getString(2131166005), Double.valueOf(paramStockQuote.getKzzRedemptPrice()));
    }
    for (;;)
    {
      localArrayList.add(paramContext);
      if (a(Double.valueOf(paramStockQuote.getKzzStraightPrice())))
      {
        paramContext = new HashMap();
        paramContext.put(localResources.getString(2131165987), Double.valueOf(paramStockQuote.getKzzStraightPrice()));
        localArrayList.add(paramContext);
      }
      if (!a(Double.valueOf(paramStockQuote.getKzzPutbackPrice()))) {
        break;
      }
      paramContext = new HashMap();
      paramContext.put(localResources.getString(2131165983), Double.valueOf(paramStockQuote.getKzzPutbackPrice()));
      localArrayList.add(paramContext);
      break;
      label3177:
      paramContext.put(localResources.getString(2131165984), Double.valueOf(paramStockQuote.getKzzRedemptPrice()));
    }
  }
  
  public static List<Map<String, Object>> a(Context paramContext, StockQuote paramStockQuote, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramStockQuote.getOriginalJson();
    if (localJSONObject == null) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = new TreeMap(new Comparator() {});
    Object localObject2 = paramJSONObject.keys();
    String str1;
    while (((Iterator)localObject2).hasNext())
    {
      str1 = (String)((Iterator)localObject2).next();
      ((Map)localObject1).put(str1, paramJSONObject.getJSONObject(str1));
    }
    Iterator localIterator = ((Map)localObject1).values().iterator();
    HashMap localHashMap;
    Object localObject3;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        paramJSONObject = (JSONObject)localIterator.next();
        String str2 = (String)paramJSONObject.keys().next();
        localHashMap = new HashMap();
        localObject2 = paramJSONObject.getString(str2);
        if (localJSONObject.has(str2))
        {
          localObject1 = localJSONObject.getString(str2);
          if ((str2.equals("open")) || (str2.equals("high")) || (str2.equals("close")) || (str2.equals("low")) || (str2.equals("last_close"))) {
            localObject1 = a.a(paramStockQuote.getTickSize(), Double.valueOf(localJSONObject.getString(str2)).doubleValue());
          }
          if (((String)localObject2).contains("_"))
          {
            int m = ((String)localObject2).lastIndexOf("_");
            str1 = ((String)localObject2).substring(0, m);
            localObject3 = ((String)localObject2).substring(m + 1, ((String)localObject2).length());
            paramJSONObject = (JSONObject)localObject1;
            localObject2 = str1;
            if (localObject1 != null)
            {
              paramJSONObject = (JSONObject)localObject1;
              localObject2 = str1;
              if (!"".equals(localObject1))
              {
                if (!((String)localObject3).equals("time")) {
                  break label534;
                }
                paramJSONObject = ((String)localObject1).substring(20, 25);
                if ((!paramJSONObject.equals("-0500")) && (!paramJSONObject.equals("-0400"))) {
                  break label504;
                }
                paramJSONObject = paramContext.getString(2131166216);
              }
            }
            try
            {
              label374:
              localObject3 = h.b((String)localObject1);
              if (((Calendar)localObject3).get(1) != Calendar.getInstance().get(1)) {
                break label515;
              }
              localObject2 = "MM-dd HH:mm:ss";
              label402:
              localObject2 = new SimpleDateFormat((String)localObject2, Locale.CHINA).format(((Calendar)localObject3).getTime());
              paramJSONObject = (String)localObject2 + "(" + paramJSONObject + ")";
            }
            catch (ParseException paramJSONObject)
            {
              for (;;)
              {
                paramJSONObject.printStackTrace();
                paramJSONObject = (JSONObject)localObject1;
              }
            }
            if (!str2.equals("time")) {
              break label807;
            }
          }
        }
      }
    }
    label504:
    label515:
    label534:
    label807:
    for (localObject1 = paramContext.getString(2131166010);; localObject1 = str1)
    {
      localObject2 = localObject1;
      for (;;)
      {
        localHashMap.put(localObject2, paramJSONObject);
        localArrayList.add(localHashMap);
        break;
        paramJSONObject = paramContext.getString(2131166215);
        break label374;
        localObject2 = "yyyy-MM-dd HH:mm:ss";
        break label402;
        double d1;
        if (((String)localObject3).equals("pct"))
        {
          d1 = Double.valueOf((String)localObject1).doubleValue();
          paramJSONObject = String.valueOf(new DecimalFormat("0.00").format(d1 * 100.0D)) + "%";
          localObject2 = str1;
        }
        else if (((String)localObject3).equals("nakepct"))
        {
          d1 = Double.valueOf((String)localObject1).doubleValue();
          paramJSONObject = String.valueOf(au.a(d1)) + "%";
          localObject2 = str1;
        }
        else if (((String)localObject3).equals("int"))
        {
          paramJSONObject = au.a(Double.valueOf((String)localObject1).doubleValue());
          localObject2 = str1;
        }
        else if (((String)localObject3).equals("long"))
        {
          paramJSONObject = au.a(Double.valueOf((String)localObject1).doubleValue());
          localObject2 = str1;
        }
        else if (((String)localObject3).equals("double"))
        {
          paramJSONObject = au.a(Double.valueOf((String)localObject1).doubleValue());
          localObject2 = str1;
        }
        else
        {
          paramJSONObject = (JSONObject)localObject1;
          localObject2 = str1;
          if (((String)localObject3).equals("date"))
          {
            paramJSONObject = h.b((String)localObject1);
            paramJSONObject = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA).format(paramJSONObject.getTime());
            localObject2 = str1;
            continue;
            paramJSONObject = (JSONObject)localObject1;
          }
        }
      }
      return localArrayList;
    }
  }
  
  public static boolean a()
  {
    Calendar localCalendar1 = Calendar.getInstance(k);
    if (localCalendar1.get(7) == 1) {}
    Calendar localCalendar2;
    Calendar localCalendar3;
    label161:
    do
    {
      return false;
      localCalendar2 = Calendar.getInstance(k);
      localCalendar2.set(2, 2);
      localCalendar2.set(4, 2);
      localCalendar2.set(7, 1);
      localCalendar3 = Calendar.getInstance(k);
      localCalendar3.set(2, 10);
      localCalendar3.set(4, 1);
      localCalendar3.set(7, 1);
      if ((localCalendar1.compareTo(localCalendar2) >= 0) && (localCalendar1.compareTo(localCalendar3) <= 0)) {}
      for (int m = 1;; m = 0)
      {
        if (m == 0) {
          break label161;
        }
        localCalendar2 = Calendar.getInstance(k);
        localCalendar2.set(11, 21);
        localCalendar2.set(12, 30);
        localCalendar3 = Calendar.getInstance(k);
        localCalendar3.set(11, 4);
        localCalendar3.set(12, 0);
        if ((localCalendar1.compareTo(localCalendar2) < 0) && (localCalendar1.compareTo(localCalendar3) > 0)) {
          break;
        }
        return true;
      }
      localCalendar2 = Calendar.getInstance(k);
      localCalendar2.set(11, 22);
      localCalendar2.set(12, 30);
      localCalendar3 = Calendar.getInstance(k);
      localCalendar3.set(11, 5);
      localCalendar3.set(12, 0);
    } while ((localCalendar1.compareTo(localCalendar2) < 0) && (localCalendar1.compareTo(localCalendar3) > 0));
    return true;
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt == 30) || (paramInt == 31) || (paramInt == 32);
  }
  
  private static boolean a(Object paramObject)
  {
    if (paramObject == null) {}
    while ((TextUtils.isEmpty(paramObject.toString())) || (0.0D == Double.parseDouble(paramObject.toString()))) {
      return false;
    }
    return true;
  }
  
  public static boolean b()
  {
    Calendar localCalendar1 = Calendar.getInstance(k);
    if ((localCalendar1.get(7) == 1) || (localCalendar1.get(7) == 7)) {}
    label180:
    label184:
    for (;;)
    {
      return false;
      Calendar localCalendar2 = Calendar.getInstance(k);
      localCalendar2.set(11, 9);
      localCalendar2.set(12, 15);
      Calendar localCalendar3 = Calendar.getInstance(k);
      localCalendar3.set(11, 11);
      localCalendar3.set(12, 30);
      Calendar localCalendar4 = Calendar.getInstance(k);
      localCalendar4.set(11, 13);
      localCalendar4.set(12, 0);
      Calendar localCalendar5 = Calendar.getInstance(k);
      localCalendar5.set(11, 15);
      localCalendar5.set(12, 0);
      int m;
      if ((localCalendar1.compareTo(localCalendar2) >= 0) && (localCalendar1.compareTo(localCalendar3) <= 0))
      {
        m = 1;
        if ((localCalendar1.compareTo(localCalendar4) < 0) || (localCalendar1.compareTo(localCalendar5) > 0)) {
          break label180;
        }
      }
      for (int n = 1;; n = 0)
      {
        if ((m == 0) && (n == 0)) {
          break label184;
        }
        return true;
        m = 0;
        break;
      }
    }
  }
  
  public static boolean b(int paramInt)
  {
    return (paramInt == 11) || (paramInt == 12) || (paramInt == 13) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 17) || (paramInt == 18) || (paramInt == 25);
  }
  
  public static boolean b(String paramString)
  {
    return paramString.equals("cn");
  }
  
  public static boolean c()
  {
    Calendar localCalendar1 = Calendar.getInstance(k);
    if ((localCalendar1.get(7) == 1) || (localCalendar1.get(7) == 7)) {}
    label179:
    label183:
    for (;;)
    {
      return false;
      Calendar localCalendar2 = Calendar.getInstance(k);
      localCalendar2.set(11, 9);
      localCalendar2.set(12, 30);
      Calendar localCalendar3 = Calendar.getInstance(k);
      localCalendar3.set(11, 12);
      localCalendar3.set(12, 0);
      Calendar localCalendar4 = Calendar.getInstance(k);
      localCalendar4.set(11, 13);
      localCalendar4.set(12, 0);
      Calendar localCalendar5 = Calendar.getInstance(k);
      localCalendar5.set(11, 16);
      localCalendar5.set(12, 0);
      int m;
      if ((localCalendar1.compareTo(localCalendar2) >= 0) && (localCalendar1.compareTo(localCalendar3) <= 0))
      {
        m = 1;
        if ((localCalendar1.compareTo(localCalendar4) < 0) || (localCalendar1.compareTo(localCalendar5) > 0)) {
          break label179;
        }
      }
      for (int n = 1;; n = 0)
      {
        if ((m == 0) && (n == 0)) {
          break label183;
        }
        return true;
        m = 0;
        break;
      }
    }
  }
  
  public static boolean c(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 3);
  }
  
  public static boolean c(String paramString)
  {
    return ("USEX".equals(paramString)) || ((paramString != null) && (paramString.contains("USEX")));
  }
  
  public static boolean d(int paramInt)
  {
    return (paramInt == 60) || (paramInt == 61) || (paramInt == 62);
  }
  
  public static boolean d(String paramString)
  {
    return "HKEX".equals(paramString);
  }
  
  public static String e(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      String str = a(paramString).b;
      if (str.equals("美股")) {
        return "USEX";
      }
      if (str.equals("港股")) {
        return "HKEX";
      }
      if (paramString.matches("SH\\d+")) {
        return "SHEX";
      }
    } while (!paramString.matches("SZ\\d+"));
    return "SZEX";
  }
  
  public static boolean e(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 3) || (paramInt == 11) || (paramInt == 12) || (paramInt == 13) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 17) || (paramInt == 30) || (paramInt == 31) || (paramInt == 40);
  }
  
  public static String f(String paramString)
  {
    long l1 = Long.parseLong(paramString.toLowerCase().replace("sp", "").substring(0, 2));
    if ((l1 >= 10L) && (l1 <= 19L)) {
      return "PAMID";
    }
    if ((l1 >= 60L) && (l1 <= 69L)) {
      return "DYZQ";
    }
    if ((l1 >= 70L) && (l1 <= 79L)) {
      return "IB";
    }
    return null;
  }
  
  public static boolean f(int paramInt)
  {
    return (paramInt == 13) || (paramInt == 18) || (paramInt == 23) || (paramInt == 24);
  }
  
  public static boolean g(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 13) || (paramInt == 14) || (paramInt == 15) || (paramInt == 16) || (paramInt == 17) || (paramInt == 11) || (paramInt == 30);
  }
  
  private static boolean g(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    try
    {
      Integer.parseInt(paramString);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static boolean h(int paramInt)
  {
    return (paramInt == 11) || (paramInt == 61) || (paramInt == 62) || (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 30);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */