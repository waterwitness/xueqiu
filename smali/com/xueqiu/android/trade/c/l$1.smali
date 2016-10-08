.class final Lcom/xueqiu/android/trade/c/l$1;
.super Lcom/xueqiu/android/base/b/p;
.source "PositionCardItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/l;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 186
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 2064
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 189
    invoke-static {v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/l;->a(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/base/a/a;)V

    .line 194
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 169
    check-cast p1, Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 2172
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2172
    if-eqz v0, :cond_0

    .line 2176
    if-eqz p1, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/l;->a(Lcom/xueqiu/android/trade/c/l;Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;)Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    .line 2178
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/l;->a(Lcom/xueqiu/android/trade/c/l;)V

    .line 2179
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/l;->b(Lcom/xueqiu/android/trade/c/l;)V

    .line 2180
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/l;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    const-string v2, "cache_key_fund_income"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/l;->a(Lcom/xueqiu/android/trade/c/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/l$1;->a:Lcom/xueqiu/android/trade/c/l;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/l;->c(Lcom/xueqiu/android/trade/c/l;)Lcom/xueqiu/android/trade/model/AccountFundIncomeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method
