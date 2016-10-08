.class final Lcom/xueqiu/android/trade/c$10;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 208
    const-string v0, "IB"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 1049
    iget-object v1, v1, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 208
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/broker/ib/bind?step=3&reset=1&aid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 2049
    iget-object v1, v1, Lcom/xueqiu/android/trade/c;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 209
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 3049
    iget-object v1, v1, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 213
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 4049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 5049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 215
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->b()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$10;->a:Lcom/xueqiu/android/trade/c;

    .line 6049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->a:Lcom/xueqiu/android/common/b;

    .line 218
    const v1, 0x7f070541

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 219
    return-void

    .line 211
    :cond_1
    const-string v0, "/6123409880/51642242"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
