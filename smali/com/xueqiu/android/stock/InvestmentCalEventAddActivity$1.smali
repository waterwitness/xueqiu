.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;
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
    .line 167
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v1, 0x7f0e035a

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    iget-object v1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    const v2, 0x7f0e035c

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    if-eqz p2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    .line 174
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 175
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 176
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 183
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_2
    :goto_0
    return-void

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v2

    iput-boolean v5, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    .line 189
    iget-object v2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mSDateTime:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$1;->a:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;->a(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;)Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mEDateTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
