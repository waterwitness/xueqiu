.class final Landroid/support/v4/a/r;
.super Landroid/support/v4/a/q;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/view/aj;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static final D:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static r:Ljava/lang/reflect/Field;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/a/b;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Landroid/support/v4/a/p;

.field p:Landroid/support/v4/a/n;

.field q:Landroid/support/v4/a/i;

.field s:Z

.field t:Z

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Landroid/os/Bundle;

.field y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 406
    sput-boolean v0, Landroid/support/v4/a/r;->a:Z

    .line 409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/support/v4/a/r;->b:Z

    .line 502
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/a/r;->r:Ljava/lang/reflect/Field;

    .line 830
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/a/r;->A:Landroid/view/animation/Interpolator;

    .line 831
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/a/r;->B:Landroid/view/animation/Interpolator;

    .line 832
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/a/r;->C:Landroid/view/animation/Interpolator;

    .line 833
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/a/r;->D:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Landroid/support/v4/a/q;-><init>()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/a/r;->n:I

    .line 511
    iput-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    .line 512
    iput-object v1, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    .line 514
    new-instance v0, Landroid/support/v4/a/r$1;

    invoke-direct {v0, p0}, Landroid/support/v4/a/r$1;-><init>(Landroid/support/v4/a/r;)V

    iput-object v0, p0, Landroid/support/v4/a/r;->z:Ljava/lang/Runnable;

    .line 2341
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/a/i;
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 663
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 664
    if-ne v1, v0, :cond_1

    .line 665
    const/4 v0, 0x0

    .line 676
    :cond_0
    :goto_0
    return-object v0

    .line 667
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 671
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 672
    if-nez v0, :cond_0

    .line 673
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragment no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 853
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 854
    sget-object v1, Landroid/support/v4/a/r;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 855
    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 856
    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    .prologue
    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 839
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 840
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 842
    sget-object v1, Landroid/support/v4/a/r;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 843
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 844
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 845
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 846
    sget-object v1, Landroid/support/v4/a/r;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 847
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 848
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 849
    return-object v9
.end method

.method private a(Landroid/support/v4/a/i;IZI)Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const v5, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 861
    iget v0, p1, Landroid/support/v4/a/i;->R:I

    invoke-static {}, Landroid/support/v4/a/i;->n()Landroid/view/animation/Animation;

    .line 867
    iget v0, p1, Landroid/support/v4/a/i;->R:I

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 3166
    iget-object v0, v0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 868
    iget v2, p1, Landroid/support/v4/a/i;->R:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_0

    .line 915
    :goto_0
    return-object v0

    .line 874
    :cond_0
    if-nez p2, :cond_1

    move-object v0, v1

    .line 875
    goto :goto_0

    .line 3229
    :cond_1
    const/4 v0, -0x1

    .line 3230
    sparse-switch p2, :sswitch_data_0

    .line 879
    :goto_1
    if-gez v0, :cond_5

    move-object v0, v1

    .line 880
    goto :goto_0

    .line 3232
    :sswitch_0
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 3235
    :sswitch_1
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 3238
    :sswitch_2
    if-eqz p3, :cond_4

    const/4 v0, 0x5

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 883
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 898
    if-nez p4, :cond_6

    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 899
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->f()I

    move-result p4

    .line 901
    :cond_6
    if-nez p4, :cond_7

    move-object v0, v1

    .line 902
    goto :goto_0

    .line 885
    :pswitch_0
    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v3, v4, v3}, Landroid/support/v4/a/r;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 887
    :pswitch_1
    invoke-static {v3, v5, v3, v4}, Landroid/support/v4/a/r;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 889
    :pswitch_2
    invoke-static {v5, v3, v4, v3}, Landroid/support/v4/a/r;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 891
    :pswitch_3
    const v0, 0x3f89999a    # 1.075f

    invoke-static {v3, v0, v3, v4}, Landroid/support/v4/a/r;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 893
    :pswitch_4
    invoke-static {v4, v3}, Landroid/support/v4/a/r;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 895
    :pswitch_5
    invoke-static {v3, v4}, Landroid/support/v4/a/r;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    .line 915
    goto :goto_0

    .line 3230
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(ILandroid/support/v4/a/b;)V
    .locals 4

    .prologue
    .line 1556
    monitor-enter p0

    .line 1557
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    .line 1560
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1561
    if-ge p1, v0, :cond_2

    .line 1562
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1577
    :goto_0
    monitor-exit p0

    return-void

    .line 1565
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1566
    iget-object v1, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    iget-object v1, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    .line 1570
    :cond_3
    sget-boolean v1, Landroid/support/v4/a/r;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_4
    iget-object v1, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1574
    :cond_5
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_6
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1577
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 4

    .prologue
    .line 543
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Landroid/support/v4/e/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 547
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    if-eqz v0, :cond_0

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    const-string v2, "  "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/a/p;->a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    throw p1

    .line 550
    :catch_0
    move-exception v0

    .line 551
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 555
    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v4/a/r;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 556
    :catch_1
    move-exception v0

    .line 557
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/view/animation/Animation;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    instance-of v0, p1, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    move v0, v2

    .line 536
    :goto_0
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 2524
    :cond_1
    instance-of v0, p1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 2525
    check-cast p1, Landroid/view/animation/AnimationSet;

    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    move v0, v1

    .line 2526
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 2527
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_2

    move v0, v2

    .line 2528
    goto :goto_0

    .line 2526
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2532
    goto :goto_0
.end method

