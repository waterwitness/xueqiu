.class abstract Lcom/sleepycat/b/i/e/bb;
.super Lcom/sleepycat/b/g/s;
.source "VLSNReader.java"


# instance fields
.field final d:Lcom/sleepycat/b/i/i/f;

.field t:Lcom/sleepycat/b/p/au;

.field u:Lcom/sleepycat/b/i/e/s;

.field v:J

.field w:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;ZJIJ)V
    .locals 12

    .prologue
    .line 71
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p6

    move v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v8, p4

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 79
    iput-object p2, p0, Lcom/sleepycat/b/i/e/bb;->d:Lcom/sleepycat/b/i/i/f;

    .line 80
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/bb;->t:Lcom/sleepycat/b/p/au;

    .line 81
    return-void
.end method


# virtual methods
.method protected a(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/sleepycat/b/i/e/bb;->k:Lcom/sleepycat/b/g/ae;

    .line 2291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 134
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 135
    new-instance v1, Lcom/sleepycat/b/i/e/s;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/bb;->e:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/bb;->k:Lcom/sleepycat/b/g/ae;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/i/e/s;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/e/bb;->u:Lcom/sleepycat/b/i/e/s;

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/bb;->k:Lcom/sleepycat/b/g/ae;

    .line 3291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 138
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method final b(J)V
    .locals 9

    .prologue
    .line 86
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/bb;->i:Z

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/bb;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feeder forward scanning should not be repositioned to  a position earlier than the current position. Current lsn = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/bb;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reposition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/bb;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feeder backward scanning should not be repositioned to  a position later than the current position. Current lsn = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/bb;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reposition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 111
    :cond_2
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 112
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    .line 114
    iget-object v0, p0, Lcom/sleepycat/b/i/e/bb;->g:Lcom/sleepycat/b/g/u;

    .line 2025
    iget-wide v6, v0, Lcom/sleepycat/b/g/u;->a:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_3

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/g/u;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 114
    :goto_1
    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/sleepycat/b/i/e/bb;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/g/u;->c(J)V

    .line 120
    :goto_2
    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/bb;->i:Z

    if-eqz v0, :cond_5

    .line 121
    iput-wide v4, p0, Lcom/sleepycat/b/i/e/bb;->n:J

    .line 125
    :goto_3
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/bb;->w:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/bb;->w:J

    goto/16 :goto_0

    .line 2025
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/e/bb;->g:Lcom/sleepycat/b/g/u;

    iget-boolean v8, p0, Lcom/sleepycat/b/i/e/bb;->i:Z

    move-wide v6, v4

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/b/g/u;->a(JJJZ)V

    goto :goto_2

    .line 123
    :cond_5
    iput-wide v4, p0, Lcom/sleepycat/b/i/e/bb;->l:J

    goto :goto_3
.end method
