.class final Lc/o;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lc/f;


# instance fields
.field public final a:Lc/d;

.field public final b:Lc/s;

.field c:Z


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc/d;

    invoke-direct {v0}, Lc/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/o;-><init>(Lc/s;Lc/d;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lc/s;Lc/d;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p2, p0, Lc/o;->a:Lc/d;

    .line 33
    iput-object p1, p0, Lc/o;->b:Lc/s;

    .line 34
    return-void
.end method

.method private b(J)Z
    .locals 5

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-boolean v0, p0, Lc/o;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 71
    iget-object v0, p0, Lc/o;->b:Lc/s;

    iget-object v1, p0, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(B)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    .line 289
    .line 3293
    iget-boolean v4, p0, Lc/o;->c:Z

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3294
    :cond_0
    iget-object v4, p0, Lc/o;->a:Lc/d;

    iget-wide v4, v4, Lc/d;->b:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 3295
    iget-object v4, p0, Lc/o;->b:Lc/s;

    iget-object v5, p0, Lc/o;->a:Lc/d;

    invoke-interface {v4, v5, v6, v7}, Lc/s;->read(Lc/d;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 3300
    :cond_1
    :goto_0
    return-wide v0

    .line 3298
    :cond_2
    iget-object v4, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v4, p1, v0, v1}, Lc/d;->a(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3299
    iget-object v0, p0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    .line 3300
    iget-object v4, p0, Lc/o;->b:Lc/s;

    iget-object v5, p0, Lc/o;->a:Lc/d;

    invoke-interface {v4, v5, v6, v7}, Lc/s;->read(Lc/d;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    move-wide v0, v2

    goto :goto_0
.end method

.method public final a()Lc/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc/o;->a:Lc/d;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lc/o;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public final c(J)Lc/g;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lc/o;->a(J)V

    .line 88
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0, p1, p2}, Lc/d;->c(J)Lc/g;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lc/o;->c:Z

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/o;->c:Z

    .line 363
    iget-object v0, p0, Lc/o;->b:Lc/s;

    invoke-interface {v0}, Lc/s;->close()V

    .line 364
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->p()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lc/o;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/o;->b:Lc/s;

    iget-object v1, p0, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lc/o$1;

    invoke-direct {v0, p0}, Lc/o$1;-><init>(Lc/o;)V

    return-object v0
.end method

.method public final e(J)[B
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lc/o;->a(J)V

    .line 98
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0, p1, p2}, Lc/d;->e(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final f()B
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc/o;->a(J)V

    .line 78
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->f()B

    move-result v0

    return v0
.end method

.method public final f(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 277
    iget-boolean v0, p0, Lc/o;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lc/o;->a:Lc/d;

    .line 3059
    iget-wide v0, v0, Lc/d;->b:J

    .line 282
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v2, v0, v1}, Lc/d;->f(J)V

    .line 284
    sub-long/2addr p1, v0

    .line 278
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 279
    iget-object v0, p0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/o;->b:Lc/s;

    iget-object v1, p0, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x800

    invoke-interface {v0, v1, v2, v3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 286
    :cond_2
    return-void
.end method

.method public final g()S
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc/o;->a(J)V

    .line 208
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->g()S

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 217
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lc/o;->a(J)V

    .line 218
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->h()I

    move-result v0

    return v0
.end method

.method public final i()S
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lc/o;->a(J)V

    .line 213
    iget-object v0, p0, Lc/o;->a:Lc/d;

    .line 2398
    invoke-virtual {v0}, Lc/d;->g()S

    move-result v0

    invoke-static {v0}, Lc/u;->a(S)S

    move-result v0

    .line 213
    return v0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 222
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lc/o;->a(J)V

    .line 223
    iget-object v0, p0, Lc/o;->a:Lc/d;

    .line 2402
    invoke-virtual {v0}, Lc/d;->h()I

    move-result v0

    invoke-static {v0}, Lc/u;->a(I)I

    move-result v0

    .line 223
    return v0
.end method

.method public final k()J
    .locals 6

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lc/o;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lc/o;->a:Lc/d;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lc/d;->b(J)B

    move-result v1

    .line 243
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_0

    .line 248
    :cond_2
    if-nez v0, :cond_3

    .line 249
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/o;->a:Lc/d;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lc/d;->b(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 6

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lc/o;->b(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    iget-object v1, p0, Lc/o;->a:Lc/d;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lc/d;->b(J)B

    move-result v1

    .line 263
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x66

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x46

    if-gt v1, v2, :cond_3

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 267
    goto :goto_0

    .line 268
    :cond_3
    if-nez v0, :cond_4

    .line 269
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/o;->a:Lc/d;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lc/d;->b(J)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_4
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 8

    .prologue
    .line 196
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lc/o;->a(B)J

    move-result-wide v0

    .line 197
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 198
    new-instance v1, Lc/d;

    invoke-direct {v1}, Lc/d;-><init>()V

    .line 199
    iget-object v0, p0, Lc/o;->a:Lc/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lc/o;->a:Lc/d;

    .line 1059
    iget-wide v6, v6, Lc/d;->b:J

    .line 199
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lc/d;->a(Lc/d;JJ)Lc/d;

    .line 200
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/o;->a:Lc/d;

    .line 2059
    iget-wide v4, v3, Lc/d;->b:J

    .line 200
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lc/d;->m()Lc/g;

    move-result-object v1

    invoke-virtual {v1}, Lc/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v2, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v2, v0, v1}, Lc/d;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()[B
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lc/o;->a:Lc/d;

    iget-object v1, p0, Lc/o;->b:Lc/s;

    invoke-virtual {v0, v1}, Lc/d;->a(Lc/s;)J

    .line 93
    iget-object v0, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v0}, Lc/d;->o()[B

    move-result-object v0

    return-object v0
.end method

.method public final read(Lc/d;J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 45
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iget-boolean v2, p0, Lc/o;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iget-object v2, p0, Lc/o;->a:Lc/d;

    iget-wide v2, v2, Lc/d;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 50
    iget-object v2, p0, Lc/o;->b:Lc/s;

    iget-object v3, p0, Lc/o;->a:Lc/d;

    const-wide/16 v4, 0x800

    invoke-interface {v2, v3, v4, v5}, Lc/s;->read(Lc/d;J)J

    move-result-wide v2

    .line 51
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 55
    :goto_0
    return-wide v0

    .line 54
    :cond_3
    iget-object v0, p0, Lc/o;->a:Lc/d;

    iget-wide v0, v0, Lc/d;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 55
    iget-object v2, p0, Lc/o;->a:Lc/d;

    invoke-virtual {v2, p1, v0, v1}, Lc/d;->read(Lc/d;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final timeout()Lc/t;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lc/o;->b:Lc/s;

    invoke-interface {v0}, Lc/s;->timeout()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/o;->b:Lc/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
