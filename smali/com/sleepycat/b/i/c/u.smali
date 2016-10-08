.class public final Lcom/sleepycat/b/i/c/u;
.super Ljava/lang/Object;
.source "RepGroupImpl.java"


# instance fields
.field public final a:Lcom/sleepycat/b/p/au;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/au;J)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 785
    iput-wide p2, p0, Lcom/sleepycat/b/i/c/u;->b:J

    .line 786
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 801
    if-ne p0, p1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v0

    .line 804
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 805
    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 808
    goto :goto_0

    .line 810
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/u;

    .line 811
    iget-object v2, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    if-nez v2, :cond_4

    .line 812
    iget-object v2, p1, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    if-eqz v2, :cond_5

    move v0, v1

    .line 813
    goto :goto_0

    .line 815
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 816
    goto :goto_0

    .line 818
    :cond_5
    iget-wide v2, p0, Lcom/sleepycat/b/i/c/u;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/i/c/u;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 819
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 794
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/u;->b:J

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/u;->b:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 796
    return v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 834
    const-string v0, "LocalCBVLSN:%,d at:%tc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v4, v3, Lcom/sleepycat/b/p/au;->c:J

    .line 834
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/u;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
