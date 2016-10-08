.class final Lcom/xueqiu/android/trade/a/k$1;
.super Landroid/database/DataSetObserver;
.source "TradeNotificationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/a/k;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/a/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/a/k;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/k$1;->a:Lcom/xueqiu/android/trade/a/k;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/trade/a/k$1;->a:Lcom/xueqiu/android/trade/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/a/k$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/a/k$1$1;-><init>(Lcom/xueqiu/android/trade/a/k$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    return-void
.end method
