.class final Lcom/xueqiu/android/trade/c/o$9;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->u()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$9;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public final b_(I)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$9;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->g(Lcom/xueqiu/android/trade/c/o;)[Lcom/xueqiu/android/trade/c/s;

    move-result-object v0

    aget-object v0, v0, p1

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->C_()V

    .line 236
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->u()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->u()Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setCurrentTradeAccountTid(Ljava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$9;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/o;->a(Lcom/xueqiu/android/trade/c/o;I)V

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$9;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;I)V

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$9;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->h(Lcom/xueqiu/android/trade/c/o;)V

    .line 243
    return-void
.end method
