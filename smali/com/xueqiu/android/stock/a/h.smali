.class public final Lcom/xueqiu/android/stock/a/h;
.super Lcom/xueqiu/android/common/a/d;
.source "InvestmentCalendarEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0301ad

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/h;->e:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    new-instance v1, Lcom/xueqiu/android/stock/a/i;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/a/i;-><init>(Lcom/xueqiu/android/stock/a/h;)V

    .line 42
    const v0, 0x7f0e063c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/i;->a:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e063d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/stock/a/i;->b:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/stock/a/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 50
    new-instance v2, Ljava/util/Date;

    iget-wide v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStart_date:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v4}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    const-string v5, "yyyy-MM-dd HH:mm"

    const-string v6, "HH:mm"

    invoke-static {v2, v4, v5, v6}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-boolean v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mAll_day:Z

    if-eqz v4, :cond_0

    .line 54
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/h;->e:Landroid/content/Context;

    const v4, 0x7f07002d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_0
    iget-object v4, v1, Lcom/xueqiu/android/stock/a/i;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mStock:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_1
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/i;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-object v3

    .line 46
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/i;

    move-object v1, v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method
