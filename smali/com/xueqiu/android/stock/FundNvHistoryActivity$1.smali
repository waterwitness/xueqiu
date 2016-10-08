.class final Lcom/xueqiu/android/stock/FundNvHistoryActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "FundNvHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/FundNvHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/FundNvHistoryActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity$1;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1066
    iget-object v0, p0, Lcom/xueqiu/android/stock/FundNvHistoryActivity$1;->a:Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/FundNvHistoryActivity;->a(Lcom/xueqiu/android/stock/FundNvHistoryActivity;Lcom/google/gson/JsonObject;)V

    .line 58
    return-void
.end method
