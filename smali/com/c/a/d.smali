.class public final Lcom/c/a/d;
.super Lcom/c/a/a;
.source "AnimatorSet.java"


# instance fields
.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/c/a/a;",
            "Lcom/c/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/c/a/e;

.field private i:Z

.field private j:J

.field private k:Lcom/c/a/x;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->g:Z

    .line 89
    iput-object v2, p0, Lcom/c/a/d;->h:Lcom/c/a/e;

    .line 98
    iput-boolean v1, p0, Lcom/c/a/d;->b:Z

    .line 104
    iput-boolean v1, p0, Lcom/c/a/d;->i:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/d;->j:J

    .line 110
    iput-object v2, p0, Lcom/c/a/d;->k:Lcom/c/a/x;

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/a/d;->l:J

    .line 1012
    return-void
.end method

.method private a(Lcom/c/a/a;)Lcom/c/a/f;
    .locals 1

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->g:Z

    .line 270
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0, p0, p1}, Lcom/c/a/f;-><init>(Lcom/c/a/d;Lcom/c/a/a;)V

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/d;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()Lcom/c/a/d;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 551
    invoke-super {p0}, Lcom/c/a/a;->b()Lcom/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    .line 560
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/a/d;->g:Z

    .line 561
    iput-boolean v2, v0, Lcom/c/a/d;->b:Z

    .line 562
    iput-boolean v2, v0, Lcom/c/a/d;->i:Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    .line 571
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/i;

    .line 573
    invoke-virtual {v1}, Lcom/c/a/i;->a()Lcom/c/a/i;

    move-result-object v2

    .line 574
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, v0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iput-object v3, v2, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    .line 579
    iput-object v3, v2, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    .line 580
    iput-object v3, v2, Lcom/c/a/i;->e:Ljava/util/ArrayList;

    .line 581
    iput-object v3, v2, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    .line 584
    iget-object v1, v2, Lcom/c/a/i;->a:Lcom/c/a/a;

    .line 10174
    iget-object v6, v1, Lcom/c/a/a;->a:Ljava/util/ArrayList;

    .line 585
    if-eqz v6, :cond_0

    .line 587
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 588
    instance-of v8, v1, Lcom/c/a/e;

    if-eqz v8, :cond_1

    .line 589
    if-nez v2, :cond_2

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_3
    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 597
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_4
    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/i;

    .line 605
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/i;

    .line 606
    iget-object v3, v1, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 607
    iget-object v1, v1, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/g;

    .line 608
    iget-object v3, v1, Lcom/c/a/g;->a:Lcom/c/a/i;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/i;

    .line 609
    new-instance v7, Lcom/c/a/g;

    iget v1, v1, Lcom/c/a/g;->b:I

    invoke-direct {v7, v3, v1}, Lcom/c/a/g;-><init>(Lcom/c/a/i;I)V

    .line 611
    invoke-virtual {v2, v7}, Lcom/c/a/i;->a(Lcom/c/a/g;)V

    goto :goto_2

    .line 616
    :cond_6
    return-object v0
.end method

