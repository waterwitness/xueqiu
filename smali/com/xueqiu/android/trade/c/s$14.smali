.class final Lcom/xueqiu/android/trade/c/s$14;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

.field final synthetic b:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

.field final synthetic c:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/SemiTradeAccount;Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$14;->c:Lcom/xueqiu/android/trade/c/s;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$14;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/s$14;->b:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 948
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/broker/proxy?url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$14;->a:Lcom/xueqiu/android/trade/model/SemiTradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/SemiTradeAccount;->getOpeningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/az;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$14;->c:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5dd

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 955
    const-string v1, "status"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$14;->b:Lcom/xueqiu/android/trade/model/SemiTradeAccount$Status;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v1, "tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$14;->c:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 957
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 958
    return-void

    .line 951
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
