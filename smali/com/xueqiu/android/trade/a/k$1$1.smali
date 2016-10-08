.class final Lcom/xueqiu/android/trade/a/k$1$1;
.super Ljava/lang/Object;
.source "TradeNotificationListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/a/k$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/a/k$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/a/k$1;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/trade/a/k$1$1;->a:Lcom/xueqiu/android/trade/a/k$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lcom/xueqiu/android/trade/model/TradeNotification;

    check-cast p2, Lcom/xueqiu/android/trade/model/TradeNotification;

    .line 1034
    invoke-virtual {p1}, Lcom/xueqiu/android/trade/model/TradeNotification;->getOccurTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xueqiu/android/trade/model/TradeNotification;->getOccurTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 31
    return v0
.end method
