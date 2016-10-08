package com.snowballfinance.messageplatform.data;

import java.io.Serializable;
import java.util.Date;

public class Quote
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private Date actual_date;
  private Integer actual_days;
  private String afterHourVolFormat;
  Long after_hour_vol;
  Double amount;
  Long avg_volume;
  private Double benefit_after_tax;
  private Double benefit_before_tax;
  Double beta;
  private String bond_type;
  Double change_ext;
  Double chg;
  private String chgColor;
  private Double circulation;
  Double close;
  String code;
  private Double convert_bond_ratio;
  private Double convertrate;
  String currency_unit;
  Double current;
  Double current_ext;
  private String dayFormat;
  Integer disNextPayDate;
  Double dividend;
  private String due_date;
  private Double due_time;
  Double eps;
  String exchange;
  private String extend1;
  private String extend10;
  private String extend2;
  private String extend3;
  private String extend4;
  private String extend5;
  private String extend6;
  private String extend7;
  private String extend8;
  private String extend9;
  Double fall_stop;
  private Integer flag;
  Double float_market_capital;
  Long float_shares;
  Boolean hasExist;
  Double high;
  Double high52w;
  private String highFormat;
  Double inst_own;
  private String interestrtmemo;
  private String ipo_dataFormat;
  private Long ipo_date;
  private String issue_type;
  private Double kzz_convert_price;
  private String kzz_convert_time;
  private Double kzz_covert_value;
  private Double kzz_cpr;
  private Double kzz_putback_price;
  private Double kzz_redempt_price;
  private Double kzz_stock_current;
  private String kzz_stock_name;
  private Double kzz_stock_percent;
  private String kzz_stock_symbol;
  private Double kzz_straight_price;
  Double last_close;
  Double low;
  Double low52w;
  private String lowFormat;
  Double market_capital;
  private String market_capitalFormat;
  private String maturitydate;
  String name;
  Double net_assets;
  private Double net_cost;
  private Double net_cost_day;
  private Double net_cost_yield;
  private Double net_profit;
  private Double net_profit_day;
  private Double net_profit_yield;
  Double open;
  private Double outstandingamt;
  private Double par_value;
  Double pb;
  Double pe_lyr;
  Double pe_ttm;
  Double percent;
  private String percentFormat;
  Double percent_ext;
  private String price_range;
  Double profit;
  Double profit_four;
  private String publisher;
  private String rate;
  private String redeem_type;
  private String release_date;
  private Double remain_year;
  Double rise_stop;
  private String sale_rrg;
  String symbol;
  Date time;
  private String timeFormat;
  Date time_ext;
  String time_str;
  Long total_shares;
  private Double totalissuescale;
  private Date trading_date;
  private Integer trading_days;
  Double turnover_rate;
  Integer type;
  Long update_at;
  private String value_date;
  Long volume;
  private String volumeFormat;
  private String warrant;
  Double yield;
  
  public Date getActual_date()
  {
    return this.actual_date;
  }
  
  public Integer getActual_days()
  {
    return this.actual_days;
  }
  
  public String getAfterHourVolFormat()
  {
    return this.afterHourVolFormat;
  }
  
  public Long getAfter_hour_vol()
  {
    return this.after_hour_vol;
  }
  
  public Double getAmount()
  {
    return this.amount;
  }
  
  public Long getAvg_volume()
  {
    return this.avg_volume;
  }
  
  public Double getBenefit_after_tax()
  {
    return this.benefit_after_tax;
  }
  
  public Double getBenefit_before_tax()
  {
    return this.benefit_before_tax;
  }
  
  public Double getBeta()
  {
    return this.beta;
  }
  
  public String getBond_type()
  {
    return this.bond_type;
  }
  
  public Double getChange_ext()
  {
    return this.change_ext;
  }
  
  public Double getChg()
  {
    return this.chg;
  }
  
  public String getChgColor()
  {
    return this.chgColor;
  }
  
  public Double getCirculation()
  {
    return this.circulation;
  }
  
  public Double getClose()
  {
    return this.close;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public Double getConvert_bond_ratio()
  {
    return this.convert_bond_ratio;
  }
  
  public Double getConvertrate()
  {
    return this.convertrate;
  }
  
  public String getCurrency_unit()
  {
    return this.currency_unit;
  }
  
  public Double getCurrent()
  {
    return this.current;
  }
  
  public Double getCurrent_ext()
  {
    return this.current_ext;
  }
  
  public String getDayFormat()
  {
    return this.dayFormat;
  }
  
  public Integer getDisNextPayDate()
  {
    return this.disNextPayDate;
  }
  
  public Double getDividend()
  {
    return this.dividend;
  }
  
  public String getDue_date()
  {
    return this.due_date;
  }
  
  public Double getDue_time()
  {
    return this.due_time;
  }
  
  public Double getEps()
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
  
  public String getExtend10()
  {
    return this.extend10;
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
  
  public Double getFall_stop()
  {
    return this.fall_stop;
  }
  
  public Integer getFlag()
  {
    return this.flag;
  }
  
  public Double getFloat_market_capital()
  {
    return this.float_market_capital;
  }
  
  public Long getFloat_shares()
  {
    return this.float_shares;
  }
  
  public Boolean getHasExist()
  {
    return this.hasExist;
  }
  
  public Double getHigh()
  {
    return this.high;
  }
  
  public Double getHigh52w()
  {
    return this.high52w;
  }
  
  public String getHighFormat()
  {
    return this.highFormat;
  }
  
  public Double getInst_own()
  {
    return this.inst_own;
  }
  
  public String getInterestrtmemo()
  {
    return this.interestrtmemo;
  }
  
  public String getIpo_dataFormat()
  {
    return this.ipo_dataFormat;
  }
  
  public Long getIpo_date()
  {
    return this.ipo_date;
  }
  
  public String getIssue_type()
  {
    return this.issue_type;
  }
  
  public Double getKzz_convert_price()
  {
    return this.kzz_convert_price;
  }
  
  public String getKzz_convert_time()
  {
    return this.kzz_convert_time;
  }
  
  public Double getKzz_covert_value()
  {
    return this.kzz_covert_value;
  }
  
  public Double getKzz_cpr()
  {
    return this.kzz_cpr;
  }
  
  public Double getKzz_putback_price()
  {
    return this.kzz_putback_price;
  }
  
  public Double getKzz_redempt_price()
  {
    return this.kzz_redempt_price;
  }
  
  public Double getKzz_stock_current()
  {
    return this.kzz_stock_current;
  }
  
  public String getKzz_stock_name()
  {
    return this.kzz_stock_name;
  }
  
  public Double getKzz_stock_percent()
  {
    return this.kzz_stock_percent;
  }
  
  public String getKzz_stock_symbol()
  {
    return this.kzz_stock_symbol;
  }
  
  public Double getKzz_straight_price()
  {
    return this.kzz_straight_price;
  }
  
  public Double getLast_close()
  {
    return this.last_close;
  }
  
  public Double getLow()
  {
    return this.low;
  }
  
  public Double getLow52w()
  {
    return this.low52w;
  }
  
  public String getLowFormat()
  {
    return this.lowFormat;
  }
  
  public Double getMarket_capital()
  {
    return this.market_capital;
  }
  
  public String getMarket_capitalFormat()
  {
    return this.market_capitalFormat;
  }
  
  public String getMaturitydate()
  {
    return this.maturitydate;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public Double getNet_assets()
  {
    return this.net_assets;
  }
  
  public Double getNet_cost()
  {
    return this.net_cost;
  }
  
  public Double getNet_cost_day()
  {
    return this.net_cost_day;
  }
  
  public Double getNet_cost_yield()
  {
    return this.net_cost_yield;
  }
  
  public Double getNet_profit()
  {
    return this.net_profit;
  }
  
  public Double getNet_profit_day()
  {
    return this.net_profit_day;
  }
  
  public Double getNet_profit_yield()
  {
    return this.net_profit_yield;
  }
  
  public Double getOpen()
  {
    return this.open;
  }
  
  public Double getOutstandingamt()
  {
    return this.outstandingamt;
  }
  
  public Double getPar_value()
  {
    return this.par_value;
  }
  
  public Double getPb()
  {
    return this.pb;
  }
  
  public Double getPe_lyr()
  {
    return this.pe_lyr;
  }
  
  public Double getPe_ttm()
  {
    return this.pe_ttm;
  }
  
  public Double getPercent()
  {
    return this.percent;
  }
  
  public String getPercentFormat()
  {
    return this.percentFormat;
  }
  
  public Double getPercent_ext()
  {
    return this.percent_ext;
  }
  
  public String getPrice_range()
  {
    return this.price_range;
  }
  
  public Double getProfit()
  {
    return this.profit;
  }
  
  public Double getProfit_four()
  {
    return this.profit_four;
  }
  
  public String getPublisher()
  {
    return this.publisher;
  }
  
  public String getRate()
  {
    return this.rate;
  }
  
  public String getRedeem_type()
  {
    return this.redeem_type;
  }
  
  public String getRelease_date()
  {
    return this.release_date;
  }
  
  public Double getRemain_year()
  {
    return this.remain_year;
  }
  
  public Double getRise_stop()
  {
    return this.rise_stop;
  }
  
  public String getSale_rrg()
  {
    return this.sale_rrg;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public Date getTime()
  {
    return this.time;
  }
  
  public String getTimeFormat()
  {
    return this.timeFormat;
  }
  
  public Date getTime_ext()
  {
    return this.time_ext;
  }
  
  public String getTime_str()
  {
    return this.time_str;
  }
  
  public Long getTotal_shares()
  {
    return this.total_shares;
  }
  
  public Double getTotalissuescale()
  {
    return this.totalissuescale;
  }
  
  public Date getTrading_date()
  {
    return this.trading_date;
  }
  
  public Integer getTrading_days()
  {
    return this.trading_days;
  }
  
  public Double getTurnover_rate()
  {
    return this.turnover_rate;
  }
  
  public Integer getType()
  {
    return this.type;
  }
  
  public Long getUpdate_at()
  {
    return this.update_at;
  }
  
  public String getValue_date()
  {
    return this.value_date;
  }
  
  public Long getVolume()
  {
    return this.volume;
  }
  
  public String getVolumeFormat()
  {
    return this.volumeFormat;
  }
  
  public String getWarrant()
  {
    return this.warrant;
  }
  
  public Double getYield()
  {
    return this.yield;
  }
  
  public void setActual_date(Date paramDate)
  {
    this.actual_date = paramDate;
  }
  
  public void setActual_days(Integer paramInteger)
  {
    this.actual_days = paramInteger;
  }
  
  public void setAfterHourVolFormat(String paramString)
  {
    this.afterHourVolFormat = paramString;
  }
  
  public void setAfter_hour_vol(Long paramLong)
  {
    this.after_hour_vol = paramLong;
  }
  
  public void setAmount(Double paramDouble)
  {
    this.amount = paramDouble;
  }
  
  public void setAvg_volume(Long paramLong)
  {
    this.avg_volume = paramLong;
  }
  
  public void setBenefit_after_tax(Double paramDouble)
  {
    this.benefit_after_tax = paramDouble;
  }
  
  public void setBenefit_before_tax(Double paramDouble)
  {
    this.benefit_before_tax = paramDouble;
  }
  
  public void setBeta(Double paramDouble)
  {
    this.beta = paramDouble;
  }
  
  public void setBond_type(String paramString)
  {
    this.bond_type = paramString;
  }
  
  public void setChange_ext(Double paramDouble)
  {
    this.change_ext = paramDouble;
  }
  
  public void setChg(Double paramDouble)
  {
    this.chg = paramDouble;
  }
  
  public void setChgColor(String paramString)
  {
    this.chgColor = paramString;
  }
  
  public void setCirculation(Double paramDouble)
  {
    this.circulation = paramDouble;
  }
  
  public void setClose(Double paramDouble)
  {
    this.close = paramDouble;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setConvert_bond_ratio(Double paramDouble)
  {
    this.convert_bond_ratio = paramDouble;
  }
  
  public void setConvertrate(Double paramDouble)
  {
    this.convertrate = paramDouble;
  }
  
  public void setCurrency_unit(String paramString)
  {
    this.currency_unit = paramString;
  }
  
  public void setCurrent(Double paramDouble)
  {
    this.current = paramDouble;
  }
  
  public void setCurrent_ext(Double paramDouble)
  {
    this.current_ext = paramDouble;
  }
  
  public void setDayFormat(String paramString)
  {
    this.dayFormat = paramString;
  }
  
  public void setDisNextPayDate(Integer paramInteger)
  {
    this.disNextPayDate = paramInteger;
  }
  
  public void setDividend(Double paramDouble)
  {
    this.dividend = paramDouble;
  }
  
  public void setDue_date(String paramString)
  {
    this.due_date = paramString;
  }
  
  public void setDue_time(Double paramDouble)
  {
    this.due_time = paramDouble;
  }
  
  public void setEps(Double paramDouble)
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
  
  public void setExtend10(String paramString)
  {
    this.extend10 = paramString;
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
  
  public void setFall_stop(Double paramDouble)
  {
    this.fall_stop = paramDouble;
  }
  
  public void setFlag(Integer paramInteger)
  {
    this.flag = paramInteger;
  }
  
  public void setFloat_market_capital(Double paramDouble)
  {
    this.float_market_capital = paramDouble;
  }
  
  public void setFloat_shares(Long paramLong)
  {
    this.float_shares = paramLong;
  }
  
  public void setHasExist(Boolean paramBoolean)
  {
    this.hasExist = paramBoolean;
  }
  
  public void setHigh(Double paramDouble)
  {
    this.high = paramDouble;
  }
  
  public void setHigh52w(Double paramDouble)
  {
    this.high52w = paramDouble;
  }
  
  public void setHighFormat(String paramString)
  {
    this.highFormat = paramString;
  }
  
  public void setInst_own(Double paramDouble)
  {
    this.inst_own = paramDouble;
  }
  
  public void setInterestrtmemo(String paramString)
  {
    this.interestrtmemo = paramString;
  }
  
  public void setIpo_dataFormat(String paramString)
  {
    this.ipo_dataFormat = paramString;
  }
  
  public void setIpo_date(Long paramLong)
  {
    this.ipo_date = paramLong;
  }
  
  public void setIssue_type(String paramString)
  {
    this.issue_type = paramString;
  }
  
  public void setKzz_convert_price(Double paramDouble)
  {
    this.kzz_convert_price = paramDouble;
  }
  
  public void setKzz_convert_time(String paramString)
  {
    this.kzz_convert_time = paramString;
  }
  
  public void setKzz_covert_value(Double paramDouble)
  {
    this.kzz_covert_value = paramDouble;
  }
  
  public void setKzz_cpr(Double paramDouble)
  {
    this.kzz_cpr = paramDouble;
  }
  
  public void setKzz_putback_price(Double paramDouble)
  {
    this.kzz_putback_price = paramDouble;
  }
  
  public void setKzz_redempt_price(Double paramDouble)
  {
    this.kzz_redempt_price = paramDouble;
  }
  
  public void setKzz_stock_current(Double paramDouble)
  {
    this.kzz_stock_current = paramDouble;
  }
  
  public void setKzz_stock_name(String paramString)
  {
    this.kzz_stock_name = paramString;
  }
  
  public void setKzz_stock_percent(Double paramDouble)
  {
    this.kzz_stock_percent = paramDouble;
  }
  
  public void setKzz_stock_symbol(String paramString)
  {
    this.kzz_stock_symbol = paramString;
  }
  
  public void setKzz_straight_price(Double paramDouble)
  {
    this.kzz_straight_price = paramDouble;
  }
  
  public void setLast_close(Double paramDouble)
  {
    this.last_close = paramDouble;
  }
  
  public void setLow(Double paramDouble)
  {
    this.low = paramDouble;
  }
  
  public void setLow52w(Double paramDouble)
  {
    this.low52w = paramDouble;
  }
  
  public void setLowFormat(String paramString)
  {
    this.lowFormat = paramString;
  }
  
  public void setMarket_capital(Double paramDouble)
  {
    this.market_capital = paramDouble;
  }
  
  public void setMarket_capitalFormat(String paramString)
  {
    this.market_capitalFormat = paramString;
  }
  
  public void setMaturitydate(String paramString)
  {
    this.maturitydate = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNet_assets(Double paramDouble)
  {
    this.net_assets = paramDouble;
  }
  
  public void setNet_cost(Double paramDouble)
  {
    this.net_cost = paramDouble;
  }
  
  public void setNet_cost_day(Double paramDouble)
  {
    this.net_cost_day = paramDouble;
  }
  
  public void setNet_cost_yield(Double paramDouble)
  {
    this.net_cost_yield = paramDouble;
  }
  
  public void setNet_profit(Double paramDouble)
  {
    this.net_profit = paramDouble;
  }
  
  public void setNet_profit_day(Double paramDouble)
  {
    this.net_profit_day = paramDouble;
  }
  
  public void setNet_profit_yield(Double paramDouble)
  {
    this.net_profit_yield = paramDouble;
  }
  
  public void setOpen(Double paramDouble)
  {
    this.open = paramDouble;
  }
  
  public void setOutstandingamt(Double paramDouble)
  {
    this.outstandingamt = paramDouble;
  }
  
  public void setPar_value(Double paramDouble)
  {
    this.par_value = paramDouble;
  }
  
  public void setPb(Double paramDouble)
  {
    this.pb = paramDouble;
  }
  
  public void setPe_lyr(Double paramDouble)
  {
    this.pe_lyr = paramDouble;
  }
  
  public void setPe_ttm(Double paramDouble)
  {
    this.pe_ttm = paramDouble;
  }
  
  public void setPercent(Double paramDouble)
  {
    this.percent = paramDouble;
  }
  
  public void setPercentFormat(String paramString)
  {
    this.percentFormat = paramString;
  }
  
  public void setPercent_ext(Double paramDouble)
  {
    this.percent_ext = paramDouble;
  }
  
  public void setPrice_range(String paramString)
  {
    this.price_range = paramString;
  }
  
  public void setProfit(Double paramDouble)
  {
    this.profit = paramDouble;
  }
  
  public void setProfit_four(Double paramDouble)
  {
    this.profit_four = paramDouble;
  }
  
  public void setPublisher(String paramString)
  {
    this.publisher = paramString;
  }
  
  public void setRate(String paramString)
  {
    this.rate = paramString;
  }
  
  public void setRedeem_type(String paramString)
  {
    this.redeem_type = paramString;
  }
  
  public void setRelease_date(String paramString)
  {
    this.release_date = paramString;
  }
  
  public void setRemain_year(Double paramDouble)
  {
    this.remain_year = paramDouble;
  }
  
  public void setRise_stop(Double paramDouble)
  {
    this.rise_stop = paramDouble;
  }
  
  public void setSale_rrg(String paramString)
  {
    this.sale_rrg = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTime(Date paramDate)
  {
    this.time = paramDate;
  }
  
  public void setTimeFormat(String paramString)
  {
    this.timeFormat = paramString;
  }
  
  public void setTime_ext(Date paramDate)
  {
    this.time_ext = paramDate;
  }
  
  public void setTime_str(String paramString)
  {
    this.time_str = paramString;
  }
  
  public void setTotal_shares(Long paramLong)
  {
    this.total_shares = paramLong;
  }
  
  public void setTotalissuescale(Double paramDouble)
  {
    this.totalissuescale = paramDouble;
  }
  
  public void setTrading_date(Date paramDate)
  {
    this.trading_date = paramDate;
  }
  
  public void setTrading_days(Integer paramInteger)
  {
    this.trading_days = paramInteger;
  }
  
  public void setTurnover_rate(Double paramDouble)
  {
    this.turnover_rate = paramDouble;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
  
  public void setUpdate_at(Long paramLong)
  {
    this.update_at = paramLong;
  }
  
  public void setValue_date(String paramString)
  {
    this.value_date = paramString;
  }
  
  public void setVolume(Long paramLong)
  {
    this.volume = paramLong;
  }
  
  public void setVolumeFormat(String paramString)
  {
    this.volumeFormat = paramString;
  }
  
  public void setWarrant(String paramString)
  {
    this.warrant = paramString;
  }
  
  public void setYield(Double paramDouble)
  {
    this.yield = paramDouble;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\data\Quote.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */