.class final Lcom/sleepycat/b/c/k;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"

# interfaces
.implements Lcom/sleepycat/b/c/bc;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/a/s;

.field private final c:Lcom/sleepycat/b/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1716
    const-class v0, Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/a/s;)V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    iput-object p1, p0, Lcom/sleepycat/b/c/k;->c:Lcom/sleepycat/b/c/i;

    .line 1724
    iput-object p2, p0, Lcom/sleepycat/b/c/k;->b:Lcom/sleepycat/b/a/s;

    .line 1725
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 1762
    return-void
.end method

.method public final a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V
    .locals 7

    .prologue
    .line 1731
    sget-boolean v0, Lcom/sleepycat/b/c/k;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1738
    :cond_0
    const/4 v5, 0x0

    .line 1739
    if-eqz p5, :cond_1

    instance-of v0, p4, Lcom/sleepycat/b/l/y;

    if-eqz v0, :cond_1

    .line 1740
    check-cast p4, Lcom/sleepycat/b/l/y;

    .line 2723
    iget v0, p4, Lcom/sleepycat/b/l/y;->g:I

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/c/k;->b:Lcom/sleepycat/b/a/s;

    iget-object v6, p0, Lcom/sleepycat/b/c/k;->c:Lcom/sleepycat/b/c/i;

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 1746
    return-void
.end method

.method public final a(JLcom/sleepycat/b/l/y;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1751
    sget-boolean v0, Lcom/sleepycat/b/c/k;->a:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1757
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/c/k;->b:Lcom/sleepycat/b/a/s;

    .line 3657
    const/4 v0, 0x1

    invoke-virtual {p3, v0, v5}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v4

    .line 1757
    iget-object v6, p0, Lcom/sleepycat/b/c/k;->c:Lcom/sleepycat/b/c/i;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 1759
    return-void
.end method