.method static synthetic c(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/c/a/d;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(J)Lcom/c/a/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/c/a/d;->b(J)Lcom/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 451
    iput-boolean v2, p0, Lcom/c/a/d;->b:Z

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 8785
    iget-boolean v0, p0, Lcom/c/a/d;->g:Z

    if-eqz v0, :cond_7

    .line 8786
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8787
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8788
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 8789
    :goto_0
    if-ge v1, v3, :cond_2

    .line 8790
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 8791
    iget-object v4, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 8792
    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8789
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8795
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8796
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 8797
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v2

    .line 8798
    :goto_2
    if-ge v4, v7, :cond_5

    .line 8799
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 8800
    iget-object v1, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8801
    iget-object v1, v0, Lcom/c/a/i;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 8802
    iget-object v1, v0, Lcom/c/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v2

    .line 8803
    :goto_3
    if-ge v3, v8, :cond_4

    .line 8804
    iget-object v1, v0, Lcom/c/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/i;

    .line 8805
    iget-object v9, v1, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8806
    iget-object v9, v1, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 8807
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8803
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 8798
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 8812
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8813
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8814
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 8816
    :cond_6
    iput-boolean v2, p0, Lcom/c/a/d;->g:Z

    .line 8817
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 8818
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8825
    :cond_7
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    .line 8826
    :goto_4
    if-ge v4, v5, :cond_b

    .line 8827
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 8828
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 8829
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    .line 8830
    :goto_5
    if-ge v3, v6, :cond_a

    .line 8831
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/g;

    .line 8832
    iget-object v7, v0, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    if-nez v7, :cond_8

    .line 8833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    .line 8835
    :cond_8
    iget-object v7, v0, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/c/a/g;->a:Lcom/c/a/i;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 8836
    iget-object v7, v0, Lcom/c/a/i;->d:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/c/a/g;->a:Lcom/c/a/i;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8830
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 8842
    :cond_a
    iput-boolean v2, v0, Lcom/c/a/i;->f:Z

    .line 8826
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 458
    :cond_b
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 459
    :goto_6
    if-ge v3, v5, :cond_f

    .line 460
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/c/a/i;

    .line 462
    iget-object v0, v1, Lcom/c/a/i;->a:Lcom/c/a/a;

    .line 9174
    iget-object v0, v0, Lcom/c/a/a;->a:Ljava/util/ArrayList;

    .line 463
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 464
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    .line 468
    instance-of v6, v0, Lcom/c/a/h;

    if-nez v6, :cond_d

    instance-of v6, v0, Lcom/c/a/e;

    if-eqz v6, :cond_c

    .line 470
    :cond_d
    iget-object v6, v1, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v6, v0}, Lcom/c/a/a;->b(Lcom/c/a/b;)V

    goto :goto_7

    .line 459
    :cond_e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 480
    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 481
    :goto_8
    if-ge v4, v5, :cond_14

    .line 482
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 483
    iget-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/e;

    if-nez v1, :cond_10

    .line 484
    new-instance v1, Lcom/c/a/e;

    invoke-direct {v1, p0, p0}, Lcom/c/a/e;-><init>(Lcom/c/a/d;Lcom/c/a/d;)V

    iput-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/e;

    .line 486
    :cond_10
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 487
    :cond_11
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_9
    iget-object v0, v0, Lcom/c/a/i;->a:Lcom/c/a/a;

    iget-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/e;

    invoke-virtual {v0, v1}, Lcom/c/a/a;->a(Lcom/c/a/b;)V

    .line 481
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8

    .line 489
    :cond_12
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    .line 490
    :goto_a
    if-ge v3, v7, :cond_13

    .line 491
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/g;

    .line 492
    iget-object v8, v1, Lcom/c/a/g;->a:Lcom/c/a/i;

    iget-object v8, v8, Lcom/c/a/i;->a:Lcom/c/a/a;

    new-instance v9, Lcom/c/a/h;

    iget v1, v1, Lcom/c/a/g;->b:I

    invoke-direct {v9, p0, v0, v1}, Lcom/c/a/h;-><init>(Lcom/c/a/d;Lcom/c/a/i;I)V

    invoke-virtual {v8, v9}, Lcom/c/a/a;->a(Lcom/c/a/b;)V

    .line 490
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    .line 495
    :cond_13
    iget-object v1, v0, Lcom/c/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/c/a/i;->c:Ljava/util/ArrayList;

    goto :goto_9

    .line 500
    :cond_14
    iget-wide v0, p0, Lcom/c/a/d;->j:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_15

    .line 501
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 502
    iget-object v3, v0, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v3}, Lcom/c/a/a;->a()V

    .line 503
    iget-object v3, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 506
    :cond_15
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/c/a/x;->b([F)Lcom/c/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/x;

    .line 507
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/x;

    iget-wide v4, p0, Lcom/c/a/d;->j:J

    invoke-virtual {v0, v4, v5}, Lcom/c/a/x;->b(J)Lcom/c/a/x;

    .line 508
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/x;

    new-instance v1, Lcom/c/a/d$1;

    invoke-direct {v1, p0, v6}, Lcom/c/a/d$1;-><init>(Lcom/c/a/d;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/b;)V

    .line 524
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/x;

    invoke-virtual {v0}, Lcom/c/a/x;->a()V

    .line 526
    :cond_16
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 527
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 530
    :goto_c
    if-ge v3, v4, :cond_17

    .line 531
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 530
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c

    .line 534
    :cond_17
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/c/a/d;->j:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_18

    .line 537
    iput-boolean v2, p0, Lcom/c/a/d;->i:Z

    .line 538
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 539
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 542
    :goto_d
    if-ge v2, v3, :cond_18

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 542
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 547
    :cond_18
    return-void

    .line 506
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final varargs a([Lcom/c/a/a;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/c/a/d;->g:Z

    .line 127
    aget-object v1, p1, v5

    invoke-direct {p0, v1}, Lcom/c/a/d;->a(Lcom/c/a/a;)Lcom/c/a/f;

    move-result-object v2

    move v1, v0

    .line 128
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 129
    aget-object v3, p1, v1

    .line 2044
    iget-object v0, v2, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 3045
    iget-object v0, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 2044
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 2045
    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Lcom/c/a/i;

    invoke-direct {v0, v3}, Lcom/c/a/i;-><init>(Lcom/c/a/a;)V

    .line 2047
    iget-object v4, v2, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 4045
    iget-object v4, v4, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 2047
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    iget-object v3, v2, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 5045
    iget-object v3, v3, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 2048
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    :cond_0
    new-instance v3, Lcom/c/a/g;

    iget-object v4, v2, Lcom/c/a/f;->a:Lcom/c/a/i;

    invoke-direct {v3, v4, v5}, Lcom/c/a/g;-><init>(Lcom/c/a/i;I)V

    .line 2051
    invoke-virtual {v0, v3}, Lcom/c/a/i;->a(Lcom/c/a/g;)V

    .line 128
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public final synthetic b()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/c/a/d;->c()Lcom/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Lcom/c/a/d;
    .locals 3

    .prologue
    .line 415
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 421
    iget-object v0, v0, Lcom/c/a/i;->a:Lcom/c/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/a;->a(J)Lcom/c/a/a;

    goto :goto_0

    .line 423
    :cond_1
    iput-wide p1, p0, Lcom/c/a/d;->l:J

    .line 424
    return-object p0
.end method

.method public final varargs b([Lcom/c/a/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 161
    iput-boolean v6, p0, Lcom/c/a/d;->g:Z

    move v1, v2

    .line 165
    :goto_0
    if-gtz v1, :cond_1

    .line 166
    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/c/a/d;->a(Lcom/c/a/a;)Lcom/c/a/f;

    move-result-object v3

    aget-object v4, p1, v6

    .line 5064
    iget-object v0, v3, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 6045
    iget-object v0, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 5064
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/i;

    .line 5065
    if-nez v0, :cond_0

    .line 5066
    new-instance v0, Lcom/c/a/i;

    invoke-direct {v0, v4}, Lcom/c/a/i;-><init>(Lcom/c/a/a;)V

    .line 5067
    iget-object v5, v3, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 7045
    iget-object v5, v5, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 5067
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5068
    iget-object v4, v3, Lcom/c/a/f;->b:Lcom/c/a/d;

    .line 8045
    iget-object v4, v4, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 5068
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5070
    :cond_0
    new-instance v4, Lcom/c/a/g;

    iget-object v3, v3, Lcom/c/a/f;->a:Lcom/c/a/i;

    invoke-direct {v4, v3, v6}, Lcom/c/a/g;-><init>(Lcom/c/a/i;I)V

    .line 5071
    invoke-virtual {v0, v4}, Lcom/c/a/i;->a(Lcom/c/a/g;)V

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_1
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/c/a/d;->c()Lcom/c/a/d;

    move-result-object v0

    return-object v0
.end method
