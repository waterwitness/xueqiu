.class final Lcom/xueqiu/android/stock/StockFollowersActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StockFollowersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockFollowersActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockFollowersActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$1;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 77
    check-cast p1, Lorg/json/JSONObject;

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$1;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/stock/StockFollowersActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1086
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$1;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/stock/StockFollowersActivity;)V

    .line 77
    return-void
.end method
