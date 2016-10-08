.class public final Lcom/sleepycat/b/i/i/h;
.super Lcom/sleepycat/b/i/i/j;
.source "VLSNIndex.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2196
    const-class v0, Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/h;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/i/f;)V
    .locals 0

    .prologue
    .line 2200
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/j;-><init>(Lcom/sleepycat/b/i/i/f;)V

    .line 2201
    return-void
.end method

.method private a(Lcom/sleepycat/b/p/au;)J
    .locals 4

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/sleepycat/b/i/i/h;->c:Lcom/sleepycat/b/i/i/f;

    invoke-static {v0, p1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/i/i/f;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 2323
    sget-boolean v1, Lcom/sleepycat/b/i/i/h;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "target="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "prevBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " currentBucket="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2325
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->g()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;Z)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 2254
    sget-boolean v2, Lcom/sleepycat/b/i/i/h;->a:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sleepycat/b/i/i/h;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startingLsns() called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sleepycat/b/i/i/h;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2256
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    .line 2262
    iget-object v3, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    if-eqz v3, :cond_3

    .line 2263
    iget-object v3, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v3, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2272
    iget-object v3, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v3, p1}, Lcom/sleepycat/b/i/i/c;->e(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2274
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/h;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    .line 2313
    :cond_1
    :goto_0
    return-wide v0

    .line 2279
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    .line 2287
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    if-nez v3, :cond_4

    .line 2288
    iget-object v3, p0, Lcom/sleepycat/b/i/i/h;->c:Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v3, p1, v2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    .line 2295
    iget-object v2, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v2, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2296
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/h;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    goto :goto_0

    .line 2300
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/i/i/h;->a:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vlsn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentBucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2303
    :cond_5
    if-eqz p2, :cond_6

    .line 2310
    iget-object v0, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->b(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    goto :goto_0

    .line 2313
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/i/h;->b:Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->c(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    goto :goto_0
.end method
