.class public final Landroid/support/v7/widget/af;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ao;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ao;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ao;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ao;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Landroid/support/v7/widget/ae;

.field g:Landroid/support/v7/widget/am;

.field final synthetic h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 3162
    iput-object p1, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    .line 3164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    .line 3166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    .line 3168
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/af;->d:Ljava/util/List;

    .line 3171
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/af;->e:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3493
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3494
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3495
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 3496
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/af;->a(Landroid/view/ViewGroup;Z)V

    .line 3493
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3499
    :cond_1
    if-nez p2, :cond_2

    .line 3511
    :goto_1
    return-void

    .line 3503
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3504
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3505
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3507
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 3508
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3509
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c()Landroid/support/v7/widget/ao;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 3787
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3788
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 3789
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 21860
    iget-wide v2, v0, Landroid/support/v7/widget/ao;->d:J

    .line 3790
    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3791
    iget v2, v0, Landroid/support/v7/widget/ao;->e:I

    .line 21867
    if-nez v2, :cond_1

    .line 3792
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ao;->a(I)V

    .line 3793
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3802
    iget-object v1, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 22633
    iget-boolean v1, v1, Landroid/support/v7/widget/al;->i:Z

    .line 3802
    if-nez v1, :cond_0

    .line 3803
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ao;->a(II)V

    .line 3832
    :cond_0
    :goto_1
    return-object v0

    .line 3810
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3811
    iget-object v2, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3812
    iget-object v0, v0, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->b(Landroid/view/View;)V

    .line 3788
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3818
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3819
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 3820
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 22860
    iget-wide v2, v0, Landroid/support/v7/widget/ao;->d:J

    .line 3821
    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    .line 3822
    iget v2, v0, Landroid/support/v7/widget/ao;->e:I

    .line 22867
    if-nez v2, :cond_4

    .line 3824
    iget-object v2, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3828
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->b(I)Z

    .line 3819
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 3832
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(I)Landroid/support/v7/widget/ao;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 3701
    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 3726
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 3705
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3706
    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 3707
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 3708
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ao;->a(I)V

    goto :goto_0

    .line 3705
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3713
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    .line 18202
    iget-boolean v0, v0, Landroid/support/v7/widget/s;->b:Z

    .line 3713
    if-eqz v0, :cond_5

    .line 3714
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    .line 18457
    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/a;->a(II)I

    move-result v0

    .line 3715
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/s;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3716
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 3717
    :goto_2
    if-ge v2, v4, :cond_5

    .line 3718
    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 3719
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v3

    if-nez v3, :cond_4

    .line 18860
    iget-wide v6, v0, Landroid/support/v7/widget/ao;->d:J

    .line 3719
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    .line 3720
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ao;->a(I)V

    goto :goto_0

    .line 3717
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 3726
    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/ao;)V
    .locals 1

    .prologue
    .line 3836
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3837
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ag;

    .line 3839
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3840
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 3842
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    if-eqz v0, :cond_2

    .line 3843
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/ao;)V

    .line 3846
    :cond_2
    return-void
.end method

.method private d(I)Landroid/support/v7/widget/ao;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3739
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 3742
    :goto_0
    if-ge v3, v4, :cond_2

    .line 3743
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 3744
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->i()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 19586
    iget-boolean v5, v5, Landroid/support/v7/widget/al;->i:Z

    .line 3744
    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3752
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ao;->a(I)V

    .line 3782
    :goto_1
    return-object v0

    .line 3742
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3758
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    .line 20180
    iget-object v0, v4, Landroid/support/v7/widget/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 20181
    :goto_2
    if-ge v3, v5, :cond_5

    .line 20182
    iget-object v0, v4, Landroid/support/v7/widget/d;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 20183
    iget-object v6, v4, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/f;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/f;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v6

    .line 20184
    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->c()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->i()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3759
    :goto_3
    if-eqz v0, :cond_3

    .line 3761
    iget-object v3, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/v;

    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/v;->c(Landroid/support/v7/widget/ao;)V

    .line 3766
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3767
    :goto_4
    if-ge v2, v3, :cond_7

    .line 3768
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 3771
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->i()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3773
    iget-object v1, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 20181
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 20189
    goto :goto_3

    .line 3767
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 3782
    goto :goto_1
.end method


