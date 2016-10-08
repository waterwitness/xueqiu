.class final Lcom/sleepycat/b/a/ab;
.super Ljava/lang/Object;
.source "UtilizationCalculator.java"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput p1, p0, Lcom/sleepycat/b/a/ab;->a:I

    .line 840
    iput p2, p0, Lcom/sleepycat/b/a/ab;->b:I

    .line 841
    iput p3, p0, Lcom/sleepycat/b/a/ab;->c:I

    .line 842
    iput p4, p0, Lcom/sleepycat/b/a/ab;->d:I

    .line 843
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 847
    instance-of v1, p1, Lcom/sleepycat/b/a/ab;

    if-nez v1, :cond_1

    .line 851
    :cond_0
    :goto_0
    return v0

    .line 850
    :cond_1
    check-cast p1, Lcom/sleepycat/b/a/ab;

    .line 851
    iget v1, p0, Lcom/sleepycat/b/a/ab;->a:I

    iget v2, p1, Lcom/sleepycat/b/a/ab;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->b:I

    iget v2, p1, Lcom/sleepycat/b/a/ab;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->c:I

    iget v2, p1, Lcom/sleepycat/b/a/ab;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->d:I

    iget v2, p1, Lcom/sleepycat/b/a/ab;->d:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lcom/sleepycat/b/a/ab;->a:I

    iget v1, p0, Lcom/sleepycat/b/a/ab;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/ab;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/ab;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sleepycat/b/a/ab;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " estSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " estCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/a/ab;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
