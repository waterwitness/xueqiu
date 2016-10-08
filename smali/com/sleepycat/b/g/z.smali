.class public final Lcom/sleepycat/b/g/z;
.super Lcom/sleepycat/b/g/s;
.source "LastFileReader.java"


# instance fields
.field public a:J

.field public b:Lcom/sleepycat/b/g/af;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/g/af;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;I)V
    .locals 12

    .prologue
    .line 61
    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 3111
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/b/g/z;->h:Z

    .line 3112
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 3118
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    .line 3506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/m;->a(Z)Ljava/lang/Long;

    move-result-object v0

    .line 3122
    const/4 v1, 0x0

    .line 3125
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    iget-boolean v2, p0, Lcom/sleepycat/b/g/z;->h:Z

    if-nez v2, :cond_4

    .line 3126
    if-nez v0, :cond_1

    .line 3127
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sleepycat/b/g/z;->h:Z
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lcom/sleepycat/b/aa;

    sget-object v2, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, p1, v2, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 3131
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/g/u;->a(J)V

    .line 3132
    iget-object v2, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;

    move-result-object v1

    .line 4044
    iget-object v2, v1, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 3143
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 3144
    invoke-static {}, Lcom/sleepycat/b/g/m;->h()I

    const-wide/16 v4, 0x26

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 3145
    iget-object v2, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-virtual {v2, v4, v5, v0}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v0

    .line 3147
    if-eqz v0, :cond_2

    .line 3148
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/b/g/c; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3149
    const/4 v1, 0x0

    .line 3159
    :cond_2
    if-eqz v1, :cond_0

    .line 3160
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3163
    :catch_1
    move-exception v0

    .line 3164
    :try_start_3
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Lcom/sleepycat/b/g/c; {:try_start_3 .. :try_end_3} :catch_0

    .line 3152
    :catch_2
    move-exception v0

    .line 3153
    :try_start_4
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/z;->a(Ljava/lang/Exception;)Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 3154
    const/4 v1, 0x0

    .line 3159
    if-eqz v1, :cond_0

    .line 3160
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 3155
    :catch_3
    move-exception v0

    .line 3156
    :try_start_6
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/z;->a(Ljava/lang/Exception;)Ljava/lang/Long;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 3157
    const/4 v1, 0x0

    .line 3159
    if-eqz v1, :cond_0

    .line 3160
    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    goto :goto_0

    .line 3159
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 3160
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 3159
    :cond_3
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_7 .. :try_end_7} :catch_0

    .line 3170
    :cond_4
    const-wide/16 v0, 0x0

    :try_start_8
    iput-wide v0, p0, Lcom/sleepycat/b/g/z;->n:J
    :try_end_8
    .catch Lcom/sleepycat/b/g/c; {:try_start_8 .. :try_end_8} :catch_0

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/z;->c:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/z;->t:Ljava/util/Map;

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/z;->a:J

    .line 75
    iget-wide v0, p0, Lcom/sleepycat/b/g/z;->n:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/z;->d:J

    .line 76
    return-void
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 5014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 185
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/m;->b(J)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    .line 187
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Lcom/sleepycat/b/g/m;->h()I

    const-wide/16 v2, 0x26

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->f()V

    .line 192
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 6014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 192
    invoke-virtual {v0, v2, v3, v4}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    iget-object v2, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 7014
    iget-wide v2, v2, Lcom/sleepycat/b/g/u;->a:J

    .line 194
    const-string v4, ".bad"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/b/g/m;->b(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not rename file: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 8014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 204
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/b/n;

    if-eqz v0, :cond_1

    .line 205
    check-cast p1, Lcom/sleepycat/b/n;

    throw p1

    .line 207
    :cond_1
    instance-of v0, p1, Lcom/sleepycat/b/g/c;

    if-eqz v0, :cond_2

    .line 208
    check-cast p1, Lcom/sleepycat/b/g/c;

    throw p1

    .line 210
    :cond_2
    invoke-static {p1}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 201
    :cond_3
    return-object v0
.end method

.method private j()Z
    .locals 8

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->k:Lcom/sleepycat/b/g/ae;

    .line 15291
    iget v0, v0, Lcom/sleepycat/b/g/ae;->d:I

    .line 368
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/z;->b(I)V

    .line 374
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/b/g/s;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget-object v0, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->b:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/b/g/t; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 386
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/sleepycat/b/g/z;->r:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found checksum exception while searching for end of log. Last valid entry is at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 16014
    iget-wide v4, v3, Lcom/sleepycat/b/g/u;->a:J

    .line 386
    iget-wide v6, p0, Lcom/sleepycat/b/g/z;->a:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Bad entry is at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 17014
    iget-wide v4, v3, Lcom/sleepycat/b/g/u;->a:J

    .line 386
    iget-wide v6, p0, Lcom/sleepycat/b/g/z;->d:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 396
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->k:Lcom/sleepycat/b/g/ae;

    .line 11291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 266
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    new-instance v0, Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->k:Lcom/sleepycat/b/g/ae;

    .line 12279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 270
    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/af;-><init>(B)V

    iput-object v0, p0, Lcom/sleepycat/b/g/z;->b:Lcom/sleepycat/b/g/af;

    .line 271
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->b:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->t:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->b:Lcom/sleepycat/b/g/af;

    iget-wide v2, p0, Lcom/sleepycat/b/g/z;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->f:Lcom/sleepycat/b/g/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 9014
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->a:J

    .line 216
    iget-wide v4, p0, Lcom/sleepycat/b/g/z;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/g/m;->b(JJ)V

    .line 218
    return-void
.end method

.method public final e()Z
    .locals 8

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 297
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/b/g/s;->f()Z

    move-result v0

    .line 304
    iget-wide v2, p0, Lcom/sleepycat/b/g/z;->m:J

    iput-wide v2, p0, Lcom/sleepycat/b/g/z;->a:J

    .line 305
    iget-wide v2, p0, Lcom/sleepycat/b/g/z;->n:J

    iput-wide v2, p0, Lcom/sleepycat/b/g/z;->d:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :cond_0
    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 311
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->r:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found checksum exception while searching for end of log. Last valid entry is at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 13014
    iget-wide v4, v4, Lcom/sleepycat/b/g/u;->a:J

    .line 311
    iget-wide v6, p0, Lcom/sleepycat/b/g/z;->a:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Bad entry is at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 14014
    iget-wide v4, v4, Lcom/sleepycat/b/g/u;->a:J

    .line 311
    iget-wide v6, p0, Lcom/sleepycat/b/g/z;->d:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    .line 14392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 320
    sget-object v2, Lcom/sleepycat/b/b/d;->i:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    .line 325
    if-eqz v1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/sleepycat/b/g/z;->j()Z

    move-result v1

    .line 328
    if-eqz v1, :cond_0

    .line 329
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/g/z;->e:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->c:Lcom/sleepycat/b/c/ac;

    const-string v3, "Find committed txn after the corruption point"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
.end method

.method public final h()J
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 10014
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 224
    iget-wide v2, p0, Lcom/sleepycat/b/g/z;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()J
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sleepycat/b/g/z;->g:Lcom/sleepycat/b/g/u;

    .line 11014
    iget-wide v0, v0, Lcom/sleepycat/b/g/u;->a:J

    .line 228
    iget-wide v2, p0, Lcom/sleepycat/b/g/z;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method
