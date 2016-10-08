.class public final Lcom/sleepycat/b/d;
.super Ljava/lang/Object;
.source "CommitToken.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v0, "The UUID must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 47
    :cond_0
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 47
    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, "The vlsn must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    .line 53
    iput-wide p2, p0, Lcom/sleepycat/b/d;->b:J

    .line 54
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 26
    check-cast p1, Lcom/sleepycat/b/d;

    .line 1111
    iget-object v0, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    iget-object v1, p1, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Comparisons across environments are not meaningful. This environment: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " other environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2057
    iget-object v2, p1, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    .line 1112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/d;->b:J

    iget-wide v2, p1, Lcom/sleepycat/b/d;->b:J

    sub-long/2addr v0, v2

    .line 1118
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 26
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/d;

    if-nez v2, :cond_3

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    check-cast p1, Lcom/sleepycat/b/d;

    .line 86
    iget-object v2, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    if-nez v2, :cond_4

    .line 87
    iget-object v2, p1, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    if-eqz v2, :cond_5

    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    iget-object v3, p1, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iget-wide v2, p0, Lcom/sleepycat/b/d;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/d;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/sleepycat/b/d;->b:J

    iget-wide v4, p0, Lcom/sleepycat/b/d;->b:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 71
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UUID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/d;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/d;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
