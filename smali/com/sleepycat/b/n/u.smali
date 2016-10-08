.class public Lcom/sleepycat/b/n/u;
.super Ljava/lang/Object;
.source "RollbackEnd.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public a:J

.field public b:J

.field private c:Lcom/sleepycat/b/p/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/sleepycat/b/n/u;->a:J

    .line 32
    iput-wide p3, p0, Lcom/sleepycat/b/n/u;->b:J

    .line 33
    new-instance v0, Lcom/sleepycat/b/p/aq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sleepycat/b/n/u;->a:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/u;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 85
    const-string v0, " matchpointLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v0, p0, Lcom/sleepycat/b/n/u;->a:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, " rollbackStartLSN="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v0, p0, Lcom/sleepycat/b/n/u;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sleepycat/b/n/u;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 65
    iget-wide v0, p0, Lcom/sleepycat/b/n/u;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 66
    iget-object v0, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/u;->a:J

    .line 75
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/u;->b:J

    .line 77
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    .line 78
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    instance-of v1, p1, Lcom/sleepycat/b/n/u;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    check-cast p1, Lcom/sleepycat/b/n/u;

    .line 109
    iget-wide v2, p0, Lcom/sleepycat/b/n/u;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/n/u;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/n/u;->a:J

    iget-wide v4, p1, Lcom/sleepycat/b/n/u;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    iget-object v2, p1, Lcom/sleepycat/b/n/u;->c:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/aq;->a(Lcom/sleepycat/b/p/aq;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/n/u;->a(Ljava/lang/StringBuilder;Z)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
