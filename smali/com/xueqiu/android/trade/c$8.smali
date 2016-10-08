.class final Lcom/xueqiu/android/trade/c$8;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lcom/xueqiu/android/trade/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLjava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$8;->a:Lcom/xueqiu/android/trade/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$8;->a:Lcom/xueqiu/android/trade/c;

    .line 1049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->d:Lcom/xueqiu/android/trade/c/c;

    .line 181
    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/c/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 182
    return-void
.end method
