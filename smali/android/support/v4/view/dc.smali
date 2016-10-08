.class public final Landroid/support/v4/view/dc;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/dl;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Runnable;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 646
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 647
    new-instance v0, Landroid/support/v4/view/dk;

    invoke-direct {v0}, Landroid/support/v4/view/dk;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    .line 659
    :goto_0
    return-void

    .line 648
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 649
    new-instance v0, Landroid/support/v4/view/dj;

    invoke-direct {v0}, Landroid/support/v4/view/dj;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    goto :goto_0

    .line 650
    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 651
    new-instance v0, Landroid/support/v4/view/dh;

    invoke-direct {v0}, Landroid/support/v4/view/dh;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    goto :goto_0

    .line 652
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 653
    new-instance v0, Landroid/support/v4/view/di;

    invoke-direct {v0}, Landroid/support/v4/view/di;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    goto :goto_0

    .line 654
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 655
    new-instance v0, Landroid/support/v4/view/df;

    invoke-direct {v0}, Landroid/support/v4/view/df;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    goto :goto_0

    .line 657
    :cond_4
    new-instance v0, Landroid/support/v4/view/dd;

    invoke-direct {v0}, Landroid/support/v4/view/dd;-><init>()V

    sput-object v0, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Landroid/support/v4/view/dc;->c:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Landroid/support/v4/view/dc;->d:Ljava/lang/Runnable;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/dc;->e:I

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/dc;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/dc;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/support/v4/view/dc;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/view/dc;)I
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/dc;->e:I

    return v0
.end method

.method static synthetic d(Landroid/support/v4/view/dc;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Landroid/support/v4/view/dc;->e:I

    return v0
.end method


# virtual methods
.method public final a(F)Landroid/support/v4/view/dc;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 692
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dl;->a(Landroid/support/v4/view/dc;Landroid/view/View;F)V

    .line 694
    :cond_0
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/view/dc;
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, v0, p1, p2}, Landroid/support/v4/view/dl;->a(Landroid/view/View;J)V

    .line 677
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/do;)Landroid/support/v4/view/dc;
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1315
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dl;->a(Landroid/support/v4/view/dc;Landroid/view/View;Landroid/support/v4/view/do;)V

    .line 1317
    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1049
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/dl;->a(Landroid/support/v4/view/dc;Landroid/view/View;)V

    .line 1051
    :cond_0
    return-void
.end method

.method public final b(F)Landroid/support/v4/view/dc;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 726
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dl;->b(Landroid/support/v4/view/dc;Landroid/view/View;F)V

    .line 728
    :cond_0
    return-object p0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1235
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/dl;->b(Landroid/support/v4/view/dc;Landroid/view/View;)V

    .line 1237
    :cond_0
    return-void
.end method

.method public final c(F)Landroid/support/v4/view/dc;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/view/dc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 743
    sget-object v1, Landroid/support/v4/view/dc;->a:Landroid/support/v4/view/dl;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/dl;->c(Landroid/support/v4/view/dc;Landroid/view/View;F)V

    .line 745
    :cond_0
    return-object p0
.end method
