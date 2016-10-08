.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;
.super Ljava/lang/Object;
.source "InvestmentCalEventAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/DateTimePicker;

.field final synthetic b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/common/widget/DateTimePicker;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 810
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$13;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    .line 1111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1112
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(III)V

    .line 1113
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(II)V

    .line 811
    return-void
.end method
