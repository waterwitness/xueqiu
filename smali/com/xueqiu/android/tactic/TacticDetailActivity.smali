.class public Lcom/xueqiu/android/tactic/TacticDetailActivity;
.super Lcom/xueqiu/android/common/b;
.source "TacticDetailActivity.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Z

.field private j:J

.field private k:I

.field private p:Lcom/xueqiu/android/common/model/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedList",
            "<",
            "Lcom/xueqiu/android/tactic/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/xueqiu/android/tactic/d/g;

.field private r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

.field private s:Lcom/xueqiu/android/tactic/a/d;

.field private t:Lcom/xueqiu/android/community/widget/TransparentHeader;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 76
    iput v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    .line 78
    new-instance v0, Lcom/xueqiu/android/common/model/PagedList;

    invoke-direct {v0}, Lcom/xueqiu/android/common/model/PagedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    .line 114
    iput-boolean v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->H:Z

    .line 116
    iput-boolean v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->I:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;J)V
    .locals 3

    .prologue
    .line 66
    .line 12283
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->I:Z

    if-eqz v0, :cond_0

    .line 12286
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v0

    .line 12288
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->H:Z

    if-nez v0, :cond_1

    .line 12289
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12290
    :cond_0
    :goto_0
    return-void

    .line 13180
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 12292
    iget v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    new-instance v2, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$10;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 13380
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/xueqiu/android/base/b/al;->b(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 12306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->I:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    .line 15180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 14311
    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$11;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$11;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xueqiu/android/base/b/ai;->b(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/common/model/PagedList;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    .line 23446
    iget v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    if-ne v0, v5, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 23447
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->x:Landroid/view/View;

    .line 24106
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 23448
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 23449
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->C:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23453
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    if-ne v0, v5, :cond_1

    .line 23454
    sget-object v0, Lcom/xueqiu/android/base/util/h;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getUpdateAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23455
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->E:Landroid/widget/TextView;

    const-string v2, "%s\u66f4\u65b0"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23457
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 23458
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 23459
    iput-boolean v4, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->H:Z

    .line 23463
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 23464
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedList;->setList(Ljava/util/ArrayList;)V

    .line 23466
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23467
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedList;->setPage(I)V

    .line 23468
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getMaxPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/model/PagedList;->setMaxPage(I)V

    .line 23469
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/a/d;->a(Ljava/util/ArrayList;)V

    .line 23470
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/a/d;->notifyDataSetChanged()V

    .line 66
    return-void

    .line 23461
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 24330
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 24331
    const v1, 0x7f02033f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 24332
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 24333
    const v1, 0x7f020460

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 24334
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24336
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    .line 24337
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24338
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 24339
    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->t:Lcom/xueqiu/android/community/widget/TransparentHeader;

    .line 25121
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25122
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->addView(Landroid/view/View;)V

    .line 24340
    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/tactic/TacticDetailActivity$12;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25526
    if-eqz p1, :cond_1

    .line 25530
    const/4 v0, 0x0

    .line 26197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 25531
    if-nez v1, :cond_0

    .line 25532
    new-instance v0, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V

    .line 25554
    :cond_0
    invoke-static {p0, v0}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 25555
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 25556
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 27197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 25557
    if-nez v1, :cond_2

    .line 25558
    const-string v1, "\u77e5\u9053\u4e86"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 25559
    const-string v1, "\u53bb\u770b\u770b"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->d(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    .line 25563
    :goto_0
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 66
    :cond_1
    return-void

    .line 25561
    :cond_2
    const-string v1, "\u77e5\u9053\u4e86"

    .line 28165
    const v2, 0x7f0e033c

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28166
    const v2, 0x7f0e033e

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28167
    iget-object v2, v0, Lcom/xueqiu/android/common/widget/f;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28168
    iget-object v2, v0, Lcom/xueqiu/android/common/widget/f;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28169
    iget-object v2, v0, Lcom/xueqiu/android/common/widget/f;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 4

    .prologue
    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5425
    iget-wide v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$3;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 6392
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/al;->b(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 66
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/tactic/d/g;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 66
    .line 15476
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->A:Landroid/widget/TextView;

    .line 16279
    iget-object v1, p1, Lcom/xueqiu/android/tactic/d/g;->categoryName:Ljava/lang/String;

    .line 15476
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15477
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->B:Landroid/widget/TextView;

    .line 17247
    iget-object v1, p1, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 15477
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15478
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->t:Lcom/xueqiu/android/community/widget/TransparentHeader;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    .line 18247
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/g;->title:Ljava/lang/String;

    .line 15478
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/TransparentHeader;->setTitle(Ljava/lang/String;)V

    .line 18319
    iget-wide v0, p1, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 15480
    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 15481
    const-string v0, "0%"

    .line 15482
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->C:Landroid/widget/TextView;

    const v2, 0x7f0d0149

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15487
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15488
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->D:Landroid/widget/TextView;

    .line 21231
    iget-object v1, p1, Lcom/xueqiu/android/tactic/d/g;->summary:Ljava/lang/String;

    .line 15488
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15489
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->a(Landroid/view/View;)V

    .line 15490
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->v:Landroid/view/View;

    .line 22106
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 15492
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 15493
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    .line 22199
    iget-object v2, p1, Lcom/xueqiu/android/tactic/d/g;->imageUrl:Ljava/lang/String;

    .line 15493
    new-instance v3, Lcom/xueqiu/android/tactic/TacticDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$4;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 66
    return-void

    .line 15484
    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%+.2f%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 19319
    iget-wide v4, p1, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 15484
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15485
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->C:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v2

    .line 20319
    iget-wide v4, p1, Lcom/xueqiu/android/tactic/d/g;->percentage:D

    .line 15485
    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 5

    .prologue
    .line 7367
    const/4 v0, 0x1

    .line 7369
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    .line 8207
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    .line 7369
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    .line 9207
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    .line 7369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7370
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    .line 10207
    iget-object v0, v0, Lcom/xueqiu/android/tactic/d/g;->prices:Ljava/util/List;

    .line 7370
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/tactic/d/f;

    .line 11048
    iget v0, v0, Lcom/xueqiu/android/tactic/d/f;->quantity:I

    .line 11180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7372
    iget-wide v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    new-instance v4, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 11396
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/xueqiu/android/base/b/al;->a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 66
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->H:Z

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/tactic/TacticDetailActivity;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    return-wide v0
.end method

.method static synthetic f(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/PullToZoomListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/community/widget/TransparentHeader;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->t:Lcom/xueqiu/android/community/widget/TransparentHeader;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/a/d;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 2

    .prologue
    .line 22515
    const-string v0, "OWN"

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->q:Lcom/xueqiu/android/tactic/d/g;

    .line 23295
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    .line 22515
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22516
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02041f

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22517
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    .line 22519
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02041a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22520
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->G:Landroid/view/View;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->I:Z

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 2

    .prologue
    .line 28407
    new-instance v0, Lcom/xueqiu/android/common/widget/ap;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/ap;-><init>(Landroid/content/Context;)V

    .line 28408
    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/common/widget/ap;)V

    .line 29046
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/ap;->a:Lcom/xueqiu/android/common/widget/aq;

    .line 28420
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ap;->show()V

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f0301ce

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->setContentView(I)V

    .line 4066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tactic_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    .line 124
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->finish()V

    .line 130
    :goto_0
    return-void

    .line 4133
    :cond_0
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    .line 4134
    const v0, 0x7f0e068a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->w:Landroid/view/View;

    .line 4135
    const v0, 0x7f0e068b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->z:Landroid/view/View;

    .line 4136
    new-instance v0, Lcom/xueqiu/android/tactic/a/d;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/tactic/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    .line 4137
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->p:Lcom/xueqiu/android/common/model/PagedList;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/tactic/a/d;->a(Ljava/util/ArrayList;)V

    .line 4138
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->s:Lcom/xueqiu/android/tactic/a/d;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4140
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4141
    const v0, 0x7f0301d0

    invoke-virtual {v1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    .line 4142
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    const v2, 0x7f0e068c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->A:Landroid/widget/TextView;

    .line 4143
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    const v2, 0x7f0e05cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->B:Landroid/widget/TextView;

    .line 4144
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    const v2, 0x7f0e05d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->C:Landroid/widget/TextView;

    .line 4145
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    const v2, 0x7f0e068e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->F:Landroid/widget/ImageView;

    .line 4146
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->u:Landroid/view/View;

    const v2, 0x7f0e068d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->G:Landroid/view/View;

    .line 4147
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->G:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4164
    const v0, 0x7f0301d1

    invoke-virtual {v1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->v:Landroid/view/View;

    .line 4165
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->v:Landroid/view/View;

    const v2, 0x7f0e0690

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->D:Landroid/widget/TextView;

    .line 4166
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->v:Landroid/view/View;

    const v2, 0x7f0e068f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4176
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->v:Landroid/view/View;

    const v2, 0x7f0e0691

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->E:Landroid/widget/TextView;

    .line 4178
    const v0, 0x7f0301cf

    invoke-virtual {v1, v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->x:Landroid/view/View;

    .line 4179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    .line 4180
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    const v1, 0x7f0e076c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4181
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->addFooterView(Landroid/view/View;)V

    .line 4183
    const v0, 0x7f0e0689

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/TransparentHeader;

    iput-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->t:Lcom/xueqiu/android/community/widget/TransparentHeader;

    .line 4184
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->t:Lcom/xueqiu/android/community/widget/TransparentHeader;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/TransparentHeader;->getBackButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$7;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4191
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->r:Lcom/xueqiu/android/community/widget/PullToZoomListView;

    new-instance v1, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$8;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/PullToZoomListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 129
    iget-wide v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity;->j:J

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 4263
    new-instance v3, Lcom/xueqiu/android/tactic/TacticDetailActivity$9;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/tactic/TacticDetailActivity$9;-><init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 5376
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/al;->a(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method
