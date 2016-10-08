.class final Lcom/xueqiu/android/stock/h$2;
.super Ljava/lang/Object;
.source "InvestmentCalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->b(Lcom/xueqiu/android/stock/h;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->c(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->c(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    const v1, 0x7f070556

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 276
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 277
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v1}, Lcom/xueqiu/android/stock/h;->d(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    .line 1367
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 277
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 279
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/h;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    const-string v2, "investment_calendar_model"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->b(Lcom/xueqiu/android/stock/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->e(Lcom/xueqiu/android/stock/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->f(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->f(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    move-result-object v2

    iget-object v2, v2, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    .line 288
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->b(Lcom/xueqiu/android/stock/h;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    const-string v0, "user_investment_cal_list"

    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->c(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    :cond_3
    const-string v0, "sotkc_symbol_extra"

    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->e(Lcom/xueqiu/android/stock/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v0, "extra_calendar_from_url"

    iget-object v2, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v2}, Lcom/xueqiu/android/stock/h;->b(Lcom/xueqiu/android/stock/h;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/h;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 285
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xueqiu/android/stock/h$2;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v3}, Lcom/xueqiu/android/stock/h;->e(Lcom/xueqiu/android/stock/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5927\u4e8b\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mCalendar_title:Ljava/lang/String;

    goto :goto_1
.end method
