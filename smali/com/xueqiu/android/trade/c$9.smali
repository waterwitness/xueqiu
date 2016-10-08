.class final Lcom/xueqiu/android/trade/c$9;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/a/a;

.field final synthetic b:Lcom/xueqiu/android/trade/model/TradeAccount;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$9;->e:Lcom/xueqiu/android/trade/c;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$9;->a:Lcom/xueqiu/android/base/a/a;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c$9;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    iput-boolean p4, p0, Lcom/xueqiu/android/trade/c$9;->c:Z

    iput-object p5, p0, Lcom/xueqiu/android/trade/c$9;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    const-string v0, "70015"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$9;->a:Lcom/xueqiu/android/base/a/a;

    .line 1064
    iget-object v1, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "70005"

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$9;->a:Lcom/xueqiu/android/base/a/a;

    .line 2064
    iget-object v1, v1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$9;->a:Lcom/xueqiu/android/base/a/a;

    .line 2092
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 194
    invoke-static {v0}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getPageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/xueqiu/android/trade/c$9;->e:Lcom/xueqiu/android/trade/c;

    .line 3049
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$9;->e:Lcom/xueqiu/android/trade/c;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$9;->b:Lcom/xueqiu/android/trade/model/TradeAccount;

    iget-boolean v2, p0, Lcom/xueqiu/android/trade/c$9;->c:Z

    iget-object v3, p0, Lcom/xueqiu/android/trade/c$9;->d:Ljava/util/ArrayList;

    .line 4049
    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V

    goto :goto_0
.end method
