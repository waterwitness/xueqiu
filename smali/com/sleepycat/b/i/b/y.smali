.class public Lcom/sleepycat/b/i/b/y;
.super Lcom/sleepycat/b/i/b/ad;
.source "Protocol.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/b/ai;

.field final synthetic b:Lcom/sleepycat/b/i/b/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/sleepycat/b/i/b/y;->b:Lcom/sleepycat/b/i/b/x;

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/b/ad;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;)V

    .line 570
    iput-object p3, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    .line 571
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sleepycat/b/i/b/y;->b:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->b:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/b/ad;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    invoke-interface {v1}, Lcom/sleepycat/b/i/b/ai;->b()Ljava/lang/String;

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

    .line 590
    if-ne p0, p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/b/ad;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 594
    goto :goto_0

    .line 596
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b/y;

    if-nez v2, :cond_3

    move v0, v1

    .line 597
    goto :goto_0

    .line 599
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/y;

    .line 600
    iget-object v2, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_4

    .line 601
    iget-object v2, p1, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    if-eqz v2, :cond_0

    move v0, v1

    .line 602
    goto :goto_0

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Lcom/sleepycat/b/i/b/ad;->hashCode()I

    move-result v0

    .line 584
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 585
    return v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
