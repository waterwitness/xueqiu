.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;
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

.field final synthetic b:I

.field final synthetic c:Landroid/app/Dialog;

.field final synthetic d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Lcom/xueqiu/android/common/widget/DateTimePicker;ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    iput p3, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->b:I

    iput-object p4, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 771
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/DateTimePicker;->clearFocus()V

    .line 773
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(I)I

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 775
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(I)I

    move-result v2

    .line 776
    iget-object v3, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(I)I

    move-result v3

    .line 777
    iget-object v4, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/common/widget/DateTimePicker;->a(I)I

    move-result v4

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iget v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->b:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 783
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v1, :cond_2

    .line 784
    const/4 v1, 0x0

    const/16 v3, 0xa

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 786
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->b:I

    const v1, 0x7f0e035a

    if-ne v0, v1, :cond_1

    .line 788
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iput-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 789
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->getDateTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    .line 794
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 795
    return-void

    .line 790
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->b:I

    const v1, 0x7f0e035c

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iput-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 792
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->d:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$11;->a:Lcom/xueqiu/android/common/widget/DateTimePicker;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/DateTimePicker;->getDateTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEnd_Date:J

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method
