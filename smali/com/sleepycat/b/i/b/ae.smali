.class public Lcom/sleepycat/b/i/b/ae;
.super Lcom/sleepycat/b/i/c/az;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/b/x;

.field private final b:Lcom/sleepycat/b/i/b/s;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sleepycat/b/i/b/ae;->a:Lcom/sleepycat/b/i/b/x;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/az;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 423
    iput-object p2, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    .line 424
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ae;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->f:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    invoke-interface {v1}, Lcom/sleepycat/b/i/b/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    if-ne p0, p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 449
    goto :goto_0

    .line 451
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b/ae;

    if-nez v2, :cond_3

    move v0, v1

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/ae;

    .line 455
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    if-nez v2, :cond_4

    .line 456
    iget-object v2, p1, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    if-eqz v2, :cond_0

    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 460
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Lcom/sleepycat/b/i/c/az;->hashCode()I

    move-result v0

    .line 437
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 440
    return v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ae;->b:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
