.class public final Lcom/sleepycat/b/l/d;
.super Ljava/lang/Object;
.source "BINReference.java"


# instance fields
.field protected a:[B

.field public b:J

.field public c:Lcom/sleepycat/b/c/h;


# direct methods
.method constructor <init>(JLcom/sleepycat/b/c/h;[B)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/sleepycat/b/l/d;->b:J

    .line 23
    iput-object p3, p0, Lcom/sleepycat/b/l/d;->c:Lcom/sleepycat/b/c/h;

    .line 24
    iput-object p4, p0, Lcom/sleepycat/b/l/d;->a:[B

    .line 25
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sleepycat/b/l/d;->a:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/b/l/d;

    if-nez v2, :cond_2

    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/sleepycat/b/l/d;

    iget-wide v2, p1, Lcom/sleepycat/b/l/d;->b:J

    iget-wide v4, p0, Lcom/sleepycat/b/l/d;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sleepycat/b/l/d;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/l/d;->a:[B

    invoke-static {v1}, Lcom/sleepycat/b/l/w;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nodeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/l/d;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/l/d;->c:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
