.class public Lcom/xueqiu/android/base/storage/prefs/UserPrefs;
.super Ljava/lang/Object;
.source "UserPrefs.java"


# static fields
.field public static final ANONYMOUS_PROFILE_MENU_CONFIG:Ljava/lang/String; = "profile_menu_config_anonymous"

.field public static final ANONYMOUS_PROFILE_MENU_CONFIG_UPDATED:Ljava/lang/String; = "profile_menu_config_updated_anonymous"

.field public static final APP_SHARE_CONTENT:Ljava/lang/String; = "app_share_content"

.field private static final CACHE_KEY_BROKERS:Ljava/lang/String; = "cache_key_brokers"

.field private static final CACHE_KEY_CURRENT_ACCOUNT:Ljava/lang/String; = "cache_key_current_account"

.field private static final CACHE_KEY_EXCHANGE_MAP:Ljava/lang/String; = "cache_key_exchange_map"

.field private static final CACHE_KEY_TRADE_ACCOUNT:Ljava/lang/String; = "cache_key_trade_account"

.field private static final CACHE_KEY_TRADE_ACCOUNT_SEMI:Ljava/lang/String; = "cache_key_trade_account_semi"

.field public static final CUBE_RANK_CONFIG:Ljava/lang/String; = "cube_rank_config"

.field public static final CUBE_RANK_CONFIG_UPDATE:Ljava/lang/String; = "cube_rank_config_update"

.field public static final CUBE_RANK_FILTER:Ljava/lang/String; = "cube_rank_filter"

.field public static final CUBE_RANK_FILTER_UPDATED:Ljava/lang/String; = "cube_rank_filter_updated"

.field public static final DISCOVER_HEADER_IMG_HEIGHT:Ljava/lang/String; = "discover_header_img_height"

.field public static final FIRST_ANSWER_PAID_QUESTION:Ljava/lang/String; = "first_answer_paid_question"

.field public static final FIRST_PAY_AT_AUTHOR:Ljava/lang/String; = "first_pay_at_author"

.field public static final KEY_FRIENDSHIP_GROUPS:Ljava/lang/String; = "key_friendship_groups"

.field public static final KEY_IS_NEW_USER:Ljava/lang/String; = "key_is_new_user"

.field public static final KEY_LAST_COMMENT:Ljava/lang/String; = "key_last_comment"

.field public static final KEY_LAST_MENTION:Ljava/lang/String; = "key_last_mention"

.field public static final KEY_LAST_PAID_MENTION:Ljava/lang/String; = "key_new_paid_mention"

.field public static final KEY_LAST_PUSH:Ljava/lang/String; = "key_new_push"

.field public static final KEY_LAST_TRADE_NOTIFICATION:Ljava/lang/String; = "key_last_trade_notification"

.field public static final KEY_NEW_FOLLOWER:Ljava/lang/String; = "key_new_follower"

.field public static final KEY_PORTFOLIOS:Ljava/lang/String; = "key_portfolios"

.field public static final KEY_PORTFOLIO_STOCKS:Ljava/lang/String; = "key_portfolio_stocks"

.field public static final KEY_PORTFOLIO_STOCK_QUOTE:Ljava/lang/String; = "key_portfolio_stock_quote"

.field public static final KEY_QUOTES_CENTER_NEW_STRATEGY_CLEAR_TS:Ljava/lang/String; = "key_quotes_center_new_strategy_clear_ts"

.field public static final KEY_REMIND:Ljava/lang/String; = "key_remind"

.field public static final KEY_SELECTED_PORTFOLIO:Ljava/lang/String; = "key_selected_portfolio"

.field public static final KEY_SELECTED_TIMELINE_GROUP:Ljava/lang/String; = "key_selected_timeline_group"

.field public static final LAST_ORDER_TID:Ljava/lang/String; = "last_order_tid"

.field public static final PAID_MENTION_AVAILABILITY:Ljava/lang/String; = "paid_mention_availability"

.field public static final PAID_PAGE_TYPE:Ljava/lang/String; = "paid_page_type"

.field public static final PAY_ASK_FIRST_IN:Ljava/lang/String; = "pay_ask_first_in"

.field public static final PAY_ASK_FIRST_IN_WRITE:Ljava/lang/String; = "pay_ask_first_in_write"

.field public static final PORTFOLIO_PAGE_TYPE:Ljava/lang/String; = "portfolio_page_type"

