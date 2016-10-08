.class public Lcom/sleepycat/b/c/n;
.super Ljava/lang/Object;
.source "DbEnvPool.java"


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/sleepycat/b/c/n;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/c/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sleepycat/b/c/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/n;->a:Z

    .line 46
    new-instance v0, Lcom/sleepycat/b/c/n;

    invoke-direct {v0}, Lcom/sleepycat/b/c/n;-><init>()V

    sput-object v0, Lcom/sleepycat/b/c/n;->b:Lcom/sleepycat/b/c/n;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    .line 66
    return-void
.end method

.method private static a(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;
    .locals 4

    .prologue
    .line 241
    :try_start_0
    const-string v0, "com.sleepycat.b.i.c.aj"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 242
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.sleepycat.b.c.ad"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.sleepycat.b.c.aw"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 253
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 262
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public static a()Lcom/sleepycat/b/c/n;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sleepycat/b/c/n;->b:Lcom/sleepycat/b/c/n;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 404
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private b(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 358
    .line 8629
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 358
    invoke-static {v0}, Lcom/sleepycat/b/c/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 362
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 363
    sget-boolean v1, Lcom/sleepycat/b/c/n;->a:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 9357
    iget-boolean v0, p1, Lcom/sleepycat/b/c/ad;->i:Z

    .line 363
    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/c/n;->a:Z

    if-nez v0, :cond_3

    .line 9692
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 364
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/d/b;->c(Lcom/sleepycat/b/c/ad;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10692
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 366
    invoke-virtual {v0}, Lcom/sleepycat/b/d/b;->c()V

    .line 379
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    invoke-static {}, Lcom/sleepycat/b/f/d;->d()V

    .line 382
    :cond_5
    return-void

    .line 11508
    :cond_6
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 12164
    iget-object v1, v0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ao;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/c/ar;->a(J)Z

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/n;->c(Lcom/sleepycat/b/c/ad;)V

    goto :goto_1

    .line 372
    :cond_7
    sget-boolean v1, Lcom/sleepycat/b/c/n;->a:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 12357
    iget-boolean v0, p1, Lcom/sleepycat/b/c/ad;->i:Z

    .line 372
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private c(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    .line 423
    if-eq v0, p1, :cond_0

    .line 12508
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 424
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 13392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 424
    invoke-virtual {v2, v4, v5, v3, v0}, Lcom/sleepycat/b/c/ao;->a(JZLcom/sleepycat/b/c/m;)V

    goto :goto_0

    .line 429
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Lcom/sleepycat/b/z;ZZLcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/b/c/n;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    .line 105
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment was previously opened as a standalone environment. It cannot be re-opened for replication."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/b/z;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment was previously opened for replication. It cannot be re-opened in read/write mode for standalone operation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 136
    if-eqz p3, :cond_2

    .line 3276
    invoke-virtual {p2}, Lcom/sleepycat/b/ac;->j()Ljava/util/Properties;

    move-result-object v1

    .line 3420
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 4081
    iget-object v3, v3, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 4252
    invoke-virtual {v3, v1}, Lcom/sleepycat/b/ac;->a(Ljava/util/Properties;)V

    .line 157
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->r()V

    .line 189
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/z;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7357
    :try_start_3
    iget-boolean v1, v0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 7282
    if-eqz v1, :cond_d

    .line 7283
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 7284
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1

    .line 212
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 216
    :catchall_2
    move-exception v1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_5
    iget-object v3, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 216
    throw v1

    .line 159
    :cond_4
    if-nez p4, :cond_6

    .line 160
    :try_start_6
    monitor-exit p0

    move-object v0, v1

    .line 224
    :cond_5
    :goto_1
    return-object v0

    .line 168
    :cond_6
    invoke-virtual {p2}, Lcom/sleepycat/b/z;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5084
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5085
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ad;

    move-object v1, v0

    .line 178
    :cond_7
    if-nez p5, :cond_8

    new-instance v0, Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, p1, p2, v1}, Lcom/sleepycat/b/c/ad;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;)V

    .line 183
    :goto_2
    sget-boolean v1, Lcom/sleepycat/b/c/n;->a:Z

    if-nez v1, :cond_9

    invoke-virtual {p2}, Lcom/sleepycat/b/z;->f()Z

    move-result v1

    .line 5357
    iget-boolean v3, v0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 183
    if-eq v1, v3, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_8
    invoke-static {p1, p2, v1, p5}, Lcom/sleepycat/b/c/n;->a(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;

    move-result-object v0

    goto :goto_2

    .line 185
    :cond_9
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->r()V

    .line 186
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6357
    iget-boolean v1, v0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 6270
    if-eqz v1, :cond_3

    .line 6271
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6272
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 6274
    :cond_a
    iget-object v1, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 7286
    :cond_b
    :try_start_7
    sget-boolean v1, Lcom/sleepycat/b/c/n;->a:Z

    if-nez v1, :cond_c

    .line 7692
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 7286
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/d/b;->c(Lcom/sleepycat/b/c/ad;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 7287
    :cond_c
    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/n;->c(Lcom/sleepycat/b/c/ad;)V

    .line 212
    :cond_d
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 220
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/n;->b(Lcom/sleepycat/b/c/ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/n;->b(Lcom/sleepycat/b/c/ad;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/ad;ZZ)V
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7950
    :try_start_1
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 326
    :goto_0
    if-eqz v0, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lcom/sleepycat/b/c/ad;->a(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/n;->b(Lcom/sleepycat/b/c/ad;)V

    .line 333
    :cond_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 7950
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/n;->b(Lcom/sleepycat/b/c/ad;)V

    throw v0

    .line 333
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 324
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/n;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
