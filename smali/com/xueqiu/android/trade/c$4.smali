.class final Lcom/xueqiu/android/trade/c$4;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/TradeAccount;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/model/TradeAccount;Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$4;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$4;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c$4;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/xueqiu/android/trade/c$4;->d:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/xueqiu/android/trade/c$4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 421
    check-cast p1, Ljava/lang/Boolean;

    .line 1424
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1425
    const-string v2, "70005"

    iget-object v3, p0, Lcom/xueqiu/android/trade/c$4;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$4;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/xueqiu/android/trade/c$4;->c:Landroid/content/Intent;

    iget-object v5, p0, Lcom/xueqiu/android/trade/c$4;->d:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/xueqiu/android/trade/c$4;->e:Z

    move-object v0, v1

    .line 2434
    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v7, Lcom/xueqiu/android/trade/c$5;

    invoke-direct {v7, v1, v4}, Lcom/xueqiu/android/trade/c$5;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v2, v3, v0, v7}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    .line 2445
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v6, :cond_0

    .line 2446
    invoke-virtual {v0, v5}, Lcom/xueqiu/android/trade/c;->a(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    .line 2448
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c;->a()V

    goto :goto_0

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$4;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