.field public static final PORTFOLIO_SORT:Ljava/lang/String; = "portfolio_sort"

.field public static final POST_LONG_STATUS_TAG:Ljava/lang/String; = "post_long_status_tag"

.field public static final PROFILE_MENU_CONFIG:Ljava/lang/String; = "profile_menu_config"

.field public static final PROFILE_MENU_CONFIG_UPDATED:Ljava/lang/String; = "profile_menu_config_updated"

.field public static final SNOWX_TRADER_CONFIG:Ljava/lang/String; = "snowx_trader_config"

.field public static final STOCK_TAB_SELECTED:Ljava/lang/String; = "stock_tab_selected"

.field public static final TRADE_KEY:Ljava/lang/String; = "trade_key"

.field public static final TRADE_PAGE_TYPE:Ljava/lang/String; = "trade_page_type"

.field public static final TRADE_TOKENS:Ljava/lang/String; = "trade_tokens"

.field public static final TRADE_WRITE_TOKEN_EXPIRES:Ljava/lang/String; = "trade_write_token_expires"

.field public static final USER_CUBE_LEVEL:Ljava/lang/String; = "user_cube_level"

.field private static jumpAccountTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public static clearCurrentJumpAccountTid()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->jumpAccountTid:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 167
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoundBrokers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_trade_account"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$3;

    invoke-direct {v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$3;-><init>()V

    .line 236
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 237
    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 241
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cache_key_trade_account_semi"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$4;

    invoke-direct {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$4;-><init>()V

    .line 243
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    :cond_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static getBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 158
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentExchangeBroker(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 251
    if-nez p0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentTradeAccountTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccount(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeBroker;->getEtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    goto :goto_0
.end method

.method public static getCurrentJumpAccountTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->jumpAccountTid:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentTradeAccountTid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_current_account"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    return-object v0
.end method

.method public static getDouble(Landroid/content/Context;Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 191
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 200
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 175
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 183
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 130
    if-nez p0, :cond_0

    .line 131
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object p0

    .line 133
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTradableBrokers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 308
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->isSuccessBondStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 312
    :cond_1
    return-object v3
.end method

.method public static getTradableBrokers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_exchange_map"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$5;

    invoke-direct {v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$5;-><init>()V

    .line 268
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 269
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 273
    if-nez v0, :cond_2

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :cond_1
    return-object v0

    .line 276
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoundBrokers()Ljava/util/ArrayList;

    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 278
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    move v4, v3

    .line 279
    :goto_1
    if-ge v4, v6, :cond_4

    .line 280
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 278
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static getTradableBrokers(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 289
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers()Ljava/util/ArrayList;

    move-result-object v6

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 294
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    move v4, v3

    .line 295
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 296
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 294
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v5

    .line 301
    goto :goto_0
.end method

.method public static getTradeAccount(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 316
    if-nez p0, :cond_0

    move-object v0, v2

    .line 325
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers()Ljava/util/ArrayList;

    move-result-object v3

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 321
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    goto :goto_0

    .line 320
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 325
    goto :goto_0
.end method

.method public static getTradeAccountByStockBrokers(Ljava/util/List;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xueqiu/android/trade/model/TradeAccount;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentTradeAccountTid()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 357
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 358
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 359
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 368
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    .line 361
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 362
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    goto :goto_0

    .line 361
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    goto :goto_0

    .line 368
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paidMentionAvailable()Z
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "paid_mention_availability"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 378
    return v0
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    return-void
.end method

.method public static setBytes(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    if-eqz p2, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setCurrentJumpAccountTid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    sput-object p0, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->jumpAccountTid:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public static setCurrentTradeAccountTid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_key_current_account"

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static setDouble(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 187
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    return-void
.end method

.method public static setFloat(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 171
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 179
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public static storeBoundBrokers(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 207
    instance-of v4, v0, Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    if-eqz v4, :cond_0

    .line 208
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 216
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$1;

    invoke-direct {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$1;-><init>()V

    .line 217
    invoke-virtual {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 216
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v3, "cache_key_trade_account"

    invoke-static {v1, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 225
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$2;

    invoke-direct {v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$2;-><init>()V

    .line 226
    invoke-virtual {v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_2
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cache_key_trade_account_semi"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 219
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 228
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public static storeExchangeMap(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cache_key_exchange_map"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method
