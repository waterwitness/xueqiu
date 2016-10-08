.class public Lcom/snowballfinance/messageplatform/data/Quote;
.super Ljava/lang/Object;
.source "Quote.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private actual_date:Ljava/util/Date;

.field private actual_days:Ljava/lang/Integer;

.field private afterHourVolFormat:Ljava/lang/String;

.field after_hour_vol:Ljava/lang/Long;

.field amount:Ljava/lang/Double;

.field avg_volume:Ljava/lang/Long;

.field private benefit_after_tax:Ljava/lang/Double;

.field private benefit_before_tax:Ljava/lang/Double;

.field beta:Ljava/lang/Double;

.field private bond_type:Ljava/lang/String;

.field change_ext:Ljava/lang/Double;

.field chg:Ljava/lang/Double;

.field private chgColor:Ljava/lang/String;

.field private circulation:Ljava/lang/Double;

.field close:Ljava/lang/Double;

.field code:Ljava/lang/String;

.field private convert_bond_ratio:Ljava/lang/Double;

.field private convertrate:Ljava/lang/Double;

.field currency_unit:Ljava/lang/String;

.field current:Ljava/lang/Double;

.field current_ext:Ljava/lang/Double;

.field private dayFormat:Ljava/lang/String;

.field disNextPayDate:Ljava/lang/Integer;

.field dividend:Ljava/lang/Double;

.field private due_date:Ljava/lang/String;

.field private due_time:Ljava/lang/Double;

.field eps:Ljava/lang/Double;

.field exchange:Ljava/lang/String;

.field private extend1:Ljava/lang/String;

.field private extend10:Ljava/lang/String;

.field private extend2:Ljava/lang/String;

.field private extend3:Ljava/lang/String;

.field private extend4:Ljava/lang/String;

.field private extend5:Ljava/lang/String;

.field private extend6:Ljava/lang/String;

.field private extend7:Ljava/lang/String;

.field private extend8:Ljava/lang/String;

.field private extend9:Ljava/lang/String;

.field fall_stop:Ljava/lang/Double;

.field private flag:Ljava/lang/Integer;

.field float_market_capital:Ljava/lang/Double;

.field float_shares:Ljava/lang/Long;

.field hasExist:Ljava/lang/Boolean;

.field high:Ljava/lang/Double;

.field high52w:Ljava/lang/Double;

.field private highFormat:Ljava/lang/String;

.field inst_own:Ljava/lang/Double;

.field private interestrtmemo:Ljava/lang/String;

.field private ipo_dataFormat:Ljava/lang/String;

.field private ipo_date:Ljava/lang/Long;

.field private issue_type:Ljava/lang/String;

.field private kzz_convert_price:Ljava/lang/Double;

.field private kzz_convert_time:Ljava/lang/String;

.field private kzz_covert_value:Ljava/lang/Double;

.field private kzz_cpr:Ljava/lang/Double;

.field private kzz_putback_price:Ljava/lang/Double;

.field private kzz_redempt_price:Ljava/lang/Double;

.field private kzz_stock_current:Ljava/lang/Double;

.field private kzz_stock_name:Ljava/lang/String;

.field private kzz_stock_percent:Ljava/lang/Double;

.field private kzz_stock_symbol:Ljava/lang/String;

.field private kzz_straight_price:Ljava/lang/Double;

.field last_close:Ljava/lang/Double;

.field low:Ljava/lang/Double;

.field low52w:Ljava/lang/Double;

.field private lowFormat:Ljava/lang/String;

.field market_capital:Ljava/lang/Double;

.field private market_capitalFormat:Ljava/lang/String;

.field private maturitydate:Ljava/lang/String;

.field name:Ljava/lang/String;

.field net_assets:Ljava/lang/Double;

.field private net_cost:Ljava/lang/Double;

.field private net_cost_day:Ljava/lang/Double;

.field private net_cost_yield:Ljava/lang/Double;

.field private net_profit:Ljava/lang/Double;

.field private net_profit_day:Ljava/lang/Double;

.field private net_profit_yield:Ljava/lang/Double;

.field open:Ljava/lang/Double;

.field private outstandingamt:Ljava/lang/Double;

.field private par_value:Ljava/lang/Double;

.field pb:Ljava/lang/Double;

.field pe_lyr:Ljava/lang/Double;

.field pe_ttm:Ljava/lang/Double;

.field percent:Ljava/lang/Double;

.field private percentFormat:Ljava/lang/String;

.field percent_ext:Ljava/lang/Double;

.field private price_range:Ljava/lang/String;

.field profit:Ljava/lang/Double;

.field profit_four:Ljava/lang/Double;

