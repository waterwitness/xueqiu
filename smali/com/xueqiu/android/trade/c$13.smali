.class final Lcom/xueqiu/android/trade/c$13;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Lrx/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xueqiu/android/trade/model/TradeAccount;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$13;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$13;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 338
    check-cast p1, Lrx/i;

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$13;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$13;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1342
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1343
    invoke-virtual {p1}, Lrx/i;->a()V

    .line 338
    return-void
.end method
