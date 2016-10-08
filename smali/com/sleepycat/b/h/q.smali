.class final Lcom/sleepycat/b/h/q;
.super Lcom/sleepycat/b/h/s;
.source "RollbackTracker.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/sleepycat/b/h/p;

.field private final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sleepycat/b/h/r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/sleepycat/b/h/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    const-class v0, Lcom/sleepycat/b/h/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/h/p;)V
    .locals 1

    .prologue
    .line 564
    iput-object p1, p0, Lcom/sleepycat/b/h/q;->b:Lcom/sleepycat/b/h/p;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/h/s;-><init>(Lcom/sleepycat/b/h/p;)V

    .line 565
    invoke-static {p1}, Lcom/sleepycat/b/h/p;->d(Lcom/sleepycat/b/h/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->e:Ljava/util/Iterator;

    .line 566
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/r;

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    .line 568
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/r;->a()V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    goto :goto_0
.end method


# virtual methods
.method public final a(JJ)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    if-nez v0, :cond_0

    move v0, v1

    .line 615
    :goto_0
    return v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/r;->f(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/r;

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    .line 588
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/r;->a()V

    .line 596
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/h/q;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/b/h/r;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 590
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    move v0, v1

    .line 591
    goto :goto_0

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/r;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/r;->d(J)V

    .line 611
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->b(JJ)Lcom/sleepycat/b/h/r;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/q;->c:Lcom/sleepycat/b/h/r;

    .line 612
    iget-object v0, p0, Lcom/sleepycat/b/h/q;->c:Lcom/sleepycat/b/h/r;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 615
    goto :goto_0
.end method