# virtual methods
.method final a(I)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3344
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3345
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v2}, Landroid/support/v7/widget/al;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3351
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 8633
    iget-boolean v0, v0, Landroid/support/v7/widget/al;->i:Z

    .line 3351
    if-eqz v0, :cond_1e

    .line 3352
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->c(I)Landroid/support/v7/widget/ao;

    move-result-object v1

    .line 3353
    if-eqz v1, :cond_3

    move v0, v2

    :goto_0
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    .line 3356
    :goto_1
    if-nez v0, :cond_6

    .line 3357
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->d(I)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 3358
    if-eqz v0, :cond_6

    .line 9225
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v4

    if-nez v4, :cond_9

    .line 9228
    iget v4, v0, Landroid/support/v7/widget/ao;->b:I

    if-ltz v4, :cond_2

    iget v4, v0, Landroid/support/v7/widget/ao;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/s;->a()I

    move-result v6

    if-lt v4, v6, :cond_4

    .line 9229
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v3

    .line 3353
    goto :goto_0

    .line 9232
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 9633
    iget-boolean v4, v4, Landroid/support/v7/widget/al;->i:Z

    .line 9232
    if-nez v4, :cond_8

    .line 9234
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 9235
    iget v4, v0, Landroid/support/v7/widget/ao;->e:I

    .line 9867
    if-eqz v4, :cond_8

    move v4, v3

    .line 3359
    :goto_2
    if-nez v4, :cond_b

    .line 3364
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ao;->a(I)V

    .line 3365
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3366
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v4, v6, v3}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3367
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->e()V

    .line 3371
    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/ao;)V

    move-object v0, v5

    .line 3379
    :cond_6
    :goto_4
    if-nez v0, :cond_1d

    .line 3380
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/a;->a(I)I

    move-result v4

    .line 3381
    if-ltz v4, :cond_7

    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/s;->a()I

    move-result v6

    if-lt v4, v6, :cond_c

    .line 3382
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v2}, Landroid/support/v7/widget/al;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9239
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v4

    .line 10202
    iget-boolean v4, v4, Landroid/support/v7/widget/s;->b:Z

    .line 9239
    if-eqz v4, :cond_9

    .line 10860
    iget-wide v6, v0, Landroid/support/v7/widget/ao;->d:J

    .line 9240
    iget-object v4, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    move v4, v2

    .line 9242
    goto :goto_2

    .line 3368
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3369
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->g()V

    goto :goto_3

    :cond_b
    move v1, v2

    .line 3375
    goto :goto_4

    .line 3387
    :cond_c
    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 3389
    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v6

    .line 11202
    iget-boolean v6, v6, Landroid/support/v7/widget/s;->b:Z

    .line 3389
    if-eqz v6, :cond_1c

    .line 3390
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    invoke-direct {p0}, Landroid/support/v7/widget/af;->c()Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 3391
    if-eqz v0, :cond_1c

    .line 3393
    iput v4, v0, Landroid/support/v7/widget/ao;->b:I

    move v4, v2

    .line 3397
    :goto_5
    if-nez v0, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/af;->g:Landroid/support/v7/widget/am;

    if-eqz v1, :cond_e

    .line 3400
    iget-object v1, p0, Landroid/support/v7/widget/af;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v1}, Landroid/support/v7/widget/am;->a()Landroid/view/View;

    move-result-object v1

    .line 3402
    if-eqz v1, :cond_e

    .line 3403
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 3404
    if-nez v0, :cond_d

    .line 3405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3407
    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3414
    :cond_e
    if-nez v0, :cond_10

    .line 3421
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->b()Landroid/support/v7/widget/ae;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 12072
    iget-object v0, v0, Landroid/support/v7/widget/ae;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 12073
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 12074
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    .line 12075
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ao;

    .line 12076
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3423
    :goto_6
    if-eqz v1, :cond_f

    .line 3424
    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->o()V

    .line 3425
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12487
    iget-object v0, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 12488
    iget-object v0, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/af;->a(Landroid/view/ViewGroup;Z)V

    :cond_f
    move-object v0, v1

    .line 3430
    :cond_10
    if-nez v0, :cond_11

    .line 3431
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    .line 13121
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/s;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 13122
    iput v3, v0, Landroid/support/v7/widget/ao;->e:I

    :cond_11
    move-object v1, v0

    .line 3439
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 13633
    iget-boolean v0, v0, Landroid/support/v7/widget/al;->i:Z

    .line 3439
    if-eqz v0, :cond_13

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3441
    iput p1, v1, Landroid/support/v7/widget/ao;->f:I

    move v5, v3

    .line 3456
    :goto_8
    iget-object v0, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3458
    if-nez v0, :cond_18

    .line 3459
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 3460
    iget-object v6, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3467
    :goto_9
    iput-object v1, v0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    .line 3468
    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    :goto_a
    iput-boolean v2, v0, Landroid/support/v7/widget/ab;->d:Z

    .line 3469
    iget-object v0, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    return-object v0

    :cond_12
    move-object v1, v5

    .line 12079
    goto :goto_6

    .line 3442
    :cond_13
    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->j()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3447
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->a(I)I

    move-result v0

    .line 3448
    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/support/v7/widget/s;->b(Landroid/support/v7/widget/ao;I)V

    .line 3449
    iget-object v0, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    .line 14473
    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 14474
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_15

    .line 14476
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;I)V

    .line 14479
    :cond_15
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 14480
    iget-object v5, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->o(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ap;

    move-result-object v5

    .line 15072
    iget-object v5, v5, Landroid/support/v7/widget/ap;->c:Landroid/support/v4/view/a;

    .line 14480
    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 3451
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 15633
    iget-boolean v0, v0, Landroid/support/v7/widget/al;->i:Z

    .line 3451
    if-eqz v0, :cond_17

    .line 3452
    iput p1, v1, Landroid/support/v7/widget/ao;->f:I

    :cond_17
    move v5, v2

    goto :goto_8

    .line 3461
    :cond_18
    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 3462
    iget-object v6, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 3463
    iget-object v6, v1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 3465
    :cond_19
    check-cast v0, Landroid/support/v7/widget/ab;

    goto/16 :goto_9

    :cond_1a
    move v2, v3

    .line 3468
    goto/16 :goto_a

    :cond_1b
    move v5, v3

    goto/16 :goto_8

    :cond_1c
    move v4, v1

    goto/16 :goto_5

    :cond_1d
    move v4, v1

    move-object v1, v0

    goto/16 :goto_7

    :cond_1e
    move-object v0, v5

    move v1, v3

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8548
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8549
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8550
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->b(I)Z

    .line 8549
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8552
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3186
    return-void
.end method

.method final a(Landroid/support/v7/widget/ao;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3585
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3586
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/ao;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3592
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3597
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3603
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->i()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 16586
    iget-boolean v2, v2, Landroid/support/v7/widget/al;->i:Z

    .line 3603
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->m()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->k()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3606
    iget-object v2, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->e:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    .line 3607
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3608
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/af;->b(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3607
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3613
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->e:I

    if-ge v2, v3, :cond_7

    .line 3614
    iget-object v1, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 3618
    :cond_7
    if-nez v1, :cond_8

    .line 3619
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->b()Landroid/support/v7/widget/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ae;->a(Landroid/support/v7/widget/ao;)V

    .line 3620
    invoke-direct {p0, p1}, Landroid/support/v7/widget/af;->c(Landroid/support/v7/widget/ao;)V

    .line 3628
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/al;->a(Landroid/support/v7/widget/ao;)V

    .line 3629
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 3526
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 3527
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3528
    iget-object v1, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3530
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3531
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->e()V

    .line 3535
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/ao;)V

    .line 3536
    return-void

    .line 3532
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3533
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->g()V

    goto :goto_0
.end method

.method final b()Landroid/support/v7/widget/ae;
    .locals 1

    .prologue
    .line 3951
    iget-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/support/v7/widget/ae;

    if-nez v0, :cond_0

    .line 3952
    new-instance v0, Landroid/support/v7/widget/ae;

    invoke-direct {v0}, Landroid/support/v7/widget/ae;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/support/v7/widget/ae;

    .line 3954
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->f:Landroid/support/v7/widget/ae;

    return-object v0
.end method

.method final b(Landroid/support/v7/widget/ao;)V
    .locals 1

    .prologue
    .line 3677
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3678
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17711
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ao;->j:Landroid/support/v7/widget/af;

    .line 3683
    invoke-virtual {p1}, Landroid/support/v7/widget/ao;->g()V

    .line 3684
    return-void

    .line 3680
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3637
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 16711
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ao;->j:Landroid/support/v7/widget/af;

    .line 3639
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->g()V

    .line 3640
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->a(Landroid/support/v7/widget/ao;)V

    .line 3641
    return-void
.end method

.method final b(I)Z
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 3570
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3571
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->b()Landroid/support/v7/widget/ae;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ae;->a(Landroid/support/v7/widget/ao;)V

    .line 3572
    invoke-direct {p0, v0}, Landroid/support/v7/widget/af;->c(Landroid/support/v7/widget/ao;)V

    .line 3573
    iget-object v0, p0, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3574
    const/4 v0, 0x1

    .line 3576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