.field private publisher:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private redeem_type:Ljava/lang/String;

.field private release_date:Ljava/lang/String;

.field private remain_year:Ljava/lang/Double;

.field rise_stop:Ljava/lang/Double;

.field private sale_rrg:Ljava/lang/String;

.field symbol:Ljava/lang/String;

.field time:Ljava/util/Date;

.field private timeFormat:Ljava/lang/String;

.field time_ext:Ljava/util/Date;

.field time_str:Ljava/lang/String;

.field total_shares:Ljava/lang/Long;

.field private totalissuescale:Ljava/lang/Double;

.field private trading_date:Ljava/util/Date;

.field private trading_days:Ljava/lang/Integer;

.field turnover_rate:Ljava/lang/Double;

.field type:Ljava/lang/Integer;

.field update_at:Ljava/lang/Long;

.field private value_date:Ljava/lang/String;

.field volume:Ljava/lang/Long;

.field private volumeFormat:Ljava/lang/String;

.field private warrant:Ljava/lang/String;

.field yield:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActual_date()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->actual_date:Ljava/util/Date;

    return-object v0
.end method

.method public getActual_days()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->actual_days:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAfterHourVolFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->afterHourVolFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAfter_hour_vol()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->after_hour_vol:Ljava/lang/Long;

    return-object v0
.end method

.method public getAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getAvg_volume()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->avg_volume:Ljava/lang/Long;

    return-object v0
.end method

.method public getBenefit_after_tax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->benefit_after_tax:Ljava/lang/Double;

    return-object v0
.end method

.method public getBenefit_before_tax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->benefit_before_tax:Ljava/lang/Double;

    return-object v0
.end method

.method public getBeta()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->beta:Ljava/lang/Double;

    return-object v0
.end method

.method public getBond_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->bond_type:Ljava/lang/String;

    return-object v0
.end method

.method public getChange_ext()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->change_ext:Ljava/lang/Double;

    return-object v0
.end method

.method public getChg()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->chg:Ljava/lang/Double;

    return-object v0
.end method

.method public getChgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->chgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCirculation()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->circulation:Ljava/lang/Double;

    return-object v0
.end method

.method public getClose()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->close:Ljava/lang/Double;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConvert_bond_ratio()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->convert_bond_ratio:Ljava/lang/Double;

    return-object v0
.end method

.method public getConvertrate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->convertrate:Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrency_unit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->currency_unit:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->current:Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrent_ext()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->current_ext:Ljava/lang/Double;

    return-object v0
.end method

.method public getDayFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->dayFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDisNextPayDate()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->disNextPayDate:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDividend()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->dividend:Ljava/lang/Double;

    return-object v0
.end method

.method public getDue_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->due_date:Ljava/lang/String;

    return-object v0
.end method

.method public getDue_time()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->due_time:Ljava/lang/Double;

    return-object v0
.end method

.method public getEps()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->eps:Ljava/lang/Double;

    return-object v0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend1:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend10:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend2:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend3:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend4:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend5:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend6:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend7:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend8:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend9:Ljava/lang/String;

    return-object v0
.end method

.method public getFall_stop()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->fall_stop:Ljava/lang/Double;

    return-object v0
.end method

.method public getFlag()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->flag:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFloat_market_capital()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->float_market_capital:Ljava/lang/Double;

    return-object v0
.end method

.method public getFloat_shares()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->float_shares:Ljava/lang/Long;

    return-object v0
.end method

.method public getHasExist()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->hasExist:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHigh()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->high:Ljava/lang/Double;

    return-object v0
.end method

.method public getHigh52w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->high52w:Ljava/lang/Double;

    return-object v0
.end method

.method public getHighFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->highFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getInst_own()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->inst_own:Ljava/lang/Double;

    return-object v0
.end method

.method public getInterestrtmemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->interestrtmemo:Ljava/lang/String;

    return-object v0
.end method

.method public getIpo_dataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->ipo_dataFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIpo_date()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->ipo_date:Ljava/lang/Long;

    return-object v0
.end method

.method public getIssue_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->issue_type:Ljava/lang/String;

    return-object v0
.end method

.method public getKzz_convert_price()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_convert_price:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_convert_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_convert_time:Ljava/lang/String;

    return-object v0
.end method

.method public getKzz_covert_value()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_covert_value:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_cpr()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_cpr:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_putback_price()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_putback_price:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_redempt_price()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_redempt_price:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_stock_current()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_current:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_stock_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_name:Ljava/lang/String;

    return-object v0
.end method

.method public getKzz_stock_percent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_percent:Ljava/lang/Double;

    return-object v0
.end method

