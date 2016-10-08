.class final Lcom/xueqiu/android/trade/c$1;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$1;->a:Lcom/xueqiu/android/trade/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 136
    .line 1139
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$1;->a:Lcom/xueqiu/android/trade/c;

    .line 2049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 1139
    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$1;->a:Lcom/xueqiu/android/trade/c;

    .line 3049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 1140
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->a()V

    .line 136
    :cond_0
    return-void
.end method
