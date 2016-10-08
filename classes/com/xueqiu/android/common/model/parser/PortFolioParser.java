package com.xueqiu.android.common.model.parser;

import android.text.TextUtils;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.stock.model.OldPortFolio;
import java.text.ParseException;
import java.util.Date;
import org.json.JSONObject;

public class PortFolioParser
  extends AbstractParser<OldPortFolio>
{
  public OldPortFolio parse(JSONObject paramJSONObject)
  {
    OldPortFolio localOldPortFolio = new OldPortFolio();
    if (hasKeyAndValueNotNull(paramJSONObject, "symbol")) {
      localOldPortFolio.setSymbol(paramJSONObject.getString("symbol"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "code")) {
      localOldPortFolio.setCode(paramJSONObject.getString("code"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name")) {
      localOldPortFolio.setName(paramJSONObject.getString("name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "company_name")) {
      localOldPortFolio.setName(paramJSONObject.getString("company_name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "simple_name")) {
      localOldPortFolio.setName(paramJSONObject.getString("simple_name"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "alias")) {
      localOldPortFolio.setAlias(paramJSONObject.getString("alias"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "exchange")) {
      localOldPortFolio.setExchange(paramJSONObject.getString("exchange"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "current")) {
      localOldPortFolio.setCurrent(paramJSONObject.getDouble("current"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "change")) {
      localOldPortFolio.setChange(paramJSONObject.getDouble("change"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "percentage")) {
      localOldPortFolio.setPercentage(paramJSONObject.getDouble("percentage"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "quote_percentage")) {
      localOldPortFolio.setPercentage(paramJSONObject.getDouble("quote_percentage"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "percent")) {
      localOldPortFolio.setPercentage(paramJSONObject.getDouble("percent"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "open")) {
      localOldPortFolio.setOpen(paramJSONObject.getDouble("open"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "close")) {
      localOldPortFolio.setClose(paramJSONObject.getDouble("close"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "marketCapital")) {
      localOldPortFolio.setMarketCapital(paramJSONObject.getDouble("marketCapital"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "showMarketCapital")) {
      localOldPortFolio.setShowMarketCapital(paramJSONObject.getString("showMarketCapital"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "volume")) {
      localOldPortFolio.setVolume(paramJSONObject.getDouble("volume"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "volumeAverage")) {
      localOldPortFolio.setVolumeAverage(paramJSONObject.getInt("volumeAverage"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "pe_ttm")) {
      localOldPortFolio.setPe_ttm(paramJSONObject.getString("pe_ttm"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "pe_lyr")) {
      localOldPortFolio.setPe_lyr(paramJSONObject.getDouble("pe_lyr"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "dividend")) {
      localOldPortFolio.setDividend(paramJSONObject.getDouble("dividend"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "peRatio")) {
      localOldPortFolio.setPeRatio(paramJSONObject.getDouble("peRatio"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "high")) {
      localOldPortFolio.setHigh(paramJSONObject.getDouble("high"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "low")) {
      localOldPortFolio.setLow(paramJSONObject.getDouble("low"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "high52week")) {
      localOldPortFolio.setWeek52High(paramJSONObject.getDouble("high52week"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "low52week")) {
      localOldPortFolio.setWeek52Low(paramJSONObject.getDouble("low52week"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "following")) {
      localOldPortFolio.setFollowing(paramJSONObject.getBoolean("following"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "afterHoursPct")) {
      localOldPortFolio.setAfterHoursPct(paramJSONObject.getDouble("afterHoursPct"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "afterHoursChg")) {
      localOldPortFolio.setAfterHoursChg(paramJSONObject.getDouble("afterHoursChg"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "afterHoursTime")) {}
    try
    {
      localOldPortFolio.setAfterHoursTime(h.b(paramJSONObject.getString("afterHoursTime")));
      if (hasKeyAndValueNotNull(paramJSONObject, "last_close")) {
        localOldPortFolio.setLast_close(paramJSONObject.getDouble("last_close"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "amount")) {
        localOldPortFolio.setAmount(paramJSONObject.getDouble("amount"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "rise_stop")) {
        localOldPortFolio.setRise_stop(paramJSONObject.getDouble("rise_stop"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "fall_stop")) {
        localOldPortFolio.setFall_stop(paramJSONObject.getDouble("fall_stop"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "eps")) {
        localOldPortFolio.setEps(paramJSONObject.getDouble("eps"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "net_assets")) {
        localOldPortFolio.setNet_assets(paramJSONObject.getDouble("net_assets"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "totalShares")) {
        localOldPortFolio.setTotalShares(paramJSONObject.getDouble("totalShares"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "yield")) {
        localOldPortFolio.setYield(paramJSONObject.getDouble("yield"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "instOwn")) {
        localOldPortFolio.setInstOwn(paramJSONObject.getDouble("instOwn"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "type")) {
        localOldPortFolio.setType(paramJSONObject.getString("type"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "currency_unit")) {
        localOldPortFolio.setCurrencyUnit(paramJSONObject.getString("currency_unit"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "count")) {
        localOldPortFolio.setCount(paramJSONObject.getInt("count"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_stock_symbol")) {
        localOldPortFolio.setKzzStockSymbol(paramJSONObject.getString("kzz_stock_symbol"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_stock_name")) {
        localOldPortFolio.setKzzStockName(paramJSONObject.getString("kzz_stock_name"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_stock_current")) {
        localOldPortFolio.setKzzStockCurrent(paramJSONObject.getDouble("kzz_stock_current"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_convert_price")) {
        localOldPortFolio.setKzzConvertPrice(paramJSONObject.getDouble("kzz_convert_price"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_covert_value")) {
        localOldPortFolio.setKzzConvertValue(paramJSONObject.getDouble("kzz_covert_value"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_cpr")) {
        localOldPortFolio.setKzzCpr(paramJSONObject.getDouble("kzz_cpr"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_putback_price")) {
        localOldPortFolio.setKzzPutbackPrice(paramJSONObject.getDouble("kzz_putback_price"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_convert_time")) {
        localOldPortFolio.setKzzConvertTime(paramJSONObject.getString("kzz_convert_time"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_redempt_price")) {
        localOldPortFolio.setKzzRedemptPrice(paramJSONObject.getDouble("kzz_redempt_price"));
      }
      if (hasKeyAndValueNotNull(paramJSONObject, "kzz_straight_price")) {
        localOldPortFolio.setKzzStraightPrice(paramJSONObject.getDouble("kzz_straight_price"));
      }
      if ((hasKeyAndValueNotNull(paramJSONObject, "net_profit_yield")) && (!paramJSONObject.get("net_profit_yield").equals(""))) {
        localOldPortFolio.setNetProfitYield(paramJSONObject.getDouble("net_profit_yield"));
      }
      if ((!hasKeyAndValueNotNull(paramJSONObject, "time")) || (TextUtils.isEmpty(paramJSONObject.getString("time"))) || (paramJSONObject.getString("time").length() <= 25)) {}
    }
    catch (ParseException localParseException1)
    {
      try
      {
        localOldPortFolio.setUpdatedTime(h.b(paramJSONObject.getString("time")));
        if (hasKeyAndValueNotNull(paramJSONObject, "ipo_time")) {
          localOldPortFolio.setIpoTime(paramJSONObject.getString("ipo_time"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "release_date")) {
          localOldPortFolio.setReleaseDate(paramJSONObject.getString("release_date"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "ipo_price")) {
          localOldPortFolio.setIpoPrice(paramJSONObject.getDouble("ipo_price"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "par_value")) {
          localOldPortFolio.setParValue(paramJSONObject.getString("par_value"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "circulation")) {
          localOldPortFolio.setCirculation(paramJSONObject.getString("circulation"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "due_time")) {
          localOldPortFolio.setDueTime(paramJSONObject.getString("due_time"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "value_date")) {
          localOldPortFolio.setValueDate(paramJSONObject.getString("value_date"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "due_date")) {
          localOldPortFolio.setDueDate(paramJSONObject.getString("due_date"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "publisher")) {
          localOldPortFolio.setPublisher(paramJSONObject.getString("publisher"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "redeem_type")) {
          localOldPortFolio.setRedeemType(paramJSONObject.getString("redeem_type"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "issue_type")) {
          localOldPortFolio.setIssueType(paramJSONObject.getString("issue_type"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "bond_type")) {
          localOldPortFolio.setBondType(paramJSONObject.getString("bond_type"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "warrant")) {
          localOldPortFolio.setWarrant(paramJSONObject.getString("warrant"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "sale_rrg")) {
          localOldPortFolio.setSaleOrg(paramJSONObject.getString("sale_rrg"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "rate")) {
          localOldPortFolio.setRate(paramJSONObject.getString("rate"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "currency")) {
          localOldPortFolio.setPriceCurrency(paramJSONObject.getString("currency"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "follow7d")) {
          localOldPortFolio.setFollow7dCount(paramJSONObject.getInt("follow7d"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "deal7d")) {
          localOldPortFolio.setDeal7dCount(paramJSONObject.getInt("deal7d"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "tweet7d")) {
          localOldPortFolio.setStatus7dCount(paramJSONObject.getInt("tweet7d"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "follow")) {
          localOldPortFolio.setFollowCount(paramJSONObject.getInt("follow"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "deal")) {
          localOldPortFolio.setDealCount(paramJSONObject.getInt("deal"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "tweet")) {
          localOldPortFolio.setStatusCount(paramJSONObject.getInt("tweet"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "price_range")) {
          localOldPortFolio.setPriceRange(paramJSONObject.getString("price_range"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "flag")) {
          localOldPortFolio.setFlag(paramJSONObject.getInt("flag"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "rest_day")) {
          localOldPortFolio.setRestDay(paramJSONObject.getString("rest_day"));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "growth_rate_month1")) {
          localOldPortFolio.setGrowthRateMonth1(Double.valueOf(paramJSONObject.getDouble("growth_rate_month1")));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "growth_rate_month3")) {
          localOldPortFolio.setGrowthRateMonth3(Double.valueOf(paramJSONObject.getDouble("growth_rate_month3")));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "growth_rate_month6")) {
          localOldPortFolio.setGrowthRateMonth6(Double.valueOf(paramJSONObject.getDouble("growth_rate_month6")));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "growth_rate_year")) {
          localOldPortFolio.setGrowthRateYear(Double.valueOf(paramJSONObject.getDouble("growth_rate_year")));
        }
        if (hasKeyAndValueNotNull(paramJSONObject, "unit_net_value")) {
          localOldPortFolio.setUnitNetValue(paramJSONObject.getDouble("unit_net_value"));
        }
        if ((hasKeyAndValueNotNull(paramJSONObject, "actual_date")) && (!TextUtils.isEmpty(paramJSONObject.getString("actual_date")))) {
          localOldPortFolio.setActualDate(new Date(paramJSONObject.getLong("actual_date")));
        }
        if ((hasKeyAndValueNotNull(paramJSONObject, "net_profit")) && (!TextUtils.isEmpty(paramJSONObject.getString("net_profit")))) {
          localOldPortFolio.setNetProfit(paramJSONObject.getDouble("net_profit"));
        }
        localOldPortFolio.setJsonData(paramJSONObject);
        return localOldPortFolio;
        localParseException1 = localParseException1;
        localParseException1.printStackTrace();
      }
      catch (ParseException localParseException2)
      {
        for (;;)
        {
          localParseException2.printStackTrace();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\PortFolioParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */