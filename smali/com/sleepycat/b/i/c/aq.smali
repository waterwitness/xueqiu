.class public Lcom/sleepycat/b/i/c/aq;
.super Lcom/sleepycat/b/i/c/az;
.source "TextProtocol.java"


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic c:Lcom/sleepycat/b/i/c/ap;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 645
    iput-object p1, p0, Lcom/sleepycat/b/i/c/aq;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/az;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 1721
    const-string v0, "\n"

    const-string v1, "  "

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 646
    iput-object v0, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    .line 647
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aq;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->p:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aq;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    if-ne p0, p1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 676
    goto :goto_0

    .line 678
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/c/aq;

    if-nez v2, :cond_3

    move v0, v1

    .line 679
    goto :goto_0

    .line 681
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/aq;

    .line 3711
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aq;->c:Lcom/sleepycat/b/i/c/ap;

    .line 4711
    iget-object v3, p1, Lcom/sleepycat/b/i/c/aq;->c:Lcom/sleepycat/b/i/c/ap;

    .line 682
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 683
    goto :goto_0

    .line 685
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 686
    iget-object v2, p1, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 687
    goto :goto_0

    .line 689
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 690
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 663
    invoke-super {p0}, Lcom/sleepycat/b/i/c/az;->hashCode()I

    move-result v0

    .line 664
    mul-int/lit8 v0, v0, 0x1f

    .line 2711
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aq;->c:Lcom/sleepycat/b/i/c/ap;

    .line 664
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 667
    return v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
