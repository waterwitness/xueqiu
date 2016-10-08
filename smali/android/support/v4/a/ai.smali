.class final Landroid/support/v4/a/ai;
.super Landroid/support/v4/a/ag;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/e/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/o",
            "<",
            "Landroid/support/v4/a/aj;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/e/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/o",
            "<",
            "Landroid/support/v4/a/aj;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:Landroid/support/v4/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/a/ai;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/a/p;Z)V
    .locals 1

    .prologue
    .line 526
    invoke-direct {p0}, Landroid/support/v4/a/ag;-><init>()V

    .line 197
    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0}, Landroid/support/v4/e/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    .line 203
    new-instance v0, Landroid/support/v4/e/o;

    invoke-direct {v0}, Landroid/support/v4/e/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    .line 527
    iput-object p1, p0, Landroid/support/v4/a/ai;->d:Ljava/lang/String;

    .line 528
    iput-object p2, p0, Landroid/support/v4/a/ai;->h:Landroid/support/v4/a/p;

    .line 529
    iput-boolean p3, p0, Landroid/support/v4/a/ai;->e:Z

    .line 530
    return-void
.end method

.method static synthetic a(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/a/ai;->h:Landroid/support/v4/a/p;

    return-object v0
.end method

.method private b(Landroid/support/v4/a/ah;)Landroid/support/v4/a/aj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/ah",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/a/aj;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 547
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/a/ai;->g:Z

    .line 1538
    new-instance v0, Landroid/support/v4/a/aj;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/a/aj;-><init>(Landroid/support/v4/a/ai;Landroid/support/v4/a/ah;)V

    .line 1539
    invoke-interface {p1}, Landroid/support/v4/a/ah;->a()Landroid/support/v4/content/n;

    move-result-object v1

    .line 1540
    iput-object v1, v0, Landroid/support/v4/a/aj;->d:Landroid/support/v4/content/n;

    .line 549
    invoke-virtual {p0, v0}, Landroid/support/v4/a/ai;->a(Landroid/support/v4/a/aj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    iput-boolean v2, p0, Landroid/support/v4/a/ai;->g:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/a/ai;->g:Z

    throw v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/a/ah;)Landroid/support/v4/content/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/a/ah",
            "<TD;>;)",
            "Landroid/support/v4/content/n",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 592
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->g:Z

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 598
    sget-boolean v1, Landroid/support/v4/a/ai;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initLoader in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    if-nez v0, :cond_4

    .line 602
    invoke-direct {p0, p1}, Landroid/support/v4/a/ai;->b(Landroid/support/v4/a/ah;)Landroid/support/v4/a/aj;

    move-result-object v0

    .line 603
    sget-boolean v1, Landroid/support/v4/a/ai;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Created new loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/a/aj;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/a/ai;->e:Z

    if-eqz v1, :cond_3

    .line 611
    iget-object v1, v0, Landroid/support/v4/a/aj;->d:Landroid/support/v4/content/n;

    iget-object v2, v0, Landroid/support/v4/a/aj;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/aj;->b(Landroid/support/v4/content/n;Ljava/lang/Object;)V

    .line 614
    :cond_3
    iget-object v0, v0, Landroid/support/v4/a/aj;->d:Landroid/support/v4/content/n;

    return-object v0

    .line 605
    :cond_4
    sget-boolean v1, Landroid/support/v4/a/ai;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Re-using existing loader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_5
    iput-object p1, v0, Landroid/support/v4/a/aj;->c:Landroid/support/v4/a/ah;

    goto :goto_0
.end method

.method final a(Landroid/support/v4/a/aj;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    iget v1, p1, Landroid/support/v4/a/aj;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/e/o;->a(ILjava/lang/Object;)V

    .line 558
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/support/v4/a/aj;->a()V

    .line 564
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 852
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 853
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 855
    :goto_0
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 856
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 857
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v4, v1}, Landroid/support/v4/e/o;->b(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 858
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/a/aj;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 855
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 863
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    :goto_1
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 866
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 867
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v3, v2}, Landroid/support/v4/e/o;->b(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 868
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/a/aj;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 872
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 876
    .line 877
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 878
    :goto_0
    if-ge v2, v4, :cond_1

    .line 879
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 880
    iget-boolean v5, v0, Landroid/support/v4/a/aj;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/a/aj;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 878
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 880
    goto :goto_1

    .line 882
    :cond_1
    return v3
.end method

.method final b()V
    .locals 4

    .prologue
    .line 752
    sget-boolean v0, Landroid/support/v4/a/ai;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    if-eqz v0, :cond_2

    .line 754
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 756
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    :cond_1
    return-void

    .line 760
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    .line 764
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 765
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->a()V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 770
    sget-boolean v0, Landroid/support/v4/a/ai;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    if-nez v0, :cond_1

    .line 772
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 774
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 779
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->b()V

    .line 778
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 781
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    goto :goto_0
.end method

.method final d()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 785
    sget-boolean v0, Landroid/support/v4/a/ai;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->e:Z

    if-nez v0, :cond_2

    .line 787
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 789
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    :cond_1
    return-void

    .line 793
    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/a/ai;->f:Z

    .line 794
    iput-boolean v5, p0, Landroid/support/v4/a/ai;->e:Z

    .line 795
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 796
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 2278
    sget-boolean v2, Landroid/support/v4/a/ai;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    :cond_3
    iput-boolean v6, v0, Landroid/support/v4/a/aj;->i:Z

    .line 2280
    iget-boolean v2, v0, Landroid/support/v4/a/aj;->h:Z

    iput-boolean v2, v0, Landroid/support/v4/a/aj;->j:Z

    .line 2281
    iput-boolean v5, v0, Landroid/support/v4/a/aj;->h:Z

    .line 2282
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/a/aj;->c:Landroid/support/v4/a/ah;

    .line 795
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final e()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 813
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/a/aj;->k:Z

    .line 812
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method final f()V
    .locals 4

    .prologue
    .line 818
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 819
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    .line 2311
    iget-boolean v2, v0, Landroid/support/v4/a/aj;->h:Z

    if-eqz v2, :cond_0

    .line 2312
    iget-boolean v2, v0, Landroid/support/v4/a/aj;->k:Z

    if-eqz v2, :cond_0

    .line 2313
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/a/aj;->k:Z

    .line 2314
    iget-boolean v2, v0, Landroid/support/v4/a/aj;->e:Z

    if-eqz v2, :cond_0

    .line 2315
    iget-object v2, v0, Landroid/support/v4/a/aj;->d:Landroid/support/v4/content/n;

    iget-object v3, v0, Landroid/support/v4/a/aj;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/a/aj;->b(Landroid/support/v4/content/n;Ljava/lang/Object;)V

    .line 818
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 821
    :cond_1
    return-void
.end method

.method final g()V
    .locals 3

    .prologue
    .line 824
    iget-boolean v0, p0, Landroid/support/v4/a/ai;->f:Z

    if-nez v0, :cond_2

    .line 825
    sget-boolean v0, Landroid/support/v4/a/ai;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 827
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->c()V

    .line 826
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/ai;->b:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()V

    .line 832
    :cond_2
    sget-boolean v0, Landroid/support/v4/a/ai;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 834
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/aj;

    invoke-virtual {v0}, Landroid/support/v4/a/aj;->c()V

    .line 833
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 836
    :cond_4
    iget-object v0, p0, Landroid/support/v4/a/ai;->c:Landroid/support/v4/e/o;

    invoke-virtual {v0}, Landroid/support/v4/e/o;->b()V

    .line 837
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 842
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v1, p0, Landroid/support/v4/a/ai;->h:Landroid/support/v4/a/p;

    invoke-static {v1, v0}, Landroid/support/v4/e/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 846
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
