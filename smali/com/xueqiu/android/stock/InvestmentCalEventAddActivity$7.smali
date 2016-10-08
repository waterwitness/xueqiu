.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;
.super Lcom/xueqiu/android/base/b/p;
.source "InvestmentCalEventAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/stock/model/EventCalListPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 305
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 301
    check-cast p1, Lcom/xueqiu/android/stock/model/EventCalListPair;

    .line 1310
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1311
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iget-object v1, p1, Lcom/xueqiu/android/stock/model/EventCalListPair;->mCalList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1312
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;I)V

    .line 1313
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$7;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iget-object v1, p1, Lcom/xueqiu/android/stock/model/EventCalListPair;->mEvent:Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    .line 301
    return-void
.end method
