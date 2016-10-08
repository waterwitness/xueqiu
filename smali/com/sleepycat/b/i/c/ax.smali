.class public Lcom/sleepycat/b/i/c/ax;
.super Lcom/sleepycat/b/i/c/az;
.source "TextProtocol.java"


# instance fields
.field public final a:Ljava/lang/String;

.field final b:Lcom/sleepycat/b/i/c/at;

.field final synthetic c:Lcom/sleepycat/b/i/c/ap;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/ar;)V
    .locals 2

    .prologue
    .line 547
    .line 2064
    iget-object v0, p2, Lcom/sleepycat/b/i/c/ar;->a:Lcom/sleepycat/b/i/c/at;

    .line 547
    invoke-virtual {p2}, Lcom/sleepycat/b/i/c/ar;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/i/c/ax;-><init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/at;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/at;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ax;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/az;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 552
    iput-object p3, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Lcom/sleepycat/b/i/c/ax;->b:Lcom/sleepycat/b/i/c/at;

    .line 554
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ax;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->n:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ax;->b:Lcom/sleepycat/b/i/c/at;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/at;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

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

    .line 575
    if-ne p0, p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 578
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/c/ax;

    if-nez v2, :cond_3

    move v0, v1

    .line 582
    goto :goto_0

    .line 584
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/ax;

    .line 585
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 586
    iget-object v2, p1, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 590
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 567
    invoke-super {p0}, Lcom/sleepycat/b/i/c/az;->hashCode()I

    move-result v0

    .line 568
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 570
    return v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
