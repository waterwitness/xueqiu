.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;
.super Ljava/lang/Object;
.source "InvestmentCalEventAddActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0e0631

    aput v2, v0, v1

    .line 203
    if-eqz p2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    const-string v2, "1"

    iput-object v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 206
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 207
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    const-string v2, "0"

    iput-object v2, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mShare:Ljava/lang/String;

    .line 210
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 211
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    .line 212
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$6;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->c(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;[I)V

    goto :goto_0

    .line 206
    nop

    :array_0
    .array-data 4
        0x7f0e062b
        0x7f0e062e
        0x7f0e0631
    .end array-data

    .line 210
    :array_1
    .array-data 4
        0x7f0e062b
        0x7f0e062e
    .end array-data
.end method
