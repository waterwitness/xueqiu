.class public final Lcom/xueqiu/android/community/c/j;
.super Lcom/xueqiu/android/common/c;
.source "LiveNewsFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/c;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/LiveNews;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/xueqiu/android/community/a/g;

.field private c:Ljava/util/Calendar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lrx/j;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    .line 49
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    .line 51
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->c:Ljava/util/Calendar;

    .line 53
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->d:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->e:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->f:Lrx/j;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/c/j;->g:Z

    .line 67
    return-void
.end method

.method private a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    .line 2367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 136
    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    if-nez p1, :cond_1

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getId()J

    move-result-wide v2

    .line 145
    :goto_0
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x76d

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3691
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/aj;->b(JJLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    .line 150
    return-object v0

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getId()J

    move-result-wide v0

    move-wide v2, v4

    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/j;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/j;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 5171
    add-int/lit8 v0, p1, -0x1

    .line 5172
    if-gez v0, :cond_0

    move v0, v1

    .line 5175
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/g;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5179
    iget-object v2, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    .line 5180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 5181
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 5183
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->c:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->c:Ljava/util/Calendar;

    .line 5184
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 5185
    :cond_1
    iput-object v2, p0, Lcom/xueqiu/android/community/c/j;->c:Ljava/util/Calendar;

    .line 5187
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 5188
    iget-object v3, p0, Lcom/xueqiu/android/community/c/j;->d:Landroid/widget/TextView;

    const/16 v4, 0xa

    if-lt v0, v4, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5189
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->e:Landroid/widget/TextView;

    const-string v3, "%s %s"

    new-array v4, v7, [Ljava/lang/Object;

    .line 5190
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Lcom/xueqiu/android/base/util/h;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 5191
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    .line 5190
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_2
    return-void

    .line 5188
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    if-lez p1, :cond_3

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4247
    if-nez p1, :cond_1

    .line 4248
    const-string v1, ""

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->h()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/ay;->a(Ljava/lang/String;Landroid/content/res/Resources;F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4249
    :cond_1
    const/16 v1, 0x64

    if-lt p1, v1, :cond_2

    .line 4250
    const-string v1, "99+"

    goto :goto_1

    .line 4252
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 234
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/j;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/c/j;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/c/j;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/xueqiu/android/community/c/j;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/c/j;)Lcom/xueqiu/android/community/a/g;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    return-object v0
.end method

.method public static u()Lcom/xueqiu/android/community/c/j;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/xueqiu/android/community/c/j;

    invoke-direct {v0}, Lcom/xueqiu/android/community/c/j;-><init>()V

    .line 62
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 72
    const v0, 0x7f03012c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/c/j;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x5

    const/4 v6, 0x1

    .line 78
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/c/j;->e_(Z)V

    .line 81
    const v0, 0x7f0e0216

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/j;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->d:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0e04b6

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/c/j;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->e:Landroid/widget/TextView;

    .line 84
    new-instance v0, Landroid/support/v7/a/c;

    const/16 v1, 0x15

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/support/v7/a/c;-><init>(IB)V

    .line 85
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->f()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f030084

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->w()Landroid/support/v7/a/a;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/support/v7/a/a;->a(Landroid/view/View;Landroid/support/v7/a/c;)V

    .line 87
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->w()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/a/a;->d(Z)V

    .line 88
    const v0, 0x7f0e024a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/j$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/j$1;-><init>(Lcom/xueqiu/android/community/c/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0e0175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 99
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/xueqiu/android/community/a/g;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    iget-object v1, p0, Lcom/xueqiu/android/community/c/j;->b:Lcom/xueqiu/android/community/a/g;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/community/c/j$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/j$2;-><init>(Lcom/xueqiu/android/community/c/j;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->a:Lcom/xueqiu/android/common/r;

    .line 1225
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 2196
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/community/c/j$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/j$3;-><init>(Lcom/xueqiu/android/community/c/j;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->f:Lrx/j;

    .line 123
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/j;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 159
    iput-boolean v2, p0, Lcom/xueqiu/android/community/c/j;->g:Z

    .line 161
    :cond_2
    if-eqz p2, :cond_3

    .line 162
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_3
    if-nez p3, :cond_0

    .line 165
    invoke-direct {p0, v2}, Lcom/xueqiu/android/community/c/j;->b(I)V

    goto :goto_0
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
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/LiveNews;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/c/j;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j;->f:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/j;->f:Lrx/j;

    .line 243
    return-void
.end method
