.class public final Lcom/sleepycat/b/p/w;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/b/c/ad;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/logging/Formatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/b/p/w;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 501
    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 489
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 490
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 491
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    const-string v1, "&lt"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    const-string v1, "&gt"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/m;Lcom/sleepycat/b/b/b;Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 3

    .prologue
    .line 508
    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v2

    .line 5094
    iget-object v1, p1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const/4 v0, 0x1

    .line 5319
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    .line 5322
    invoke-virtual {v1, p2}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 527
    :goto_0
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v6

    .line 168
    if-eqz v6, :cond_3

    .line 169
    array-length v7, v6

    move v4, v3

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v4, v7, :cond_4

    aget-object v8, v6, v4

    .line 180
    instance-of v9, v8, Ljava/util/logging/ConsoleHandler;

    if-eqz v9, :cond_0

    move v0, v1

    .line 184
    :cond_0
    instance-of v9, v8, Lcom/sleepycat/b/p/k;

    if-eqz v9, :cond_1

    move v2, v1

    .line 188
    :cond_1
    instance-of v8, v8, Lcom/sleepycat/b/p/f;

    if-eqz v8, :cond_2

    move v3, v1

    .line 169
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    move v0, v3

    .line 194
    :cond_4
    if-nez v0, :cond_5

    .line 195
    new-instance v0, Lcom/sleepycat/b/p/g;

    invoke-direct {v0}, Lcom/sleepycat/b/p/g;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 198
    :cond_5
    if-nez v2, :cond_6

    .line 199
    new-instance v0, Lcom/sleepycat/b/p/k;

    invoke-direct {v0}, Lcom/sleepycat/b/p/k;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 202
    :cond_6
    if-nez v3, :cond_7

    .line 203
    new-instance v0, Lcom/sleepycat/b/p/f;

    invoke-direct {v0}, Lcom/sleepycat/b/p/f;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 206
    :cond_7
    return-object v5
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 3260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fixedPrefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 3263
    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3264
    new-instance v1, Lcom/sleepycat/b/o/a;

    new-instance v2, Lcom/sleepycat/b/p/at;

    invoke-direct {v2, p1}, Lcom/sleepycat/b/p/at;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/o/a;-><init>(Ljava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 243
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4515
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 462
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, p1, p2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    sget-object v1, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-static {p0, v0}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 468
    return-void

    .line 465
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static a(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 367
    .line 3515
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 367
    invoke-static {v0, p1, p0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-static {p0, p1, p3, p4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4446
    :goto_0
    return-void

    .line 4438
    :cond_0
    if-eqz p2, :cond_1

    .line 4439
    sget-object v0, Lcom/sleepycat/b/p/w;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4442
    :cond_1
    :try_start_0
    invoke-virtual {p0, p3, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4445
    sget-object v0, Lcom/sleepycat/b/p/w;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/b/p/w;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    sget-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    sget-object v0, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/sleepycat/b/p/w;->a:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method private static a(Ljava/util/logging/Logger;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .line 282
    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 287
    instance-of v4, v4, Ljava/util/logging/ConsoleHandler;

    if-eqz v4, :cond_2

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/lang/Class;)Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".noEnv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lcom/sleepycat/b/p/m;

    invoke-direct {v1}, Lcom/sleepycat/b/p/m;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 2

    .prologue
    .line 302
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 314
    return-object v0
.end method

.method public static b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 400
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public static b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 483
    invoke-static {p0, p1, p2, p3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 484
    invoke-static {p1, p3}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public static d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 412
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public static e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 424
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-static {p0, p1, v0, p2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 425
    return-void
.end method