.method public getKzz_stock_symbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getKzz_straight_price()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_straight_price:Ljava/lang/Double;

    return-object v0
.end method

.method public getLast_close()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->last_close:Ljava/lang/Double;

    return-object v0
.end method

.method public getLow()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->low:Ljava/lang/Double;

    return-object v0
.end method

.method public getLow52w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->low52w:Ljava/lang/Double;

    return-object v0
.end method

.method public getLowFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->lowFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMarket_capital()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->market_capital:Ljava/lang/Double;

    return-object v0
.end method

.method public getMarket_capitalFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->market_capitalFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMaturitydate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->maturitydate:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_assets()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_assets:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_cost()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_cost_day()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost_day:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_cost_yield()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost_yield:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_profit()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_profit_day()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit_day:Ljava/lang/Double;

    return-object v0
.end method

.method public getNet_profit_yield()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit_yield:Ljava/lang/Double;

    return-object v0
.end method

.method public getOpen()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->open:Ljava/lang/Double;

    return-object v0
.end method

.method public getOutstandingamt()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->outstandingamt:Ljava/lang/Double;

    return-object v0
.end method

.method public getPar_value()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->par_value:Ljava/lang/Double;

    return-object v0
.end method

.method public getPb()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pb:Ljava/lang/Double;

    return-object v0
.end method

.method public getPe_lyr()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pe_lyr:Ljava/lang/Double;

    return-object v0
.end method

.method public getPe_ttm()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pe_ttm:Ljava/lang/Double;

    return-object v0
.end method

.method public getPercent()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percent:Ljava/lang/Double;

    return-object v0
.end method

.method public getPercentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent_ext()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percent_ext:Ljava/lang/Double;

    return-object v0
.end method

.method public getPrice_range()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->price_range:Ljava/lang/String;

    return-object v0
.end method

.method public getProfit()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->profit:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfit_four()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->profit_four:Ljava/lang/Double;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeem_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->redeem_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getRemain_year()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->remain_year:Ljava/lang/Double;

    return-object v0
.end method

.method public getRise_stop()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->rise_stop:Ljava/lang/Double;

    return-object v0
.end method

.method public getSale_rrg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->sale_rrg:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->timeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_ext()Ljava/util/Date;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time_ext:Ljava/util/Date;

    return-object v0
.end method

.method public getTime_str()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time_str:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_shares()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->total_shares:Ljava/lang/Long;

    return-object v0
.end method

.method public getTotalissuescale()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->totalissuescale:Ljava/lang/Double;

    return-object v0
.end method

.method public getTrading_date()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->trading_date:Ljava/util/Date;

    return-object v0
.end method

.method public getTrading_days()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->trading_days:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTurnover_rate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->turnover_rate:Ljava/lang/Double;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdate_at()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->update_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue_date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->value_date:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->volume:Ljava/lang/Long;

    return-object v0
.end method

.method public getVolumeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->volumeFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getWarrant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->warrant:Ljava/lang/String;

    return-object v0
.end method

.method public getYield()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Quote;->yield:Ljava/lang/Double;

    return-object v0
.end method