.method private b(Landroid/support/v4/a/i;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1237
    iget v2, p0, Landroid/support/v4/a/r;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1238
    return-void
.end method

.method private static b(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 938
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v4/a/r;->a(Landroid/view/View;Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const/4 v1, 0x0

    .line 944
    :try_start_0
    sget-object v0, Landroid/support/v4/a/r;->r:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 945
    const-class v0, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 946
    sput-object v0, Landroid/support/v4/a/r;->r:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 948
    :cond_2
    sget-object v0, Landroid/support/v4/a/r;->r:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    :goto_1
    new-instance v1, Landroid/support/v4/a/s;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/a/s;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 950
    const-string v2, "FragmentManager"

    const-string v3, "No field with the name mListener is found in Animation class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 953
    goto :goto_1

    .line 951
    :catch_1
    move-exception v0

    .line 952
    const-string v2, "FragmentManager"

    const-string v3, "Cannot access Animation\'s mListener field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method private c(Landroid/support/v4/a/i;)V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1770
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1761
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    .line 1765
    :goto_1
    iget-object v0, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1766
    iget-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1767
    iget-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    .line 1768
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    goto :goto_0

    .line 1763
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->y:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 2205
    const/4 v0, 0x0

    .line 2206
    sparse-switch p0, :sswitch_data_0

    .line 2217
    :goto_0
    return v0

    .line 2208
    :sswitch_0
    const/16 v0, 0x2002

    .line 2209
    goto :goto_0

    .line 2211
    :sswitch_1
    const/16 v0, 0x1001

    .line 2212
    goto :goto_0

    .line 2214
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2206
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private p()V
    .locals 3

    .prologue
    .line 1499
    iget-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    if-eqz v0, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/r;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1504
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/a/r;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/a/b;)I
    .locals 4

    .prologue
    .line 1536
    monitor-enter p0

    .line 1537
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1538
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    .line 1541
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1542
    sget-boolean v1, Landroid/support/v4/a/r;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_2
    iget-object v1, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    monitor-exit p0

    .line 1550
    :goto_0
    return v0

    .line 1547
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1548
    sget-boolean v1, Landroid/support/v4/a/r;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_4
    iget-object v1, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1550
    monitor-exit p0

    goto :goto_0

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Landroid/support/v4/a/ac;
    .locals 1

    .prologue
    .line 565
    new-instance v0, Landroid/support/v4/a/b;

    invoke-direct {v0, p0}, Landroid/support/v4/a/b;-><init>(Landroid/support/v4/a/r;)V

    return-object v0
.end method

.method public final a(I)Landroid/support/v4/a/i;
    .locals 3

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1446
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1447
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/support/v4/a/i;->G:I

    if-ne v2, p1, :cond_1

    .line 1461
    :cond_0
    :goto_1
    return-object v0

    .line 1445
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1452
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1454
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1455
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1456
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/support/v4/a/i;->G:I

    if-eq v2, p1, :cond_0

    .line 1454
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1461
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/a/i;
    .locals 3

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1467
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1468
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1469
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1483
    :cond_0
    :goto_1
    return-object v0

    .line 1467
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1474
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1476
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    .line 1477
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1478
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 1483
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 2246
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    .line 2334
    :goto_0
    return-object v0

    .line 2250
    :cond_0
    const-string v0, "class"

    invoke-interface {p4, v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2251
    sget-object v1, Landroid/support/v4/a/t;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2252
    if-nez v0, :cond_10

    .line 2253
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 2255
    :goto_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 2256
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2257
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2259
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 21166
    iget-object v0, v0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 2259
    invoke-static {v0, v6}, Landroid/support/v4/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 2262
    goto :goto_0

    .line 2265
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2266
    :goto_2
    if-ne v1, v5, :cond_3

    if-ne v7, v5, :cond_3

    if-nez v8, :cond_3

    .line 2267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v3

    .line 2265
    goto :goto_2

    .line 2274
    :cond_3
    if-eq v7, v5, :cond_7

    invoke-virtual {p0, v7}, Landroid/support/v4/a/r;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 2275
    :goto_3
    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    .line 2276
    invoke-virtual {p0, v8}, Landroid/support/v4/a/r;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    .line 2278
    :cond_4
    if-nez v0, :cond_5

    if-eq v1, v5, :cond_5

    .line 2279
    invoke-virtual {p0, v1}, Landroid/support/v4/a/r;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 2282
    :cond_5
    sget-boolean v4, Landroid/support/v4/a/r;->a:Z

    if-eqz v4, :cond_6

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "onCreateView: id=0x"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " fname="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " existing="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_6
    if-nez v0, :cond_9

    .line 2286
    invoke-static {p3, v6}, Landroid/support/v4/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v4

    .line 2287
    iput-boolean v2, v4, Landroid/support/v4/a/i;->y:Z

    .line 2288
    if-eqz v7, :cond_8

    move v0, v7

    :goto_4
    iput v0, v4, Landroid/support/v4/a/i;->G:I

    .line 2289
    iput v1, v4, Landroid/support/v4/a/i;->H:I

    .line 2290
    iput-object v8, v4, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    .line 2291
    iput-boolean v2, v4, Landroid/support/v4/a/i;->z:Z

    .line 2292
    iput-object p0, v4, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 2293
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    iput-object v0, v4, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 2294
    iget-object v0, v4, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/support/v4/a/i;->m()V

    .line 2295
    invoke-virtual {p0, v4, v2}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;Z)V

    move-object v1, v4

    .line 2318
    :goto_5
    iget v0, p0, Landroid/support/v4/a/r;->n:I

    if-gtz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/a/i;->y:Z

    if-eqz v0, :cond_c

    move-object v0, p0

    move v4, v3

    move v5, v3

    .line 2319
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 2324
    :goto_6
    iget-object v0, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-nez v0, :cond_d

    .line 2325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, v4

    .line 2274
    goto/16 :goto_3

    :cond_8
    move v0, v1

    .line 2288
    goto :goto_4

    .line 2297
    :cond_9
    iget-boolean v4, v0, Landroid/support/v4/a/i;->z:Z

    if-eqz v4, :cond_a

    .line 2300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :cond_a
    iput-boolean v2, v0, Landroid/support/v4/a/i;->z:Z

    .line 2311
    iget-boolean v1, v0, Landroid/support/v4/a/i;->M:Z

    if-nez v1, :cond_b

    .line 2312
    iget-object v1, v0, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/support/v4/a/i;->m()V

    :cond_b
    move-object v1, v0

    goto/16 :goto_5

    .line 2321
    :cond_c
    invoke-direct {p0, v1}, Landroid/support/v4/a/r;->b(Landroid/support/v4/a/i;)V

    goto :goto_6

    .line 2328
    :cond_d
    if-eqz v7, :cond_e

    .line 2329
    iget-object v0, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 2331
    :cond_e
    iget-object v0, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 2332
    iget-object v0, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2334
    :cond_f
    iget-object v0, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    goto/16 :goto_1
.end method

.method final a(IIIZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1245
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/support/v4/a/r;->n:I

    if-ne v0, p1, :cond_2

    .line 1275
    :cond_1
    :goto_0
    return-void

    .line 1253
    :cond_2
    iput p1, p0, Landroid/support/v4/a/r;->n:I

    .line 1254
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    .line 1256
    :goto_1
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1257
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/a/i;

    .line 1258
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1259
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1260
    iget-object v0, v1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_5

    .line 1261
    iget-object v0, v1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->a()Z

    move-result v0

    or-int/2addr v7, v0

    move v1, v7

    .line 1256
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_1

    .line 1266
    :cond_3
    if-nez v7, :cond_4

    .line 1267
    invoke-virtual {p0}, Landroid/support/v4/a/r;->e()V

    .line 1270
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/a/r;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/a/r;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1271
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->d()V

    .line 1272
    iput-boolean v5, p0, Landroid/support/v4/a/r;->s:Z

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_2
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 2097
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2098
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2099
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2100
    if-eqz v0, :cond_0

    .line 21020
    invoke-virtual {v0, p1}, Landroid/support/v4/a/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 21021
    iget-object v2, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v2, :cond_0

    .line 21022
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/r;->a(Landroid/content/res/Configuration;)V

    .line 2098
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2105
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1924
    if-nez p1, :cond_1

    .line 2032
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    check-cast p1, Landroid/support/v4/a/u;

    .line 1926
    iget-object v0, p1, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    if-eqz v0, :cond_0

    .line 1930
    if-eqz p2, :cond_4

    move v1, v2

    .line 1931
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1932
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1933
    sget-boolean v3, Landroid/support/v4/a/r;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_2
    iget-object v3, p1, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    iget v4, v0, Landroid/support/v4/a/i;->p:I

    aget-object v3, v3, v4

    .line 1935
    iput-object v0, v3, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    .line 1936
    iput-object v8, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    .line 1937
    iput v2, v0, Landroid/support/v4/a/i;->B:I

    .line 1938
    iput-boolean v2, v0, Landroid/support/v4/a/i;->z:Z

    .line 1939
    iput-boolean v2, v0, Landroid/support/v4/a/i;->v:Z

    .line 1940
    iput-object v8, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    .line 1941
    iget-object v4, v3, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 1942
    iget-object v4, v3, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 19166
    iget-object v5, v5, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 1942
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1943
    iget-object v4, v3, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    .line 1945
    iget-object v3, v3, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    iput-object v3, v0, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 1931
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1952
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    .line 1953
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1954
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v2

    .line 1956
    :goto_2
    iget-object v1, p1, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .line 1957
    iget-object v1, p1, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    aget-object v1, v1, v0

    .line 1958
    if-eqz v1, :cond_a

    .line 1959
    iget-object v3, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    iget-object v4, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    .line 20093
    iget-object v5, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    if-nez v5, :cond_8

    .line 20166
    iget-object v5, v3, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 20098
    iget-object v6, v1, Landroid/support/v4/a/w;->i:Landroid/os/Bundle;

    if-eqz v6, :cond_6

    .line 20099
    iget-object v6, v1, Landroid/support/v4/a/w;->i:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 20102
    :cond_6
    iget-object v6, v1, Landroid/support/v4/a/w;->a:Ljava/lang/String;

    iget-object v7, v1, Landroid/support/v4/a/w;->i:Landroid/os/Bundle;

    invoke-static {v5, v6, v7}, Landroid/support/v4/a/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/a/i;

    move-result-object v6

    iput-object v6, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    .line 20104
    iget-object v6, v1, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    .line 20105
    iget-object v6, v1, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 20106
    iget-object v5, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-object v6, v1, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 20108
    :cond_7
    iget-object v5, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget v6, v1, Landroid/support/v4/a/w;->b:I

    invoke-virtual {v5, v6, v4}, Landroid/support/v4/a/i;->a(ILandroid/support/v4/a/i;)V

    .line 20109
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-boolean v5, v1, Landroid/support/v4/a/w;->c:Z

    iput-boolean v5, v4, Landroid/support/v4/a/i;->y:Z

    .line 20110
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iput-boolean v9, v4, Landroid/support/v4/a/i;->A:Z

    .line 20111
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget v5, v1, Landroid/support/v4/a/w;->d:I

    iput v5, v4, Landroid/support/v4/a/i;->G:I

    .line 20112
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget v5, v1, Landroid/support/v4/a/w;->e:I

    iput v5, v4, Landroid/support/v4/a/i;->H:I

    .line 20113
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-object v5, v1, Landroid/support/v4/a/w;->f:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    .line 20114
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-boolean v5, v1, Landroid/support/v4/a/w;->g:Z

    iput-boolean v5, v4, Landroid/support/v4/a/i;->L:Z

    .line 20115
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-boolean v5, v1, Landroid/support/v4/a/w;->h:Z

    iput-boolean v5, v4, Landroid/support/v4/a/i;->K:Z

    .line 20116
    iget-object v4, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    iget-object v3, v3, Landroid/support/v4/a/p;->f:Landroid/support/v4/a/r;

    iput-object v3, v4, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 20118
    sget-boolean v3, Landroid/support/v4/a/r;->a:Z

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Instantiated fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20121
    :cond_8
    iget-object v3, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    .line 1960
    sget-boolean v4, Landroid/support/v4/a/r;->a:Z

    if-eqz v4, :cond_9

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: active #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_9
    iget-object v4, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    iput-object v8, v1, Landroid/support/v4/a/w;->k:Landroid/support/v4/a/i;

    .line 1956
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1967
    :cond_a
    iget-object v1, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iget-object v1, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 1969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    .line 1971
    :cond_b
    sget-boolean v1, Landroid/support/v4/a/r;->a:Z

    if-eqz v1, :cond_c

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: avail #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_c
    iget-object v1, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1977
    :cond_d
    if-eqz p2, :cond_10

    move v3, v2

    .line 1978
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    .line 1979
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1980
    iget v1, v0, Landroid/support/v4/a/i;->t:I

    if-ltz v1, :cond_e

    .line 1981
    iget v1, v0, Landroid/support/v4/a/i;->t:I

    iget-object v4, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 1982
    iget-object v1, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/a/i;->t:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/a/i;

    iput-object v1, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    .line 1978
    :cond_e
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 1984
    :cond_f
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Re-attaching retained fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/a/i;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    iput-object v8, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    goto :goto_5

    .line 1993
    :cond_10
    iget-object v0, p1, Landroid/support/v4/a/u;->b:[I

    if-eqz v0, :cond_14

    .line 1994
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/a/u;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    move v1, v2

    .line 1995
    :goto_6
    iget-object v0, p1, Landroid/support/v4/a/u;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_15

    .line 1996
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/a/u;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1997
    if-nez v0, :cond_11

    .line 1998
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No instantiated fragment for index #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/support/v4/a/u;->b:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 2001
    :cond_11
    iput-boolean v9, v0, Landroid/support/v4/a/i;->v:Z

    .line 2002
    sget-boolean v3, Landroid/support/v4/a/r;->a:Z

    if-eqz v3, :cond_12

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: added #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_12
    iget-object v3, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2004
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2006
    :cond_13
    iget-object v3, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2009
    :cond_14
    iput-object v8, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    .line 2013
    :cond_15
    iget-object v0, p1, Landroid/support/v4/a/u;->c:[Landroid/support/v4/a/e;

    if-eqz v0, :cond_18

    .line 2014
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/a/u;->c:[Landroid/support/v4/a/e;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    move v0, v2

    .line 2015
    :goto_7
    iget-object v1, p1, Landroid/support/v4/a/u;->c:[Landroid/support/v4/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2016
    iget-object v1, p1, Landroid/support/v4/a/u;->c:[Landroid/support/v4/a/e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/a/e;->a(Landroid/support/v4/a/r;)Landroid/support/v4/a/b;

    move-result-object v1

    .line 2017
    sget-boolean v3, Landroid/support/v4/a/r;->a:Z

    if-eqz v3, :cond_16

    .line 2018
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "restoreAllState: back stack #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/a/b;->p:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    new-instance v3, Landroid/support/v4/e/d;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/e/d;-><init>(Ljava/lang/String;)V

    .line 2021
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2022
    const-string v3, "  "

    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/a/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2024
    :cond_16
    iget-object v3, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    iget v3, v1, Landroid/support/v4/a/b;->p:I

    if-ltz v3, :cond_17

    .line 2026
    iget v3, v1, Landroid/support/v4/a/b;->p:I

    invoke-direct {p0, v3, v1}, Landroid/support/v4/a/r;->a(ILandroid/support/v4/a/b;)V

    .line 2015
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2030
    :cond_18
    iput-object v8, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v4/a/i;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 919
    iget-boolean v0, p1, Landroid/support/v4/a/i;->V:Z

    if-eqz v0, :cond_0

    .line 920
    iget-boolean v0, p0, Landroid/support/v4/a/r;->e:Z

    if-eqz v0, :cond_1

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/r;->w:Z

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iput-boolean v3, p1, Landroid/support/v4/a/i;->V:Z

    .line 926
    iget v2, p0, Landroid/support/v4/a/r;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/a/i;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1345
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/a/i;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13492
    :cond_0
    iget v0, p1, Landroid/support/v4/a/i;->B:I

    if-lez v0, :cond_5

    move v0, v1

    .line 1346
    :goto_0
    if-nez v0, :cond_6

    move v0, v1

    .line 1347
    :goto_1
    iget-boolean v2, p1, Landroid/support/v4/a/i;->K:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    .line 1348
    :cond_1
    iget-object v2, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1349
    iget-object v2, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1351
    :cond_2
    iget-boolean v2, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v2, :cond_3

    .line 1352
    iput-boolean v1, p0, Landroid/support/v4/a/r;->s:Z

    .line 1354
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/a/i;->v:Z

    .line 1355
    iput-boolean v1, p1, Landroid/support/v4/a/i;->w:Z

    .line 1356
    if-eqz v0, :cond_7

    move v2, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1359
    :cond_4
    return-void

    :cond_5
    move v0, v5

    .line 13492
    goto :goto_0

    :cond_6
    move v0, v5

    .line 1346
    goto :goto_1

    :cond_7
    move v2, v1

    .line 1356
    goto :goto_2
.end method

.method final a(Landroid/support/v4/a/i;IIIZ)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 976
    iget-boolean v0, p1, Landroid/support/v4/a/i;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/support/v4/a/i;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    if-le p2, v5, :cond_1

    move p2, v5

    .line 979
    :cond_1
    iget-boolean v0, p1, Landroid/support/v4/a/i;->w:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/support/v4/a/i;->k:I

    if-le p2, v0, :cond_2

    .line 981
    iget p2, p1, Landroid/support/v4/a/i;->k:I

    .line 985
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/a/i;->V:Z

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/support/v4/a/i;->k:I

    if-ge v0, v9, :cond_3

    if-le p2, v6, :cond_3

    move p2, v6

    .line 988
    :cond_3
    iget v0, p1, Landroid/support/v4/a/i;->k:I

    if-ge v0, p2, :cond_2b

    .line 992
    iget-boolean v0, p1, Landroid/support/v4/a/i;->y:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/a/i;->z:Z

    if-nez v0, :cond_4

    .line 1234
    :goto_0
    return-void

    .line 995
    :cond_4
    iget-object v0, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1000
    iput-object v7, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    .line 1001
    iget v2, p1, Landroid/support/v4/a/i;->m:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1003
    :cond_5
    iget v0, p1, Landroid/support/v4/a/i;->k:I

    packed-switch v0, :pswitch_data_0

    .line 1233
    :cond_6
    :goto_1
    iput p2, p1, Landroid/support/v4/a/i;->k:I

    goto :goto_0

    .line 1005
    :pswitch_0
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_7
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 1007
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 4166
    iget-object v1, v1, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 1007
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1008
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    .line 1010
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Landroid/support/v4/a/r;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    .line 1012
    iget-object v0, p1, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    if-eqz v0, :cond_8

    .line 1013
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/a/i;->u:I

    .line 1016
    :cond_8
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/a/i;->W:Z

    .line 1018
    iget-boolean v0, p1, Landroid/support/v4/a/i;->W:Z

    if-nez v0, :cond_9

    .line 1019
    iput-boolean v5, p1, Landroid/support/v4/a/i;->V:Z

    .line 1020
    if-le p2, v6, :cond_9

    move p2, v6

    .line 1025
    :cond_9
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    iput-object v0, p1, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 1026
    iget-object v0, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    iput-object v0, p1, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 1027
    iget-object v0, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    :goto_2
    iput-object v0, p1, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 1029
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 1030
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 5166
    iget-object v0, v0, Landroid/support/v4/a/p;->c:Landroid/content/Context;

    .line 1030
    invoke-virtual {p1, v0}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)V

    .line 1031
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_b

    .line 1032
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_a
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 4174
    iget-object v0, v0, Landroid/support/v4/a/p;->f:Landroid/support/v4/a/r;

    goto :goto_2

    .line 1035
    :cond_b
    iget-object v0, p1, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 1039
    iget-boolean v0, p1, Landroid/support/v4/a/i;->M:Z

    if-nez v0, :cond_f

    .line 1040
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 5938
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v1, :cond_c

    .line 5939
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 6043
    iput-boolean v3, v1, Landroid/support/v4/a/r;->t:Z

    .line 5941
    :cond_c
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 5942
    invoke-virtual {p1, v0}, Landroid/support/v4/a/i;->a(Landroid/os/Bundle;)V

    .line 5943
    iget-boolean v1, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v1, :cond_d

    .line 5944
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5947
    :cond_d
    if-eqz v0, :cond_f

    .line 5948
    const-string v1, "android:support:fragments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 5950
    if-eqz v0, :cond_f

    .line 5951
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-nez v1, :cond_e

    .line 5952
    invoke-virtual {p1}, Landroid/support/v4/a/i;->s()V

    .line 5954
    :cond_e
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v1, v0, v7}, Landroid/support/v4/a/r;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 5955
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->i()V

    .line 1042
    :cond_f
    iput-boolean v3, p1, Landroid/support/v4/a/i;->M:Z

    .line 1043
    iget-boolean v0, p1, Landroid/support/v4/a/i;->y:Z

    if-eqz v0, :cond_11

    .line 1047
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/a/i;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/a/i;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1049
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 1050
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    .line 1051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_19

    .line 1052
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)V

    .line 1056
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/a/i;->J:Z

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    :cond_10
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1063
    :cond_11
    :goto_4
    :pswitch_1
    if-le p2, v5, :cond_21

    .line 1064
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_12
    iget-boolean v0, p1, Landroid/support/v4/a/i;->y:Z

    if-nez v0, :cond_17

    .line 1067
    iget v0, p1, Landroid/support/v4/a/i;->H:I

    if-eqz v0, :cond_47

    .line 1068
    iget-object v0, p0, Landroid/support/v4/a/r;->p:Landroid/support/v4/a/n;

    iget v1, p1, Landroid/support/v4/a/i;->H:I

    invoke-virtual {v0, v1}, Landroid/support/v4/a/n;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1069
    if-nez v0, :cond_13

    iget-boolean v1, p1, Landroid/support/v4/a/i;->A:Z

    if-nez v1, :cond_13

    .line 1070
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/support/v4/a/i;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/a/i;->h()Landroid/content/res/Resources;

    move-result-object v4

    iget v8, p1, Landroid/support/v4/a/i;->H:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") for fragment "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 1077
    :cond_13
    :goto_5
    iput-object v0, p1, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    .line 1078
    iget-object v1, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/a/i;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/a/i;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1080
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 1081
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    .line 1082
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1b

    .line 1083
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->r(Landroid/view/View;)V

    .line 1087
    :goto_6
    if-eqz v0, :cond_15

    .line 1088
    invoke-direct {p0, p1, p3, v5, p4}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1090
    if-eqz v1, :cond_14

    .line 1091
    iget-object v2, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/a/r;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1092
    iget-object v2, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1094
    :cond_14
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1096
    :cond_15
    iget-boolean v0, p1, Landroid/support/v4/a/i;->J:Z

    if-eqz v0, :cond_16

    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    :cond_16
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1103
    :cond_17
    :goto_7
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 6969
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v1, :cond_18

    .line 6970
    iget-object v1, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 7043
    iput-boolean v3, v1, Landroid/support/v4/a/r;->t:Z

    .line 6972
    :cond_18
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 6973
    invoke-virtual {p1, v0}, Landroid/support/v4/a/i;->c(Landroid/os/Bundle;)V

    .line 6974
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_1d

    .line 6975
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_19
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/a/ao;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    goto/16 :goto_3

    .line 1059
    :cond_1a
    iput-object v7, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    goto/16 :goto_4

    .line 1085
    :cond_1b
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/a/ao;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    goto :goto_6

    .line 1099
    :cond_1c
    iput-object v7, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    goto :goto_7

    .line 6978
    :cond_1d
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_1e

    .line 6979
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->j()V

    .line 1104
    :cond_1e
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 1105
    iget-object v0, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 7470
    iget-object v0, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    if-eqz v0, :cond_1f

    .line 7471
    iget-object v0, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 7472
    iput-object v7, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    .line 7474
    :cond_1f
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 8272
    iput-boolean v5, p1, Landroid/support/v4/a/i;->Q:Z

    .line 7476
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_20

    .line 7477
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_20
    iput-object v7, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 1111
    :cond_21
    :pswitch_2
    if-le p2, v6, :cond_26

    .line 1112
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8984
    :cond_22
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_23

    .line 8985
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 9043
    iput-boolean v3, v0, Landroid/support/v4/a/r;->t:Z

    .line 8986
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->f()Z

    .line 8988
    :cond_23
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 8989
    invoke-virtual {p1}, Landroid/support/v4/a/i;->K_()V

    .line 8990
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_24

    .line 8991
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8994
    :cond_24
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_25

    .line 8995
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->k()V

    .line 8997
    :cond_25
    iget-object v0, p1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_26

    .line 8998
    iget-object v0, p1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->f()V

    .line 1116
    :cond_26
    :pswitch_3
    if-le p2, v9, :cond_6

    .line 1117
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_27

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_27
    iput-boolean v5, p1, Landroid/support/v4/a/i;->x:Z

    .line 10003
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_28

    .line 10004
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 10043
    iput-boolean v3, v0, Landroid/support/v4/a/r;->t:Z

    .line 10005
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->f()Z

    .line 10007
    :cond_28
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 10008
    invoke-virtual {p1}, Landroid/support/v4/a/i;->o()V

    .line 10009
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_29

    .line 10010
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10013
    :cond_29
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_2a

    .line 10014
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->l()V

    .line 10015
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->f()Z

    .line 1120
    :cond_2a
    iput-object v7, p1, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    .line 1121
    iput-object v7, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 1124
    :cond_2b
    iget v0, p1, Landroid/support/v4/a/i;->k:I

    if-le v0, p2, :cond_6

    .line 1125
    iget v0, p1, Landroid/support/v4/a/i;->k:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1185
    :cond_2c
    :goto_8
    :pswitch_4
    if-gtz p2, :cond_6

    .line 1186
    iget-boolean v0, p0, Landroid/support/v4/a/r;->u:Z

    if-eqz v0, :cond_2d

    .line 1187
    iget-object v0, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 1194
    iget-object v0, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    .line 1195
    iput-object v7, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    .line 1196
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1199
    :cond_2d
    iget-object v0, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 1204
    iput p2, p1, Landroid/support/v4/a/i;->m:I

    move p2, v5

    .line 1205
    goto/16 :goto_1

    .line 1127
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_31

    .line 1128
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10122
    :cond_2e
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_2f

    .line 10123
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 11067
    invoke-virtual {v0, v9}, Landroid/support/v4/a/r;->c(I)V

    .line 10125
    :cond_2f
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 10126
    invoke-virtual {p1}, Landroid/support/v4/a/i;->p()V

    .line 10127
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_30

    .line 10128
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1130
    :cond_30
    iput-boolean v3, p1, Landroid/support/v4/a/i;->x:Z

    .line 1133
    :cond_31
    :pswitch_6
    if-ge p2, v9, :cond_34

    .line 1134
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_32

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11134
    :cond_32
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_33

    .line 11135
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->m()V

    .line 11137
    :cond_33
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 11138
    invoke-virtual {p1}, Landroid/support/v4/a/i;->d()V

    .line 11139
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_34

    .line 11140
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_34
    :pswitch_7
    if-ge p2, v6, :cond_36

    .line 1139
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_35

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STOPPED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_35
    invoke-virtual {p1}, Landroid/support/v4/a/i;->t()V

    .line 1143
    :cond_36
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2c

    .line 1144
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_37

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_37
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1148
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p1, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    if-nez v0, :cond_38

    .line 1149
    invoke-direct {p0, p1}, Landroid/support/v4/a/r;->c(Landroid/support/v4/a/i;)V

    .line 11166
    :cond_38
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_39

    .line 11167
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 12084
    invoke-virtual {v0, v5}, Landroid/support/v4/a/r;->c(I)V

    .line 11169
    :cond_39
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 11170
    invoke-virtual {p1}, Landroid/support/v4/a/i;->e()V

    .line 11171
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_3a

    .line 11172
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11175
    :cond_3a
    iget-object v0, p1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v0, :cond_3b

    .line 11176
    iget-object v0, p1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->e()V

    .line 1153
    :cond_3b
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3d

    .line 1155
    iget v0, p0, Landroid/support/v4/a/r;->n:I

    if-lez v0, :cond_46

    iget-boolean v0, p0, Landroid/support/v4/a/r;->u:Z

    if-nez v0, :cond_46

    .line 1156
    invoke-direct {p0, p1, p3, v3, p4}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1159
    :goto_9
    if-eqz v0, :cond_3c

    .line 1161
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    iput-object v1, p1, Landroid/support/v4/a/i;->l:Landroid/view/View;

    .line 1162
    iput p2, p1, Landroid/support/v4/a/i;->m:I

    .line 1163
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1164
    new-instance v2, Landroid/support/v4/a/r$3;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/a/r$3;-><init>(Landroid/support/v4/a/r;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/a/i;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1176
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1178
    :cond_3c
    iget-object v0, p1, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1180
    :cond_3d
    iput-object v7, p1, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    .line 1181
    iput-object v7, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1182
    iput-object v7, p1, Landroid/support/v4/a/i;->U:Landroid/view/View;

    goto/16 :goto_8

    .line 1207
    :cond_3e
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_3f

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_3f
    iget-boolean v0, p1, Landroid/support/v4/a/i;->M:Z

    if-nez v0, :cond_41

    .line 12181
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v0, :cond_40

    .line 12182
    iget-object v0, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->n()V

    .line 12184
    :cond_40
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 12185
    invoke-virtual {p1}, Landroid/support/v4/a/i;->q()V

    .line 12186
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_41

    .line 12187
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_41
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Q:Z

    .line 1213
    invoke-virtual {p1}, Landroid/support/v4/a/i;->F_()V

    .line 1214
    iget-boolean v0, p1, Landroid/support/v4/a/i;->Q:Z

    if-nez v0, :cond_42

    .line 1215
    new-instance v0, Landroid/support/v4/a/cg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/a/cg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1218
    :cond_42
    if-nez p5, :cond_6

    .line 1219
    iget-boolean v0, p1, Landroid/support/v4/a/i;->M:Z

    if-nez v0, :cond_45

    .line 12308
    iget v0, p1, Landroid/support/v4/a/i;->p:I

    if-ltz v0, :cond_6

    .line 12312
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_43

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12313
    :cond_43
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12314
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_44

    .line 12315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    .line 12317
    :cond_44
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/a/i;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12318
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    iget-object v1, p1, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Ljava/lang/String;)V

    .line 12390
    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v4/a/i;->p:I

    .line 12391
    iput-object v7, p1, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    .line 12392
    iput-boolean v3, p1, Landroid/support/v4/a/i;->v:Z

    .line 12393
    iput-boolean v3, p1, Landroid/support/v4/a/i;->w:Z

    .line 12394
    iput-boolean v3, p1, Landroid/support/v4/a/i;->x:Z

    .line 12395
    iput-boolean v3, p1, Landroid/support/v4/a/i;->y:Z

    .line 12396
    iput-boolean v3, p1, Landroid/support/v4/a/i;->z:Z

    .line 12397
    iput-boolean v3, p1, Landroid/support/v4/a/i;->A:Z

    .line 12398
    iput v3, p1, Landroid/support/v4/a/i;->B:I

    .line 12399
    iput-object v7, p1, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 12400
    iput-object v7, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    .line 12401
    iput-object v7, p1, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 12402
    iput v3, p1, Landroid/support/v4/a/i;->G:I

    .line 12403
    iput v3, p1, Landroid/support/v4/a/i;->H:I

    .line 12404
    iput-object v7, p1, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    .line 12405
    iput-boolean v3, p1, Landroid/support/v4/a/i;->J:Z

    .line 12406
    iput-boolean v3, p1, Landroid/support/v4/a/i;->K:Z

    .line 12407
    iput-boolean v3, p1, Landroid/support/v4/a/i;->M:Z

    .line 12408
    iput-object v7, p1, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    .line 12409
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Y:Z

    .line 12410
    iput-boolean v3, p1, Landroid/support/v4/a/i;->Z:Z

    goto/16 :goto_1

    .line 1222
    :cond_45
    iput-object v7, p1, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    .line 1223
    iput-object v7, p1, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    .line 1224
    iput-object v7, p1, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 1225
    iput-object v7, p1, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    goto/16 :goto_1

    :cond_46
    move-object v0, v7

    goto/16 :goto_9

    :cond_47
    move-object v0, v7

    goto/16 :goto_5

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/support/v4/a/i;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1323
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    .line 1326
    :cond_0
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13289
    :cond_1
    iget v0, p1, Landroid/support/v4/a/i;->p:I

    if-gez v0, :cond_4

    .line 13293
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 13294
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 13295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    .line 13297
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/a/i;->a(ILandroid/support/v4/a/i;)V

    .line 13298
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13304
    :goto_0
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/a/i;->K:Z

    if-nez v0, :cond_8

    .line 1329
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1330
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13301
    :cond_5
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/a/i;->a(ILandroid/support/v4/a/i;)V

    .line 13302
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1332
    :cond_6
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    iput-boolean v3, p1, Landroid/support/v4/a/i;->v:Z

    .line 1334
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/a/i;->w:Z

    .line 1335
    iget-boolean v0, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v0, :cond_7

    .line 1336
    iput-boolean v3, p0, Landroid/support/v4/a/r;->s:Z

    .line 1338
    :cond_7
    if-eqz p2, :cond_8

    .line 1339
    invoke-direct {p0, p1}, Landroid/support/v4/a/r;->b(Landroid/support/v4/a/i;)V

    .line 1342
    :cond_8
    return-void
.end method

.method public final a(Landroid/support/v4/a/p;Landroid/support/v4/a/n;Landroid/support/v4/a/i;)V
    .locals 2

    .prologue
    .line 2036
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2037
    :cond_0
    iput-object p1, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 2038
    iput-object p2, p0, Landroid/support/v4/a/r;->p:Landroid/support/v4/a/n;

    .line 2039
    iput-object p3, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    .line 2040
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Z)V
    .locals 2

    .prologue
    .line 1517
    if-nez p2, :cond_0

    .line 1518
    invoke-direct {p0}, Landroid/support/v4/a/r;->p()V

    .line 1520
    :cond_0
    monitor-enter p0

    .line 1521
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/a/r;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    if-nez v0, :cond_2

    .line 1522
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1524
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    .line 1527
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1529
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 14170
    iget-object v0, v0, Landroid/support/v4/a/p;->d:Landroid/os/Handler;

    .line 1529
    iget-object v1, p0, Landroid/support/v4/a/r;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1530
    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 15170
    iget-object v0, v0, Landroid/support/v4/a/p;->d:Landroid/os/Handler;

    .line 1530
    iget-object v1, p0, Landroid/support/v4/a/r;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1532
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 723
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 724
    if-lez v4, :cond_e

    .line 725
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 728
    :goto_0
    if-ge v2, v4, :cond_e

    .line 729
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 730
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 731
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 732
    if-eqz v0, :cond_d

    .line 2832
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    iget v5, v0, Landroid/support/v4/a/i;->G:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2834
    const-string v5, " mContainerId=#"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2835
    iget v5, v0, Landroid/support/v4/a/i;->H:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    const-string v5, " mTag="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->I:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/a/i;->k:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2838
    const-string v5, " mIndex="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/a/i;->p:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2839
    const-string v5, " mWho="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->q:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2840
    const-string v5, " mBackStackNesting="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/a/i;->B:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2841
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAdded="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->v:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2842
    const-string v5, " mRemoving="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->w:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2843
    const-string v5, " mResumed="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->x:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2844
    const-string v5, " mFromLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->y:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2845
    const-string v5, " mInLayout="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->z:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2846
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHidden="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->J:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2847
    const-string v5, " mDetached="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->K:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2848
    const-string v5, " mMenuVisible="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->P:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2849
    const-string v5, " mHasMenu="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->O:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2850
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mRetainInstance="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->L:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2851
    const-string v5, " mRetaining="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->M:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2852
    const-string v5, " mUserVisibleHint="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Landroid/support/v4/a/i;->W:Z

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2853
    iget-object v5, v0, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    if-eqz v5, :cond_0

    .line 2854
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mFragmentManager="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2855
    iget-object v5, v0, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2857
    :cond_0
    iget-object v5, v0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    if-eqz v5, :cond_1

    .line 2858
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mHost="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2859
    iget-object v5, v0, Landroid/support/v4/a/i;->D:Landroid/support/v4/a/p;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2861
    :cond_1
    iget-object v5, v0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    if-eqz v5, :cond_2

    .line 2862
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mParentFragment="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2863
    iget-object v5, v0, Landroid/support/v4/a/i;->F:Landroid/support/v4/a/i;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2865
    :cond_2
    iget-object v5, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 2866
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mArguments="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2868
    :cond_3
    iget-object v5, v0, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 2869
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedFragmentState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    iget-object v5, v0, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2872
    :cond_4
    iget-object v5, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    .line 2873
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mSavedViewState="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    iget-object v5, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2876
    :cond_5
    iget-object v5, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    if-eqz v5, :cond_6

    .line 2877
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTarget="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2878
    const-string v5, " mTargetRequestCode="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2879
    iget v5, v0, Landroid/support/v4/a/i;->u:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2881
    :cond_6
    iget v5, v0, Landroid/support/v4/a/i;->R:I

    if-eqz v5, :cond_7

    .line 2882
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mNextAnim="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v0, Landroid/support/v4/a/i;->R:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2884
    :cond_7
    iget-object v5, v0, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 2885
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mContainer="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->S:Landroid/view/ViewGroup;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2887
    :cond_8
    iget-object v5, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 2888
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2890
    :cond_9
    iget-object v5, v0, Landroid/support/v4/a/i;->U:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 2891
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mInnerView="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2893
    :cond_a
    iget-object v5, v0, Landroid/support/v4/a/i;->l:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 2894
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mAnimatingAway="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/a/i;->l:Landroid/view/View;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2895
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStateAfterAnimating="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2896
    iget v5, v0, Landroid/support/v4/a/i;->m:I

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 2898
    :cond_b
    iget-object v5, v0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v5, :cond_c

    .line 2899
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Loader Manager:"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    iget-object v5, v0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3, p4}, Landroid/support/v4/a/ai;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2902
    :cond_c
    iget-object v5, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v5, :cond_d

    .line 2903
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Child "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2, p3, p4}, Landroid/support/v4/a/r;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 728
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 739
    :cond_e
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 740
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 741
    if-lez v4, :cond_f

    .line 742
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 743
    :goto_1
    if-ge v2, v4, :cond_f

    .line 744
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 745
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/a/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 751
    :cond_f
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 752
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 753
    if-lez v4, :cond_10

    .line 754
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 755
    :goto_2
    if-ge v2, v4, :cond_10

    .line 756
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 757
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 758
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/a/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 763
    :cond_10
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    .line 764
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 765
    if-lez v4, :cond_11

    .line 766
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 767
    :goto_3
    if-ge v2, v4, :cond_11

    .line 768
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 769
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 770
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/a/b;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v3, p3}, Landroid/support/v4/a/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 767
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 776
    :cond_11
    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 778
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 779
    if-lez v3, :cond_12

    .line 780
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 781
    :goto_4
    if-ge v2, v3, :cond_12

    .line 782
    iget-object v0, p0, Landroid/support/v4/a/r;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 783
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 784
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 781
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 789
    :cond_12
    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 790
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroid/support/v4/a/r;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    :cond_13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 796
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 797
    if-lez v2, :cond_14

    .line 798
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    :goto_5
    if-ge v1, v2, :cond_14

    .line 800
    iget-object v0, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 793
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 807
    :cond_14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/r;->p:Landroid/support/v4/a/n;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    if-eqz v0, :cond_15

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 813
    :cond_15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/a/r;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 814
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 815
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/a/r;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 816
    iget-boolean v0, p0, Landroid/support/v4/a/r;->s:Z

    if-eqz v0, :cond_16

    .line 817
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    iget-boolean v0, p0, Landroid/support/v4/a/r;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 820
    :cond_16
    iget-object v0, p0, Landroid/support/v4/a/r;->v:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 821
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Landroid/support/v4/a/r;->v:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :cond_17
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 825
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Landroid/support/v4/a/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    :cond_18
    return-void
.end method

.method final a(II)Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1665
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return v3

    .line 1668
    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    .line 1669
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1670
    if-ltz v0, :cond_0

    .line 1673
    iget-object v1, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 1674
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1675
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1676
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/a/b;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1677
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/support/v4/a/b;->a(ZLandroid/support/v4/a/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/a/d;

    .line 1732
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/a/r;->g()V

    move v3, v2

    .line 1734
    goto :goto_0

    .line 1680
    :cond_3
    const/4 v0, -0x1

    .line 1681
    if-ltz p1, :cond_7

    .line 1684
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1685
    :goto_1
    if-ltz v1, :cond_5

    .line 1686
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 1690
    if-ltz p1, :cond_4

    iget v0, v0, Landroid/support/v4/a/b;->p:I

    if-eq p1, v0, :cond_5

    .line 1693
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 1694
    goto :goto_1

    .line 1695
    :cond_5
    if-ltz v1, :cond_0

    .line 1698
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    .line 1699
    add-int/lit8 v1, v1, -0x1

    .line 1701
    :goto_2
    if-ltz v1, :cond_6

    .line 1702
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    .line 1703
    if-ltz p1, :cond_6

    iget v0, v0, Landroid/support/v4/a/b;->p:I

    if-ne p1, v0, :cond_6

    .line 1705
    add-int/lit8 v1, v1, -0x1

    .line 1706
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1712
    :cond_7
    iget-object v1, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1715
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    iget-object v1, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-le v1, v0, :cond_8

    .line 1718
    iget-object v5, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1720
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 1721
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 1722
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v1, v3

    .line 1723
    :goto_4
    if-gt v1, v7, :cond_9

    .line 1724
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/a/b;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1723
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_9
    move-object v5, v4

    move v4, v3

    .line 1727
    :goto_5
    if-gt v4, v7, :cond_2

    .line 1728
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Popping back stack state: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    if-ne v4, v7, :cond_b

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1, v5, v8, v9}, Landroid/support/v4/a/b;->a(ZLandroid/support/v4/a/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/a/d;

    move-result-object v1

    .line 1727
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_5

    :cond_b
    move v1, v3

    .line 1729
    goto :goto_6
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2151
    .line 2152
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    move v3, v2

    .line 2153
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2154
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2155
    if-eqz v0, :cond_1

    .line 21058
    iget-boolean v4, v0, Landroid/support/v4/a/i;->J:Z

    if-nez v4, :cond_5

    .line 21059
    iget-boolean v4, v0, Landroid/support/v4/a/i;->O:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/a/i;->P:Z

    if-eqz v4, :cond_4

    move v4, v5

    .line 21063
    :goto_1
    iget-object v6, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v6, :cond_0

    .line 21064
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/r;->a(Landroid/view/Menu;)Z

    move-result v0

    or-int/2addr v4, v0

    .line 2156
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    move v3, v5

    .line 2153
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2162
    :cond_3
    return v3

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2119
    .line 2120
    const/4 v1, 0x0

    .line 2121
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v4, v5

    move v3, v5

    .line 2122
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 2123
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2124
    if-eqz v0, :cond_7

    .line 21044
    iget-boolean v6, v0, Landroid/support/v4/a/i;->J:Z

    if-nez v6, :cond_9

    .line 21045
    iget-boolean v6, v0, Landroid/support/v4/a/i;->O:Z

    if-eqz v6, :cond_8

    iget-boolean v6, v0, Landroid/support/v4/a/i;->P:Z

    if-eqz v6, :cond_8

    .line 21047
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    move v6, v2

    .line 21049
    :goto_1
    iget-object v7, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v7, :cond_0

    .line 21050
    iget-object v7, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v7, p1, p2}, Landroid/support/v4/a/r;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 2125
    :cond_0
    :goto_2
    if-eqz v6, :cond_7

    .line 2127
    if-nez v1, :cond_1

    .line 2128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2130
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 2122
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v5

    .line 2136
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 2137
    :goto_4
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 2138
    iget-object v0, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2139
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2140
    :cond_4
    invoke-static {}, Landroid/support/v4/a/i;->r()V

    .line 2137
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2145
    :cond_6
    iput-object v1, p0, Landroid/support/v4/a/r;->j:Ljava/util/ArrayList;

    .line 2147
    return v3

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_1

    :cond_9
    move v6, v5

    goto :goto_2
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2166
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2167
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2168
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2169
    if-eqz v0, :cond_3

    .line 21071
    iget-boolean v4, v0, Landroid/support/v4/a/i;->J:Z

    if-nez v4, :cond_2

    .line 21072
    iget-boolean v4, v0, Landroid/support/v4/a/i;->O:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Landroid/support/v4/a/i;->P:Z

    if-eqz v4, :cond_1

    .line 21073
    invoke-virtual {v0, p1}, Landroid/support/v4/a/i;->a(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 2170
    :goto_1
    if-eqz v0, :cond_3

    move v2, v3

    .line 2176
    :cond_0
    return v2

    .line 21077
    :cond_1
    iget-object v4, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v4, :cond_2

    .line 21078
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/r;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 21079
    goto :goto_1

    :cond_2
    move v0, v2

    .line 21083
    goto :goto_1

    .line 2167
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 607
    if-gez p1, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    new-instance v0, Landroid/support/v4/a/r$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/a/r$2;-><init>(Landroid/support/v4/a/r;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/a/r;->a(Ljava/lang/Runnable;Z)V

    .line 615
    return-void
.end method

.method public final b(Landroid/support/v4/a/i;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1362
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/a/i;->J:Z

    if-nez v0, :cond_4

    .line 1364
    iput-boolean v3, p1, Landroid/support/v4/a/i;->J:Z

    .line 1365
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1366
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1368
    if-eqz v0, :cond_1

    .line 1369
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/a/r;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1370
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1372
    :cond_1
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/a/i;->v:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v0, :cond_3

    .line 1375
    iput-boolean v3, p0, Landroid/support/v4/a/r;->s:Z

    .line 1377
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/a/i;->c_(Z)V

    .line 1379
    :cond_4
    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 2194
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2195
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2196
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2197
    if-eqz v0, :cond_0

    .line 21101
    iget-boolean v2, v0, Landroid/support/v4/a/i;->J:Z

    if-nez v2, :cond_0

    .line 21105
    iget-object v2, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v2, :cond_0

    .line 21106
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/r;->b(Landroid/view/Menu;)V

    .line 2195
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2202
    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/support/v4/a/r;->f()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2180
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 2181
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2182
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2183
    if-eqz v0, :cond_2

    .line 21087
    iget-boolean v4, v0, Landroid/support/v4/a/i;->J:Z

    if-nez v4, :cond_1

    .line 21091
    iget-object v4, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v4, :cond_1

    .line 21092
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/r;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 2184
    :goto_1
    if-eqz v0, :cond_2

    move v2, v3

    .line 2190
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 21097
    goto :goto_1

    .line 2181
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method final c(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1241
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/support/v4/a/r;->a(IIIZ)V

    .line 1242
    return-void
.end method

.method public final c(Landroid/support/v4/a/i;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1382
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/a/i;->J:Z

    if-eqz v0, :cond_4

    .line 1384
    iput-boolean v3, p1, Landroid/support/v4/a/i;->J:Z

    .line 1385
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1386
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1388
    if-eqz v0, :cond_1

    .line 1389
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/a/r;->b(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 1390
    iget-object v1, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1392
    :cond_1
    iget-object v0, p1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/a/i;->v:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v0, :cond_3

    .line 1395
    iput-boolean v4, p0, Landroid/support/v4/a/r;->s:Z

    .line 1397
    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/a/i;->c_(Z)V

    .line 1399
    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/support/v4/a/r;->p()V

    .line 2570
    invoke-virtual {p0}, Landroid/support/v4/a/r;->f()Z

    .line 586
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/a/r;->a(II)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d(Landroid/support/v4/a/i;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1402
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/a/i;->K:Z

    if-nez v0, :cond_4

    .line 1404
    iput-boolean v2, p1, Landroid/support/v4/a/i;->K:Z

    .line 1405
    iget-boolean v0, p1, Landroid/support/v4/a/i;->v:Z

    if-eqz v0, :cond_4

    .line 1407
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1408
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1411
    :cond_2
    iget-boolean v0, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v0, :cond_3

    .line 1412
    iput-boolean v2, p0, Landroid/support/v4/a/r;->s:Z

    .line 1414
    :cond_3
    iput-boolean v5, p1, Landroid/support/v4/a/i;->v:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1415
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1418
    :cond_4
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1286
    :cond_0
    return-void

    .line 1280
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1281
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1282
    if-eqz v0, :cond_2

    .line 1283
    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;)V

    .line 1280
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final e(Landroid/support/v4/a/i;II)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1421
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/a/i;->K:Z

    if-eqz v0, :cond_5

    .line 1423
    iput-boolean v5, p1, Landroid/support/v4/a/i;->K:Z

    .line 1424
    iget-boolean v0, p1, Landroid/support/v4/a/i;->v:Z

    if-nez v0, :cond_5

    .line 1425
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    .line 1428
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_2
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    iput-boolean v3, p1, Landroid/support/v4/a/i;->v:Z

    .line 1434
    iget-boolean v0, p1, Landroid/support/v4/a/i;->O:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Landroid/support/v4/a/i;->P:Z

    if-eqz v0, :cond_4

    .line 1435
    iput-boolean v3, p0, Landroid/support/v4/a/r;->s:Z

    .line 1437
    :cond_4
    iget v2, p0, Landroid/support/v4/a/r;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/r;->a(Landroid/support/v4/a/i;IIIZ)V

    .line 1440
    :cond_5
    return-void
.end method

.method public final f()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1595
    iget-boolean v1, p0, Landroid/support/v4/a/r;->e:Z

    if-eqz v1, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 16170
    iget-object v3, v3, Landroid/support/v4/a/p;->d:Landroid/os/Handler;

    .line 1599
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    .line 1608
    :goto_0
    monitor-enter p0

    .line 1609
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1610
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    iget-boolean v0, p0, Landroid/support/v4/a/r;->w:Z

    if-eqz v0, :cond_9

    move v3, v2

    move v4, v2

    .line 1633
    :goto_1
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 1634
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1635
    if-eqz v0, :cond_3

    iget-object v5, v0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    if-eqz v5, :cond_3

    .line 1636
    iget-object v0, v0, Landroid/support/v4/a/i;->X:Landroid/support/v4/a/ai;

    invoke-virtual {v0}, Landroid/support/v4/a/ai;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1633
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1613
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1614
    iget-object v1, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6

    .line 1615
    :cond_5
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    .line 1617
    :cond_6
    iget-object v1, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1618
    iget-object v1, p0, Landroid/support/v4/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1619
    iget-object v1, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 17170
    iget-object v1, v1, Landroid/support/v4/a/p;->d:Landroid/os/Handler;

    .line 1619
    iget-object v4, p0, Landroid/support/v4/a/r;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1620
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    iput-boolean v0, p0, Landroid/support/v4/a/r;->e:Z

    move v1, v2

    .line 1623
    :goto_2
    if-ge v1, v3, :cond_7

    .line 1624
    iget-object v4, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1625
    iget-object v4, p0, Landroid/support/v4/a/r;->d:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1623
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1620
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1627
    :cond_7
    iput-boolean v2, p0, Landroid/support/v4/a/r;->e:Z

    move v1, v0

    .line 1629
    goto :goto_0

    .line 1639
    :cond_8
    if-nez v4, :cond_9

    .line 1640
    iput-boolean v2, p0, Landroid/support/v4/a/r;->w:Z

    .line 1641
    invoke-virtual {p0}, Landroid/support/v4/a/r;->e()V

    .line 1644
    :cond_9
    return v1
.end method

.method final g()V
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/support/v4/a/r;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1649
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/a/r;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1650
    iget-object v1, p0, Landroid/support/v4/a/r;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1653
    :cond_0
    return-void
.end method

.method final h()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1808
    invoke-virtual {p0}, Landroid/support/v4/a/r;->f()Z

    .line 1810
    sget-boolean v0, Landroid/support/v4/a/r;->b:Z

    if-eqz v0, :cond_0

    .line 1820
    iput-boolean v3, p0, Landroid/support/v4/a/r;->t:Z

    .line 1823
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1918
    :cond_1
    :goto_0
    return-object v2

    .line 1828
    :cond_2
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1829
    new-array v7, v6, [Landroid/support/v4/a/w;

    move v5, v4

    move v1, v4

    .line 1831
    :goto_1
    if-ge v5, v6, :cond_10

    .line 1832
    iget-object v0, p0, Landroid/support/v4/a/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 1833
    if-eqz v0, :cond_19

    .line 1834
    iget v1, v0, Landroid/support/v4/a/i;->p:I

    if-gez v1, :cond_3

    .line 1835
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 1842
    :cond_3
    new-instance v8, Landroid/support/v4/a/w;

    invoke-direct {v8, v0}, Landroid/support/v4/a/w;-><init>(Landroid/support/v4/a/i;)V

    .line 1843
    aput-object v8, v7, v5

    .line 1845
    iget v1, v0, Landroid/support/v4/a/i;->k:I

    if-lez v1, :cond_f

    iget-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    if-nez v1, :cond_f

    .line 17775
    iget-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 17776
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    .line 17778
    :cond_4
    iget-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->f(Landroid/os/Bundle;)V

    .line 17779
    iget-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 17780
    iget-object v1, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    .line 17781
    iput-object v2, p0, Landroid/support/v4/a/r;->x:Landroid/os/Bundle;

    .line 17784
    :goto_2
    iget-object v9, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 17785
    invoke-direct {p0, v0}, Landroid/support/v4/a/r;->c(Landroid/support/v4/a/i;)V

    .line 17787
    :cond_5
    iget-object v9, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    if-eqz v9, :cond_7

    .line 17788
    if-nez v1, :cond_6

    .line 17789
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17791
    :cond_6
    const-string v9, "android:view_state"

    iget-object v10, v0, Landroid/support/v4/a/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 17794
    :cond_7
    iget-boolean v9, v0, Landroid/support/v4/a/i;->W:Z

    if-nez v9, :cond_9

    .line 17795
    if-nez v1, :cond_8

    .line 17796
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17799
    :cond_8
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v0, Landroid/support/v4/a/i;->W:Z

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1846
    :cond_9
    iput-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    .line 1848
    iget-object v1, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    if-eqz v1, :cond_d

    .line 1849
    iget-object v1, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    iget v1, v1, Landroid/support/v4/a/i;->p:I

    if-gez v1, :cond_a

    .line 1850
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 1854
    :cond_a
    iget-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    if-nez v1, :cond_b

    .line 1855
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    .line 1857
    :cond_b
    iget-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/a/i;->s:Landroid/support/v4/a/i;

    .line 18654
    iget v11, v10, Landroid/support/v4/a/i;->p:I

    if-gez v11, :cond_c

    .line 18655
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 18658
    :cond_c
    iget v10, v10, Landroid/support/v4/a/i;->p:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1859
    iget v1, v0, Landroid/support/v4/a/i;->u:I

    if-eqz v1, :cond_d

    .line 1860
    iget-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/a/i;->u:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1870
    :cond_d
    :goto_3
    sget-boolean v1, Landroid/support/v4/a/r;->a:Z

    if-eqz v1, :cond_e

    const-string v1, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v0, v3

    .line 1831
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto/16 :goto_1

    .line 1867
    :cond_f
    iget-object v1, v0, Landroid/support/v4/a/i;->n:Landroid/os/Bundle;

    iput-object v1, v8, Landroid/support/v4/a/w;->j:Landroid/os/Bundle;

    goto :goto_3

    .line 1875
    :cond_10
    if-nez v1, :cond_11

    .line 1876
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1884
    :cond_11
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 1885
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1886
    if-lez v5, :cond_14

    .line 1887
    new-array v1, v5, [I

    move v3, v4

    .line 1888
    :goto_5
    if-ge v3, v5, :cond_15

    .line 1889
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    iget v0, v0, Landroid/support/v4/a/i;->p:I

    aput v0, v1, v3

    .line 1890
    aget v0, v1, v3

    if-gez v0, :cond_12

    .line 1891
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " has cleared index: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/a/r;->a(Ljava/lang/RuntimeException;)V

    .line 1895
    :cond_12
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_13

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment #"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_13
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_14
    move-object v1, v2

    .line 1902
    :cond_15
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1903
    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1904
    if-lez v5, :cond_17

    .line 1905
    new-array v2, v5, [Landroid/support/v4/a/e;

    move v3, v4

    .line 1906
    :goto_6
    if-ge v3, v5, :cond_17

    .line 1907
    new-instance v4, Landroid/support/v4/a/e;

    iget-object v0, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/b;

    invoke-direct {v4, v0}, Landroid/support/v4/a/e;-><init>(Landroid/support/v4/a/b;)V

    aput-object v4, v2, v3

    .line 1908
    sget-boolean v0, Landroid/support/v4/a/r;->a:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "saveAllState: adding back stack #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/support/v4/a/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_16
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 1914
    :cond_17
    new-instance v0, Landroid/support/v4/a/u;

    invoke-direct {v0}, Landroid/support/v4/a/u;-><init>()V

    .line 1915
    iput-object v7, v0, Landroid/support/v4/a/u;->a:[Landroid/support/v4/a/w;

    .line 1916
    iput-object v1, v0, Landroid/support/v4/a/u;->b:[I

    .line 1917
    iput-object v2, v0, Landroid/support/v4/a/u;->c:[Landroid/support/v4/a/e;

    move-object v2, v0

    .line 1918
    goto/16 :goto_0

    :cond_18
    move-object v1, v2

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_4
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 2047
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    .line 2048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2049
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 2052
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    .line 2053
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2054
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 2057
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    .line 2058
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2059
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    .line 2063
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2064
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/r;->t:Z

    .line 2076
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2077
    return-void
.end method

.method public final n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/r;->u:Z

    .line 2089
    invoke-virtual {p0}, Landroid/support/v4/a/r;->f()Z

    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/a/r;->c(I)V

    .line 2091
    iput-object v1, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    .line 2092
    iput-object v1, p0, Landroid/support/v4/a/r;->p:Landroid/support/v4/a/n;

    .line 2093
    iput-object v1, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    .line 2094
    return-void
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2110
    iget-object v0, p0, Landroid/support/v4/a/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    .line 2111
    if-eqz v0, :cond_0

    .line 21027
    invoke-virtual {v0}, Landroid/support/v4/a/i;->onLowMemory()V

    .line 21028
    iget-object v2, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    if-eqz v2, :cond_0

    .line 21029
    iget-object v0, v0, Landroid/support/v4/a/i;->E:Landroid/support/v4/a/r;

    invoke-virtual {v0}, Landroid/support/v4/a/r;->o()V

    .line 2109
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2116
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 705
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v1, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Landroid/support/v4/a/r;->q:Landroid/support/v4/a/i;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 713
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 711
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a/r;->o:Landroid/support/v4/a/p;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
