.class public final Lcom/sleepycat/b/l/aa;
.super Lcom/sleepycat/b/l/y;
.source "MapLN.java"


# instance fields
.field public final a:Lcom/sleepycat/b/c/i;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sleepycat/b/l/y;-><init>()V

    .line 126
    new-instance v0, Lcom/sleepycat/b/c/i;

    invoke-direct {v0}, Lcom/sleepycat/b/c/i;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-array v0, v1, [B

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/y;-><init>([B)V

    .line 117
    iput-object p1, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 118
    iput-boolean v1, p0, Lcom/sleepycat/b/l/aa;->b:Z

    .line 119
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 295
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final a(ZZ)Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 286
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/af;->c:Lcom/sleepycat/b/g/af;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/af;->d:Lcom/sleepycat/b/g/af;

    goto :goto_0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10025
    const-string v1, "                                                                                                                                "

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, "<deleted val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/b/l/aa;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/c/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/c/i;J)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 9133
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 217
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/c/ad;)V

    .line 218
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;)V

    .line 307
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;)V

    .line 308
    iget-boolean v0, p0, Lcom/sleepycat/b/l/aa;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    .line 309
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 319
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;I)V

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 321
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/l/aa;->b:Z

    .line 322
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/StringBuilder;Z)V

    .line 341
    return-void
.end method

.method final c(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 172
    .line 175
    iget-object v1, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 7133
    iget-object v2, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 176
    invoke-static {v2}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;

    move-result-object v1

    .line 7379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 7949
    iget-object v6, v2, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 179
    :try_start_0
    sget-object v4, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v2

    .line 8027
    iget-object v2, v2, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 187
    sget-object v3, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/aa;->n()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v7

    .line 8654
    :cond_0
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 209
    return v0

    .line 206
    :catchall_0
    move-exception v0

    .line 8654
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 206
    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    const-string v0, "<mapLN>"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "</mapLN>"

    return-object v0
.end method

.method final h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Lcom/sleepycat/b/l/aa;->b:Z

    .line 139
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 2485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/e;Z)V

    .line 140
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sleepycat/b/l/aa;->b:Z

    return v0
.end method

.method final n()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v2, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 3133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 3349
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->j:Z

    .line 156
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 4331
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    .line 156
    :goto_0
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 4485
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 5293
    iget-object v3, v2, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 6187
    iget-object v2, v2, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 5293
    if-eqz v2, :cond_1

    move v2, v0

    .line 156
    :goto_1
    if-nez v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v1

    .line 4331
    goto :goto_0

    :cond_1
    move v2, v1

    .line 5293
    goto :goto_1

    :cond_2
    move v0, v1

    .line 156
    goto :goto_2
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 9262
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 236
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/aa;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v_()J
    .locals 2

    .prologue
    .line 227
    sget v0, Lcom/sleepycat/b/c/ao;->s:I

    int-to-long v0, v0

    return-wide v0
.end method
