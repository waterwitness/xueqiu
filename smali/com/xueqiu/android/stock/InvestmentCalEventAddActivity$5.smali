.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;
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
        "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1111
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1112
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1093
    check-cast p1, Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 2097
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2098
    if-eqz p1, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-wide v2, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mId:J

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_id:J

    .line 2100
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v1, p1, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    .line 2102
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->g(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    .line 2105
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$5;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;)V

    .line 1093
    :cond_0
    return-void
.end method
