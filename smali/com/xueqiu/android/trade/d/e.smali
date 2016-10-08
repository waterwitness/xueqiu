.class final Lcom/xueqiu/android/trade/d/e;
.super Ljava/lang/Object;
.source "OrderFullPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/d;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/trade/d/d;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/trade/d/d;B)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/d/e;-><init>(Lcom/xueqiu/android/trade/d/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    .line 1135
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    if-nez v2, :cond_1

    move v0, v1

    .line 272
    :goto_0
    if-eqz v0, :cond_6

    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    .line 2041
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    .line 273
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/f;->p()Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/client/MessageService;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-static {v0}, Lcom/xueqiu/android/trade/d/d;->a(Lcom/xueqiu/android/trade/d/d;)V

    .line 280
    :goto_1
    const/16 v0, 0x3e8

    .line 286
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    .line 5252
    iget-object v2, v1, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v3, v1, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5253
    iget-object v2, v1, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v1, v1, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    return-void

    .line 1138
    :cond_1
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v2}, Lcom/xueqiu/android/base/util/as;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/base/util/at;

    move-result-object v2

    .line 1139
    iget-object v3, v2, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    const-string v4, "bitcoin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1140
    const/4 v0, 0x1

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v3, v2, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/xueqiu/android/trade/d/d;->c:Landroid/content/Context;

    const v5, 0x7f070225

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1142
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->c()Z

    move-result v0

    goto :goto_0

    .line 1143
    :cond_3
    iget-object v2, v2, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->c:Landroid/content/Context;

    const v3, 0x7f070227

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1144
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->a()Z

    move-result v0

    goto :goto_0

    .line 1146
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->b()Z

    move-result v0

    goto :goto_0

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/e;->a:Lcom/xueqiu/android/trade/d/d;

    .line 3041
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 277
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 4184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4185
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4186
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    invoke-interface {v2}, Lcom/xueqiu/android/trade/b/f;->p()Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v2

    invoke-static {v3, v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;Z)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4187
    invoke-virtual {v1, v2, v3, v4}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/d/d$5;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/trade/d/d$5;-><init>(Lcom/xueqiu/android/trade/d/d;)V

    .line 4188
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/d/d$3;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/trade/d/d$3;-><init>(Lcom/xueqiu/android/trade/d/d;)V

    new-instance v3, Lcom/xueqiu/android/trade/d/d$4;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/trade/d/d$4;-><init>(Lcom/xueqiu/android/trade/d/d;)V

    .line 4203
    invoke-virtual {v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    goto/16 :goto_1

    .line 283
    :cond_6
    const v0, 0x1d4c0

    goto/16 :goto_2
.end method
