.class final Lcom/sleepycat/b/h/t;
.super Lcom/sleepycat/b/h/s;
.source "RollbackTracker.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/sleepycat/b/h/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    const-class v0, Lcom/sleepycat/b/h/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/t;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/h/p;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sleepycat/b/h/t;->b:Lcom/sleepycat/b/h/p;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/h/s;-><init>(Lcom/sleepycat/b/h/p;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Lcom/sleepycat/b/h/t;->b:Lcom/sleepycat/b/h/p;

    invoke-static {v1}, Lcom/sleepycat/b/h/p;->c(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/h/r;

    move-result-object v1

    if-nez v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    sget-boolean v1, Lcom/sleepycat/b/h/t;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/b/h/t;->b:Lcom/sleepycat/b/h/p;

    invoke-static {v1}, Lcom/sleepycat/b/h/p;->c(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/h/r;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/b/h/t;->b:Lcom/sleepycat/b/h/p;

    invoke-static {v1}, Lcom/sleepycat/b/h/p;->c(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/h/r;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/b/h/r;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/h/t;->b:Lcom/sleepycat/b/h/p;

    invoke-static {v1}, Lcom/sleepycat/b/h/p;->c(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/h/r;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/b/h/r;->b(J)Lcom/sleepycat/b/h/r;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/h/t;->c:Lcom/sleepycat/b/h/r;

    .line 540
    iget-object v1, p0, Lcom/sleepycat/b/h/t;->c:Lcom/sleepycat/b/h/r;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/h/t;->c:Lcom/sleepycat/b/h/r;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const/4 v0, 0x1

    goto :goto_0
.end method
