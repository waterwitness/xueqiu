.class public final Lcom/sleepycat/b/c/bd;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/bg;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/sleepycat/b/h/l;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/bg;",
            "Lcom/sleepycat/b/c/bf;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/bg;",
            "Lcom/sleepycat/b/c/be;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/logging/Logger;

.field private final f:Lcom/sleepycat/b/c/ad;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/sleepycat/b/c/bg;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/sleepycat/b/c/bg;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/bd;->d:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/sleepycat/b/c/bg;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/bd;->a:Ljava/util/Map;

    .line 145
    invoke-static {}, Lcom/sleepycat/b/c/bg;->values()[Lcom/sleepycat/b/c/bg;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 146
    iget-object v5, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    new-instance v6, Lcom/sleepycat/b/c/bf;

    invoke-direct {v6, v1}, Lcom/sleepycat/b/c/bf;-><init>(B)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/bd;->e:Ljava/util/logging/Logger;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/bd;->g:J

    .line 153
    return-void
.end method

.method private static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 332
    const-string v2, "%tD,%tH:%tM:%tS:%tL"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    const/4 v4, 0x4

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 379
    const-string v5, "%20s   %s\n"

    .line 381
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/bg;

    .line 383
    invoke-static {v1}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/be;

    .line 387
    invoke-static {v1}, Lcom/sleepycat/b/c/be;->a(Lcom/sleepycat/b/c/be;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 391
    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 393
    new-array v2, v8, [Ljava/lang/Object;

    const-string v7, " "

    aput-object v7, v2, v4

    sget-object v7, Lcom/sleepycat/b/c/be;->d:Ljava/lang/String;

    aput-object v7, v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v2, v4

    .line 396
    :cond_1
    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v4

    aput-object v1, v7, v3

    invoke-virtual {p1, v5, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 398
    :cond_2
    return-void
.end method

.method private a(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;Lcom/sleepycat/b/c/bf;Lcom/sleepycat/b/c/bf;)V
    .locals 10

    .prologue
    .line 346
    const-string v0, "%24s  %% of total  %s\n"

    .line 347
    const-string v1, "%20s             %3d %s\n"

    .line 348
    const-string v2, "%24s         %3d %s\n"

    .line 349
    const-string v3, "                         -------------------------"

    .line 352
    invoke-static {p2}, Lcom/sleepycat/b/c/bg;->b(Lcom/sleepycat/b/c/bg;)[Lcom/sleepycat/b/c/bg;

    move-result-object v4

    if-nez v4, :cond_1

    .line 376
    :cond_0
    return-void

    .line 10492
    :cond_1
    iget-wide v4, p3, Lcom/sleepycat/b/c/bf;->c:J

    .line 11488
    iget-wide v6, p3, Lcom/sleepycat/b/c/bf;->b:J

    .line 356
    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 360
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, " "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/sleepycat/b/c/bf;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v0, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 362
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v0, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Lcom/sleepycat/b/c/bf;->a(Lcom/sleepycat/b/c/bf;Lcom/sleepycat/b/c/bf;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object p3, v0, v4

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 364
    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    invoke-static {p2}, Lcom/sleepycat/b/c/bg;->b(Lcom/sleepycat/b/c/bg;)[Lcom/sleepycat/b/c/bg;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 367
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bf;

    .line 12488
    iget-wide v6, v0, Lcom/sleepycat/b/c/bf;->b:J

    .line 368
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 371
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    invoke-static {v0, p4}, Lcom/sleepycat/b/c/bf;->a(Lcom/sleepycat/b/c/bf;Lcom/sleepycat/b/c/bf;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object v0, v6, v5

    invoke-virtual {p1, v2, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 366
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 13

    .prologue
    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-object v0, v0, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    .line 277
    if-eqz v0, :cond_0

    .line 278
    const-string v1, "checkpointId = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8338
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->k:J

    .line 279
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9108
    iget-object v1, v0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    .line 280
    if-nez v1, :cond_1

    .line 281
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 10392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 288
    sget-object v1, Lcom/sleepycat/b/b/d;->N:Lcom/sleepycat/b/b/f;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v4

    .line 291
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 293
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v2, v2, Lcom/sleepycat/b/h/l;->c:J

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/p/j;->a(JJJ)J

    move-result-wide v8

    .line 297
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 299
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v2, v2, Lcom/sleepycat/b/h/l;->d:J

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/p/j;->a(JJJ)J

    move-result-wide v10

    .line 303
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    .line 305
    :goto_3
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v2, v2, Lcom/sleepycat/b/h/l;->e:J

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/p/j;->a(JJJ)J

    move-result-wide v0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firstActive["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v4, v3, Lcom/sleepycat/b/h/l;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ckptStart["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v4, v3, Lcom/sleepycat/b/h/l;->d:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ckptEnd["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v4, v3, Lcom/sleepycat/b/h/l;->e:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], lastUsed["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v4, v3, Lcom/sleepycat/b/h/l;->a:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 320
    const-string v4, "%24s bytes = %,d\n%24s bytes = %,d\n%24s bytes = %,d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v12, "firstActive->ckptStart"

    aput-object v12, v5, v7

    const/4 v7, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "ckptStart->ckptEnd"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "ckptEnd->end bytes"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nApproximate distances:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_1
    const-string v1, "["

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10108
    iget-object v0, v0, Lcom/sleepycat/b/h/a;->a:Ljava/lang/String;

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v0, "] "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->d:J

    goto/16 :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->e:J

    goto/16 :goto_2

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->a:J

    goto/16 :goto_3
.end method

.method private b(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V
    .locals 5

    .prologue
    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/bd;->g:J

    .line 406
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bf;

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n=== "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sleepycat/b/c/bg;->c(Lcom/sleepycat/b/c/bg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Report  ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13488
    iget-wide v2, v0, Lcom/sleepycat/b/c/bf;->b:J

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/c/bd;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "end   = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13492
    iget-wide v2, v0, Lcom/sleepycat/b/c/bf;->c:J

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/c/bd;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    if-ne p2, v1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/sleepycat/b/c/bd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/c/bg;

    .line 418
    invoke-static {v2}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v4

    if-nez v4, :cond_2

    .line 419
    if-ne v2, p2, :cond_1

    .line 426
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/c/bg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/bf;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/sleepycat/b/c/bd;->a(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;Lcom/sleepycat/b/c/bf;Lcom/sleepycat/b/c/bf;)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-static {v2}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v2

    if-ne v2, p2, :cond_1

    goto :goto_1

    .line 430
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/c/bd;->a(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V

    .line 433
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 434
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/bg;

    .line 435
    invoke-static {v1}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v1

    if-ne v1, p2, :cond_4

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " stats:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 441
    :cond_5
    return-void
.end method

.method private c(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/bd;->g:J

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n=== Interim "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Report  ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/sleepycat/b/c/bd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/bg;

    .line 457
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bf;

    .line 458
    invoke-static {v0}, Lcom/sleepycat/b/c/bf;->c(Lcom/sleepycat/b/c/bf;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 461
    if-eqz v2, :cond_1

    .line 462
    const-string v2, "                             Elapsed(ms)"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v4

    .line 465
    :cond_1
    const-string v6, "%20s : %s\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 469
    :cond_2
    invoke-static {p2}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/c/bd;->a(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V

    .line 472
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stats:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 476
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 7365
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->I:Lcom/sleepycat/b/ba;

    .line 244
    if-nez v0, :cond_1

    .line 252
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-interface {v0}, Lcom/sleepycat/b/ba;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->s:Lcom/sleepycat/b/c/ac;

    const-string v3, "EnvironmentConfig.recoveryProgressListener: "

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/c/bg;)V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bf;

    invoke-static {v0}, Lcom/sleepycat/b/c/bf;->a(Lcom/sleepycat/b/c/bf;)V

    .line 170
    new-instance v0, Lcom/sleepycat/b/c/be;

    invoke-direct {v0}, Lcom/sleepycat/b/c/be;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/c/bg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 3371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 179
    invoke-virtual {v1}, Lcom/sleepycat/b/g/am;->c()J

    move-result-wide v2

    .line 3587
    iput-wide v2, v0, Lcom/sleepycat/b/c/be;->b:J

    .line 181
    :cond_1
    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/bg;)V
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bf;

    .line 188
    invoke-static {v0}, Lcom/sleepycat/b/c/bf;->b(Lcom/sleepycat/b/c/bf;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 4371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 190
    invoke-virtual {v2}, Lcom/sleepycat/b/g/am;->c()J

    move-result-wide v2

    .line 4591
    iput-wide v2, v1, Lcom/sleepycat/b/c/be;->c:J

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->e:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-static {v2, v3, v4, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    .line 5392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 209
    sget-object v2, Lcom/sleepycat/b/b/d;->br:Lcom/sleepycat/b/b/c;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    .line 213
    invoke-static {p1}, Lcom/sleepycat/b/c/bg;->a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5492
    iget-wide v2, v0, Lcom/sleepycat/b/c/bf;->c:J

    .line 6488
    iget-wide v4, v0, Lcom/sleepycat/b/c/bf;->b:J

    .line 214
    sub-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 215
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 217
    invoke-direct {p0, v1, p1}, Lcom/sleepycat/b/c/bd;->b(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V

    .line 218
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/c/bd;->g:J

    sub-long/2addr v2, v4

    int-to-long v0, v1

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    invoke-direct {p0, v1, p1}, Lcom/sleepycat/b/c/bd;->c(Ljava/io/PrintStream;Lcom/sleepycat/b/c/bg;)V

    .line 232
    iget-object v1, p0, Lcom/sleepycat/b/c/bd;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/c/bd;->f:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sleepycat/b/c/bd;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/be;

    return-object v0
.end method
