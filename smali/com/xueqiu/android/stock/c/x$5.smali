.class final Lcom/xueqiu/android/stock/c/x$5;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 14

    .prologue
    .line 1278
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 2069
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1282
    if-eqz v0, :cond_3

    .line 1283
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 1284
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704e5

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 3152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 1287
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    .line 1290
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1291
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1292
    const-string v1, "extra_write_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    const-string v1, "extra_auto_add_text"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "extra_card_type"

    const-string v2, "stock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    const-string v1, "extra_card_param"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;)V

    .line 1298
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1299
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1301
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1302
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1304
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1306
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/StockRemindingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1307
    const-string v1, "extra_stock_info"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1308
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;)V

    .line 1310
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1311
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1313
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1314
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1316
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1318
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/trade/TakingPositionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1320
    const-string v2, "extra_stock"

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1322
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;)V

    .line 1324
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1325
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 1326
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->c(Lcom/xueqiu/android/stock/c/x;Z)V

    .line 1327
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1328
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 1329
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->c(Lcom/xueqiu/android/stock/c/x;Z)V

    .line 1330
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1331
    :cond_8
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 1332
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V

    .line 1333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1335
    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 1337
    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    .line 6041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 6132
    iget-object v0, v0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/ClientInfo;->isMonkeyTestVersion()Z

    move-result v0

    .line 5442
    if-nez v0, :cond_a

    .line 5446
    iget-object v0, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_a

    .line 5449
    new-instance v6, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v6}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 5452
    iget-object v0, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 5453
    iget-object v1, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    .line 5455
    const-string v1, "%s/S/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v7, "https://xueqiu.com"

    aput-object v7, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5460
    const-string v1, ""

    .line 5464
    sparse-switch v3, :sswitch_data_0

    .line 5488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070554

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5491
    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07055d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v0, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8113
    iput-object v3, v6, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v2

    move-object v1, v2

    .line 9075
    :goto_1
    iget-object v8, v6, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 5496
    const-string v9, "wx_content_type"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10075
    iget-object v3, v6, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 5497
    const-string v8, "wx_friend_content"

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11065
    iget-object v0, v6, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 5498
    const-string v3, "wx_title"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12065
    iget-object v0, v6, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 5499
    const-string v3, "wx_friend_title"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12121
    iput-object v2, v6, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 12129
    iput-object v7, v6, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 5502
    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13101
    iput-object v0, v6, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 13145
    const/4 v0, 0x3

    iput v0, v6, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 5504
    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    .line 1338
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 5477
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703d0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v10}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v10}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    const/4 v8, 0x2

    iget-object v9, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v9}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703c8

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v10}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v10}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v1, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0703c9

    .line 5479
    invoke-virtual {v5, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5483
    invoke-virtual {v5}, Lcom/xueqiu/android/stock/c/x;->h()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f0703cf

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v12}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v12}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v12}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    const-string v12, "MM-dd HH:mm:ss"

    invoke-static {v11, v12}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7113
    iput-object v8, v6, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 1340
    :cond_b
    const v0, 0x7f0e000b

    if-ne p1, v0, :cond_d

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    const v2, 0x7f0700b6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/c/x;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 1343
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/stock/c/x$5$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/x$5$1;-><init>(Lcom/xueqiu/android/stock/c/x$5;)V

    .line 1344
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1353
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1351
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->g(Lcom/xueqiu/android/stock/c/x;)V

    goto :goto_2

    .line 1354
    :cond_d
    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    .line 1355
    const-string v0, "%s/S/%s/preipo"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://xueqiu.com"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1357
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1358
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1360
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1362
    :cond_e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_10

    .line 1363
    const-string v0, "https://fund.xueqiu.com/ads/redirect?exchange=DJ&symbol=%s&source=xueqiu&refer=stock"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1375
    :cond_f
    const v0, 0x102002c

    if-ne p1, v0, :cond_11

    .line 1376
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->y_()Z

    .line 1377
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1365
    :cond_10
    const/16 v0, 0xb

    if-ne p1, v0, :cond_f

    .line 1366
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1367
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$5;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1368
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1369
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1370
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1372
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1380
    :cond_11
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "stock_detail_post"

    .line 14088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1381
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_0
        0x1e -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method