.method public setActual_date(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->actual_date:Ljava/util/Date;

    .line 1043
    return-void
.end method

.method public setActual_days(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->actual_days:Ljava/lang/Integer;

    .line 1035
    return-void
.end method

.method public setAfterHourVolFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->afterHourVolFormat:Ljava/lang/String;

    .line 759
    return-void
.end method

.method public setAfter_hour_vol(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->after_hour_vol:Ljava/lang/Long;

    .line 1019
    return-void
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->amount:Ljava/lang/Double;

    .line 293
    return-void
.end method

.method public setAvg_volume(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->avg_volume:Ljava/lang/Long;

    .line 433
    return-void
.end method

.method public setBenefit_after_tax(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->benefit_after_tax:Ljava/lang/Double;

    .line 1123
    return-void
.end method

.method public setBenefit_before_tax(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->benefit_before_tax:Ljava/lang/Double;

    .line 1115
    return-void
.end method

.method public setBeta(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->beta:Ljava/lang/Double;

    .line 503
    return-void
.end method

.method public setBond_type(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->bond_type:Ljava/lang/String;

    .line 987
    return-void
.end method

.method public setChange_ext(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->change_ext:Ljava/lang/Double;

    .line 581
    return-void
.end method

.method public setChg(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->chg:Ljava/lang/Double;

    .line 377
    return-void
.end method

.method public setChgColor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->chgColor:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public setCirculation(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->circulation:Ljava/lang/Double;

    .line 923
    return-void
.end method

.method public setClose(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->close:Ljava/lang/Double;

    .line 349
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->code:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setConvert_bond_ratio(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->convert_bond_ratio:Ljava/lang/Double;

    .line 1131
    return-void
.end method

.method public setConvertrate(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->convertrate:Ljava/lang/Double;

    .line 1172
    return-void
.end method

.method public setCurrency_unit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->currency_unit:Ljava/lang/String;

    .line 683
    return-void
.end method

.method public setCurrent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->current:Ljava/lang/Double;

    .line 265
    return-void
.end method

.method public setCurrent_ext(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->current_ext:Ljava/lang/Double;

    .line 567
    return-void
.end method

.method public setDayFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->dayFormat:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public setDisNextPayDate(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->disNextPayDate:Ljava/lang/Integer;

    .line 1276
    return-void
.end method

.method public setDividend(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->dividend:Ljava/lang/Double;

    .line 525
    return-void
.end method

.method public setDue_date(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->due_date:Ljava/lang/String;

    .line 955
    return-void
.end method

.method public setDue_time(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->due_time:Ljava/lang/Double;

    .line 939
    return-void
.end method

.method public setEps(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->eps:Ljava/lang/Double;

    .line 461
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->exchange:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setExtend1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend1:Ljava/lang/String;

    .line 1196
    return-void
.end method

.method public setExtend10(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend10:Ljava/lang/String;

    .line 1268
    return-void
.end method

.method public setExtend2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend2:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method public setExtend3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend3:Ljava/lang/String;

    .line 1212
    return-void
.end method

.method public setExtend4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend4:Ljava/lang/String;

    .line 1220
    return-void
.end method

.method public setExtend5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend5:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public setExtend6(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend6:Ljava/lang/String;

    .line 1236
    return-void
.end method

.method public setExtend7(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend7:Ljava/lang/String;

    .line 1244
    return-void
.end method

.method public setExtend8(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend8:Ljava/lang/String;

    .line 1252
    return-void
.end method

.method public setExtend9(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->extend9:Ljava/lang/String;

    .line 1260
    return-void
.end method

.method public setFall_stop(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->fall_stop:Ljava/lang/Double;

    .line 699
    return-void
.end method

.method public setFlag(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->flag:Ljava/lang/Integer;

    .line 1107
    return-void
.end method

.method public setFloat_market_capital(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->float_market_capital:Ljava/lang/Double;

    .line 715
    return-void
.end method

.method public setFloat_shares(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->float_shares:Ljava/lang/Long;

    .line 553
    return-void
.end method

.method public setHasExist(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->hasExist:Ljava/lang/Boolean;

    .line 723
    return-void
.end method

.method public setHigh(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->high:Ljava/lang/Double;

    .line 321
    return-void
.end method

.method public setHigh52w(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->high52w:Ljava/lang/Double;

    .line 405
    return-void
.end method

.method public setHighFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->highFormat:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setInst_own(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->inst_own:Ljava/lang/Double;

    .line 637
    return-void
.end method

.method public setInterestrtmemo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->interestrtmemo:Ljava/lang/String;

    .line 1180
    return-void
.end method

.method public setIpo_dataFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->ipo_dataFormat:Ljava/lang/String;

    .line 819
    return-void
.end method

.method public setIpo_date(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->ipo_date:Ljava/lang/Long;

    .line 811
    return-void
.end method

.method public setIssue_type(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->issue_type:Ljava/lang/String;

    .line 979
    return-void
.end method

.method public setKzz_convert_price(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_convert_price:Ljava/lang/Double;

    .line 851
    return-void
.end method

.method public setKzz_convert_time(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_convert_time:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public setKzz_covert_value(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_covert_value:Ljava/lang/Double;

    .line 859
    return-void
.end method

.method public setKzz_cpr(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_cpr:Ljava/lang/Double;

    .line 867
    return-void
.end method

.method public setKzz_putback_price(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_putback_price:Ljava/lang/Double;

    .line 875
    return-void
.end method

.method public setKzz_redempt_price(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_redempt_price:Ljava/lang/Double;

    .line 891
    return-void
.end method

.method public setKzz_stock_current(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_current:Ljava/lang/Double;

    .line 843
    return-void
.end method

.method public setKzz_stock_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_name:Ljava/lang/String;

    .line 835
    return-void
.end method

.method public setKzz_stock_percent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_percent:Ljava/lang/Double;

    .line 1188
    return-void
.end method

.method public setKzz_stock_symbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_stock_symbol:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public setKzz_straight_price(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->kzz_straight_price:Ljava/lang/Double;

    .line 899
    return-void
.end method

.method public setLast_close(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->last_close:Ljava/lang/Double;

    .line 363
    return-void
.end method

.method public setLow(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->low:Ljava/lang/Double;

    .line 335
    return-void
.end method

.method public setLow52w(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->low52w:Ljava/lang/Double;

    .line 419
    return-void
.end method

.method public setLowFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->lowFormat:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setMarket_capital(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->market_capital:Ljava/lang/Double;

    .line 447
    return-void
.end method

.method public setMarket_capitalFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->market_capitalFormat:Ljava/lang/String;

    .line 779
    return-void
.end method

.method public setMaturitydate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->maturitydate:Ljava/lang/String;

    .line 1156
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->name:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setNet_assets(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_assets:Ljava/lang/Double;

    .line 675
    return-void
.end method

.method public setNet_cost(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost:Ljava/lang/Double;

    .line 1083
    return-void
.end method

.method public setNet_cost_day(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost_day:Ljava/lang/Double;

    .line 1091
    return-void
.end method

.method public setNet_cost_yield(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_cost_yield:Ljava/lang/Double;

    .line 1099
    return-void
.end method

.method public setNet_profit(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit:Ljava/lang/Double;

    .line 1059
    return-void
.end method

.method public setNet_profit_day(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit_day:Ljava/lang/Double;

    .line 1067
    return-void
.end method

.method public setNet_profit_yield(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->net_profit_yield:Ljava/lang/Double;

    .line 1075
    return-void
.end method

.method public setOpen(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->open:Ljava/lang/Double;

    .line 307
    return-void
.end method

.method public setOutstandingamt(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->outstandingamt:Ljava/lang/Double;

    .line 1148
    return-void
.end method

.method public setPar_value(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->par_value:Ljava/lang/Double;

    .line 931
    return-void
.end method

.method public setPb(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pb:Ljava/lang/Double;

    .line 707
    return-void
.end method

.method public setPe_lyr(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pe_lyr:Ljava/lang/Double;

    .line 489
    return-void
.end method

.method public setPe_ttm(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->pe_ttm:Ljava/lang/Double;

    .line 475
    return-void
.end method

.method public setPercent(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percent:Ljava/lang/Double;

    .line 391
    return-void
.end method

.method public setPercentFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percentFormat:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public setPercent_ext(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->percent_ext:Ljava/lang/Double;

    .line 595
    return-void
.end method

.method public setPrice_range(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->price_range:Ljava/lang/String;

    .line 803
    return-void
.end method

.method public setProfit(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->profit:Ljava/lang/Double;

    .line 659
    return-void
.end method

.method public setProfit_four(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->profit_four:Ljava/lang/Double;

    .line 667
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->publisher:Ljava/lang/String;

    .line 963
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->rate:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public setRedeem_type(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->redeem_type:Ljava/lang/String;

    .line 971
    return-void
.end method

.method public setRelease_date(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->release_date:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public setRemain_year(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->remain_year:Ljava/lang/Double;

    .line 1164
    return-void
.end method

.method public setRise_stop(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->rise_stop:Ljava/lang/Double;

    .line 691
    return-void
.end method

.method public setSale_rrg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->sale_rrg:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->symbol:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time:Ljava/util/Date;

    .line 237
    return-void
.end method

.method public setTimeFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->timeFormat:Ljava/lang/String;

    .line 795
    return-void
.end method

.method public setTime_ext(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time_ext:Ljava/util/Date;

    .line 609
    return-void
.end method

.method public setTime_str(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->time_str:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setTotal_shares(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->total_shares:Ljava/lang/Long;

    .line 539
    return-void
.end method

.method public setTotalissuescale(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->totalissuescale:Ljava/lang/Double;

    .line 1140
    return-void
.end method

.method public setTrading_date(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->trading_date:Ljava/util/Date;

    .line 1051
    return-void
.end method

.method public setTrading_days(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->trading_days:Ljava/lang/Integer;

    .line 1027
    return-void
.end method

.method public setTurnover_rate(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->turnover_rate:Ljava/lang/Double;

    .line 623
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->type:Ljava/lang/Integer;

    .line 907
    return-void
.end method

.method public setUpdate_at(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->update_at:Ljava/lang/Long;

    .line 651
    return-void
.end method

.method public setValue_date(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->value_date:Ljava/lang/String;

    .line 947
    return-void
.end method

.method public setVolume(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->volume:Ljava/lang/Long;

    .line 279
    return-void
.end method

.method public setVolumeFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->volumeFormat:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public setWarrant(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->warrant:Ljava/lang/String;

    .line 995
    return-void
.end method

.method public setYield(Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Quote;->yield:Ljava/lang/Double;

    .line 518
    return-void
.end method
