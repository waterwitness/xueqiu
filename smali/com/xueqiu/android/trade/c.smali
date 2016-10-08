.class public final Lcom/xueqiu/android/trade/c;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"


# instance fields
.field a:Lcom/xueqiu/android/common/b;

.field b:Lcom/xueqiu/android/trade/model/TradeAccount;

.field c:Lcom/xueqiu/android/trade/d;

.field d:Lcom/xueqiu/android/trade/c/c;

.field private e:Ljava/lang/String;

.field private f:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 59
    iput-object v0, p0, Lcom/xueqiu/android/trade/c;->d:Lcom/xueqiu/android/trade/c/c;

    .line 77
    iput-object p3, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 80
    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;Lcom/xueqiu/android/trade/c/c;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;Lcom/xueqiu/android/trade/c/c;)Lcom/xueqiu/android/trade/c;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/trade/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/xueqiu/android/trade/c;-><init>(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;)V

    .line 1265
    iput-object p3, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 70
    if-eqz p4, :cond_0

    .line 1269
    iput-object p4, v0, Lcom/xueqiu/android/trade/c;->d:Lcom/xueqiu/android/trade/c/c;

    .line 73
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/xueqiu/android/trade/c$4;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/trade/c$4;-><init>(Lcom/xueqiu/android/trade/model/TradeAccount;Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Z)V

    invoke-static {p0, p2, v0}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Lrx/c/b;)V

    .line 431
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Lrx/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            "Lrx/c/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/xueqiu/android/trade/c$13;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/trade/c$13;-><init>(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/b;)Lrx/a;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/xueqiu/android/trade/c$14;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/c$14;-><init>()V

    invoke-virtual {v0, p2, v1}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 352
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v0, 0x1

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 294
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v2

    .line 5197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 295
    if-eqz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    const-string v2, "trade_write_token_expires"

    sget-object v3, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 301
    invoke-static {v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->EVERY_TIME:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    if-eq v3, v4, :cond_0

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getCreateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-double v4, v4

    .line 305
    invoke-static {v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v3

    sget-object v6, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    if-ne v3, v6, :cond_2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v3, v4, v6

    if-gez v3, :cond_0

    .line 309
    :cond_2
    invoke-static {v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v3

    sget-object v6, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    if-ne v3, v6, :cond_3

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    cmpl-double v3, v4, v6

    if-gez v3, :cond_0

    .line 315
    :cond_3
    invoke-static {v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    if-ne v2, v3, :cond_4

    .line 317
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 318
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 320
    sget-object v1, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 321
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 323
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 324
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 329
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 279
    const-string v0, "70005"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "70006"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "70015"

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/trade/c$12;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/trade/c$12;-><init>(Lcom/xueqiu/android/trade/c;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07047b

    .line 259
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 262
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "70015"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "70005"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getPageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    .line 2239
    const-string v1, "70006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 3147
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final a(Lcom/xueqiu/android/base/a/a;)V
    .locals 3

    .prologue
    .line 454
    const-string v0, "70005"

    .line 6064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c;->a()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string v0, "70015"

    .line 7064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/trade/c$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c$6;-><init>(Lcom/xueqiu/android/trade/c;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    .line 468
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 470
    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 471
    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    goto :goto_0
.end method

.method final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 4

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRefreshUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/broker/proxy?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.xueqiu.android.action.updateBrokerTokenSuccess"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/c$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c$1;-><init>(Lcom/xueqiu/android/trade/c;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 144
    return-void

    .line 133
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/trade/model/TradeAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v0, p1, p2}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Z)Lcom/xueqiu/android/trade/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c;->f:Lcom/xueqiu/android/trade/c/b;

    .line 152
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->f:Lcom/xueqiu/android/trade/c/b;

    .line 3588
    iput-object p3, v0, Lcom/xueqiu/android/trade/c/b;->m:Ljava/util/ArrayList;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->f:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->show()V

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->f:Lcom/xueqiu/android/trade/c/b;

    new-instance v1, Lcom/xueqiu/android/trade/c$7;

    invoke-direct {v1, p0, p3}, Lcom/xueqiu/android/trade/c$7;-><init>(Lcom/xueqiu/android/trade/c;Ljava/util/ArrayList;)V

    .line 4550
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/b;->i:Lcom/xueqiu/android/trade/c/d;

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->d:Lcom/xueqiu/android/trade/c/c;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->f:Lcom/xueqiu/android/trade/c/b;

    new-instance v1, Lcom/xueqiu/android/trade/c$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c$8;-><init>(Lcom/xueqiu/android/trade/c;)V

    .line 4554
    iput-object v1, v0, Lcom/xueqiu/android/trade/c/b;->j:Lcom/xueqiu/android/trade/c/c;

    .line 185
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "70015"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "70005"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getPageType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->e:Ljava/lang/String;

    .line 3239
    const-string v1, "70006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/trade/c;->b(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method
