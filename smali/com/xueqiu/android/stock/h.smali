.class public final Lcom/xueqiu/android/stock/h;
.super Lcom/xueqiu/android/common/c;
.source "InvestmentCalendarActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;
.implements Lcom/xueqiu/android/common/widget/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
        ">;",
        "Lcom/xueqiu/android/common/widget/l;"
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private ak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvestmentCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private al:Lcom/xueqiu/android/common/a/p;

.field private am:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private an:I

.field private ao:I

.field private ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Ljava/util/Date;

.field private ar:Landroid/content/BroadcastReceiver;

.field private as:Landroid/view/View$OnClickListener;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Lcom/xueqiu/android/common/r;

.field private h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/h;->b:Z

    .line 102
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    .line 103
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    .line 104
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    .line 105
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->am:Ljava/util/List;

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/stock/h;->an:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    .line 120
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    .line 122
    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    .line 131
    new-instance v0, Lcom/xueqiu/android/stock/h$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/h$1;-><init>(Lcom/xueqiu/android/stock/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->ar:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/xueqiu/android/stock/h$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/h$3;-><init>(Lcom/xueqiu/android/stock/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->as:Landroid/view/View$OnClickListener;

    .line 570
    new-instance v0, Lcom/xueqiu/android/stock/h$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/h$7;-><init>(Lcom/xueqiu/android/stock/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->a:Landroid/os/Handler;

    return-void
.end method

.method private C()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 498
    const v0, 0x7f0e0639

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 499
    invoke-static {}, Lcom/xueqiu/android/base/util/h;->a()I

    move-result v1

    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 501
    iget v3, p0, Lcom/xueqiu/android/stock/h;->ao:I

    sub-int v1, v3, v1

    .line 502
    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5e74"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/h;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/xueqiu/android/stock/h;->an:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/stock/model/InvestmentCalendar;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/stock/h;->h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/h;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/stock/h;->a(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 508
    if-eqz p2, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->am:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 513
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    .line 12135
    iget-object v0, v0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    .line 513
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 515
    invoke-static {}, Lcom/xueqiu/android/base/util/h;->a()I

    move-result v7

    .line 516
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 520
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move v4, v2

    move v3, v2

    move v5, v2

    move v6, v2

    .line 521
    :goto_1
    if-ge v4, v8, :cond_5

    .line 522
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    .line 523
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 524
    const-string v10, "cal_title_time"

    iget-object v11, v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mDate:Ljava/lang/String;

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v10, p0, Lcom/xueqiu/android/stock/h;->am:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v1, Lcom/xueqiu/android/stock/a/h;

    iget-object v10, p0, Lcom/xueqiu/android/stock/h;->c:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/xueqiu/android/stock/a/h;-><init>(Landroid/content/Context;)V

    .line 528
    iget-object v10, v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Lcom/xueqiu/android/stock/a/h;->a(Ljava/util/ArrayList;)V

    .line 529
    iget-object v10, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    .line 13026
    new-instance v11, Lcom/xueqiu/android/common/a/p$1;

    invoke-direct {v11, v10}, Lcom/xueqiu/android/common/a/p$1;-><init>(Lcom/xueqiu/android/common/a/p;)V

    invoke-interface {v1, v11}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13038
    iget-object v11, v10, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13039
    invoke-virtual {v10}, Lcom/xueqiu/android/common/a/p;->notifyDataSetChanged()V

    .line 530
    iget v1, p0, Lcom/xueqiu/android/stock/h;->ao:I

    if-eq v7, v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    .line 531
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iget v10, p0, Lcom/xueqiu/android/stock/h;->ao:I

    if-ne v1, v10, :cond_9

    .line 532
    :cond_2
    if-nez v4, :cond_3

    move v1, v2

    :goto_2
    add-int/2addr v1, v5

    .line 534
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 536
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 537
    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mDate:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 539
    const-string v10, "yyyy-MM-dd"

    invoke-static {v5, v0, v10}, Lcom/xueqiu/android/base/util/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 540
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 541
    if-nez v4, :cond_4

    move v3, v0

    move v0, v2

    .line 521
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v1

    move v6, v3

    move v3, v0

    goto/16 :goto_1

    .line 532
    :cond_3
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    iget-object v1, v1, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 545
    :cond_4
    if-le v6, v0, :cond_8

    move v3, v0

    move v0, v4

    .line 547
    goto :goto_3

    .line 553
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/p;->notifyDataSetChanged()V

    .line 555
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    if-eq v7, v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    .line 556
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/h;->ao:I

    if-ne v0, v1, :cond_0

    .line 557
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    :goto_4
    add-int/lit8 v0, v2, 0x1

    .line 558
    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->a:Landroid/os/Handler;

    new-instance v2, Lcom/xueqiu/android/stock/h$6;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/h$6;-><init>(Lcom/xueqiu/android/stock/h;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 557
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_8
    move v0, v3

    move v3, v6

    goto :goto_3

    :cond_9
    move v0, v3

    move v1, v5

    move v3, v6

    goto :goto_3
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/h;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/h;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/h;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/stock/model/InvestmentCalendar;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/h;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/stock/h;->ao:I

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/h;)V
    .locals 2

    .prologue
    .line 91
    .line 14370
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    .line 15225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 91
    return-void
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/h;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/stock/h;->ao:I

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/h;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/h;->b:Z

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/h;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    return v0
.end method

.method private u()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 217
    .line 8236
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/stock/StockDetailActivity;

    if-nez v0, :cond_2

    .line 8237
    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 8238
    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xueqiu/android/stock/h;->f:Z

    if-eqz v1, :cond_1

    .line 8239
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8240
    const v0, 0x7f070066

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/h;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8243
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->a(Ljava/lang/CharSequence;)V

    .line 8246
    :cond_2
    const v0, 0x7f0e0638

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 8247
    const v1, 0x7f0e063a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/h;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 8248
    iget-object v2, p0, Lcom/xueqiu/android/stock/h;->as:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8249
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->as:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8252
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    if-nez v0, :cond_3

    .line 8253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->am:Ljava/util/List;

    .line 8254
    new-instance v0, Lcom/xueqiu/android/common/a/g;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/h;->am:Ljava/util/List;

    const v3, 0x7f0301ac

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "cal_title_time"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f0e063b

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/a/g;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 8258
    new-instance v1, Lcom/xueqiu/android/common/a/p;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/common/a/p;-><init>(Landroid/content/Context;Landroid/widget/Adapter;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    .line 8261
    :cond_3
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 8262
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    .line 8263
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    .line 8264
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->al:Lcom/xueqiu/android/common/a/p;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 8265
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/r;->b(Z)V

    .line 8267
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/stock/h$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/h$2;-><init>(Lcom/xueqiu/android/stock/h;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8300
    invoke-direct {p0}, Lcom/xueqiu/android/stock/h;->C()V

    .line 219
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/h;->b:Z

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 222
    const-string v1, "investment_calendar_data_cache_obj"

    const-class v2, Lcom/xueqiu/android/stock/g;

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/g;

    .line 223
    if-eqz v0, :cond_4

    .line 224
    iget v1, v0, Lcom/xueqiu/android/stock/g;->c:I

    iput v1, p0, Lcom/xueqiu/android/stock/h;->ao:I

    .line 225
    iget-object v1, v0, Lcom/xueqiu/android/stock/g;->b:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    .line 226
    iget-object v0, v0, Lcom/xueqiu/android/stock/g;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    .line 228
    invoke-direct {p0}, Lcom/xueqiu/android/stock/h;->C()V

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v7}, Lcom/xueqiu/android/stock/h;->a(Ljava/util/ArrayList;Z)V

    .line 232
    :cond_4
    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/xueqiu/android/stock/h;->u()V

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->e_(Z)V

    .line 194
    const v0, 0x7f0301ab

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x2

    .line 375
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v6

    .line 382
    invoke-static {}, Lcom/xueqiu/android/base/util/h;->a()I

    move-result v0

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 384
    iget v2, p0, Lcom/xueqiu/android/stock/h;->ao:I

    sub-int v0, v2, v0

    .line 386
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 389
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 390
    if-le v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 392
    :goto_0
    add-int/lit8 v0, v3, 0x1

    .line 393
    if-le v0, v4, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    iget-object v3, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/xueqiu/android/stock/h;->e:J

    .line 9167
    iget-object v0, v6, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 401
    return-object v0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 393
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->c:Landroid/content/Context;

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->ar:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.xueqiu.android.DELETE_CALENDAR_EVENT_SUCCESS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 172
    if-eqz v0, :cond_1

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 173
    const-string v1, "sotkc_symbol_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/h;->d:Ljava/lang/String;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 174
    const-string v1, "extra_calendar_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/h;->e:J

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 175
    const-string v1, "extra_calendar_from_url"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/h;->f:Z

    .line 6564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 176
    const-string v1, "extra_calendar_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 7564
    iget-object v4, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 178
    const-string v5, "EXtra_is_mine"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/xueqiu/android/stock/h;->b:Z

    .line 181
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->aq:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    .line 187
    :goto_1
    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/util/h;->a()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/stock/StockDetailActivity;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/xueqiu/android/stock/h;->u()V

    .line 203
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 413
    .line 9240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 413
    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    if-eqz p2, :cond_4

    .line 417
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 419
    iget v0, p0, Lcom/xueqiu/android/stock/h;->an:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 420
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    .line 424
    :cond_2
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/stock/h;->an:I

    goto :goto_0

    .line 421
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stock/h;->an:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 422
    iget v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/h;->ao:I

    goto :goto_1

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/xueqiu/android/stock/h;->C()V

    .line 430
    iput-object p1, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->ap:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p3}, Lcom/xueqiu/android/stock/h;->a(Ljava/util/ArrayList;Z)V

    .line 9445
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 9447
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/h;->f:Z

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/xueqiu/android/stock/h;->e:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_6

    .line 9448
    new-instance v1, Lcom/xueqiu/android/stock/h$4;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/stock/h$4;-><init>(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/base/b/q;)V

    .line 9461
    iget-wide v2, p0, Lcom/xueqiu/android/stock/h;->e:J

    .line 10192
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/xueqiu/android/base/b/e;->a(Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 9492
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/h;->f:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xueqiu/android/stock/h;->e:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    if-eqz v0, :cond_0

    .line 9493
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->h:Lcom/xueqiu/android/stock/model/InvestmentCalendar;

    iget-object v0, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendar;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/h;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9462
    :cond_6
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/h;->f:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->ak:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 9463
    :cond_7
    new-instance v1, Lcom/xueqiu/android/stock/h$5;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/stock/h$5;-><init>(Lcom/xueqiu/android/stock/h;Lcom/xueqiu/android/base/b/q;Ljava/util/ArrayList;)V

    .line 11179
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->j:Lcom/xueqiu/android/base/b/e;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/e;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xueqiu/android/base/b/p;->a(Ljava/lang/Object;)V

    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 586
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->o()V

    .line 587
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    .line 14367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 13385
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v0

    .line 588
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 589
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->g:Lcom/xueqiu/android/common/r;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 591
    :cond_0
    return-void

    .line 588
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/xueqiu/android/stock/h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/stock/h;->ar:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 597
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 598
    return-void
.end method
