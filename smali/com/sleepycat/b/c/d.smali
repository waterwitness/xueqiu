.class public final Lcom/sleepycat/b/c/d;
.super Ljava/lang/Object;
.source "CursorImpl.java"


# instance fields
.field a:J

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/sleepycat/b/n/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/sleepycat/b/c/d;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/c/d;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/sleepycat/b/n/am;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2411
    invoke-virtual {p0}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2412
    :goto_0
    const/4 v2, 0x0

    .line 2413
    iget-object v3, p0, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    if-eqz v3, :cond_2

    .line 2414
    iget-object v2, p0, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    iget-wide v4, p0, Lcom/sleepycat/b/c/d;->a:J

    .line 3031
    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/sleepycat/b/n/m;->a(JZZ)V

    .line 2415
    iget-object v1, p0, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 3079
    iget-object v1, v1, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 2417
    :goto_1
    if-nez v1, :cond_1

    .line 2418
    new-instance v1, Lcom/sleepycat/b/n/am;

    invoke-direct {v1}, Lcom/sleepycat/b/n/am;-><init>()V

    .line 2419
    iget-wide v2, p0, Lcom/sleepycat/b/c/d;->a:J

    .line 4077
    iput-wide v2, v1, Lcom/sleepycat/b/n/am;->a:J

    .line 5069
    iput-boolean v0, v1, Lcom/sleepycat/b/n/am;->b:Z

    move-object v0, v1

    .line 2422
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 2411
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method
