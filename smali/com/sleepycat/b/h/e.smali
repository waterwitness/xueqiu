.class public final Lcom/sleepycat/b/h/e;
.super Ljava/lang/Object;
.source "Checkpointer.java"


# instance fields
.field a:Lcom/sleepycat/b/c/h;

.field b:J

.field c:Z

.field d:[B


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/h;JZ[B)V
    .locals 0

    .prologue
    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1610
    iput-object p1, p0, Lcom/sleepycat/b/h/e;->a:Lcom/sleepycat/b/c/h;

    .line 1611
    iput-wide p2, p0, Lcom/sleepycat/b/h/e;->b:J

    .line 1612
    iput-boolean p4, p0, Lcom/sleepycat/b/h/e;->c:Z

    .line 1613
    iput-object p5, p0, Lcom/sleepycat/b/h/e;->d:[B

    .line 1614
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1618
    instance-of v1, p1, Lcom/sleepycat/b/h/e;

    if-nez v1, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return v0

    .line 1622
    :cond_1
    check-cast p1, Lcom/sleepycat/b/h/e;

    .line 1623
    iget-wide v2, p0, Lcom/sleepycat/b/h/e;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/h/e;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1628
    iget-wide v0, p0, Lcom/sleepycat/b/h/e;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1634
    const-string v1, "db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/h/e;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1635
    const-string v1, " nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1636
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
