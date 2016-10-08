.class final Lcom/xueqiu/android/stock/h$4;
.super Lcom/xueqiu/android/base/b/p;
.source "InvestmentCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$4;->a:Lcom/xueqiu/android/stock/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 458
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 459
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 449
    check-cast p1, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 1453
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$4;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/stock/model/InvestmentCalendar;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 449
    return-void
.end method
