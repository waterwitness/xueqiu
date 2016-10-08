.class public final Lcom/sleepycat/b/k/a/e;
.super Ljava/lang/Object;
.source "SyncCleanerBarrier.java"

# interfaces
.implements Lcom/sleepycat/b/m/a;
.implements Lcom/sleepycat/b/m/b;
.implements Lcom/sleepycat/b/m/c;
.implements Lcom/sleepycat/b/m/d;


# static fields
.field static final synthetic a:Z


# instance fields
.field private transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/k/a/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private transient d:Lcom/sleepycat/b/k/a/c;

.field private transient e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/sleepycat/b/k/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/k/a/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/sleepycat/b/k/a/e;->c:Ljava/lang/String;

    .line 220
    return-void
.end method

.method private a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Z)V
    .locals 6

    .prologue
    .line 287
    invoke-static {p2}, Lcom/sleepycat/a/a/i;->a(Lcom/sleepycat/b/m;)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {v2}, Lcom/sleepycat/b/k/a/g;->a(Ljava/lang/String;)Lcom/sleepycat/b/k/a/g;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 4259
    iget-wide v4, p1, Lcom/sleepycat/b/bp;->c:J

    .line 291
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 293
    if-nez v0, :cond_1

    .line 294
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 296
    iget-object v1, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 5259
    iget-wide v4, p1, Lcom/sleepycat/b/bp;->c:J

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 298
    :goto_0
    new-instance v0, Lcom/sleepycat/b/k/a/b;

    invoke-direct {v0}, Lcom/sleepycat/b/k/a/b;-><init>()V

    .line 299
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/k/a/b;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/k/a/a;

    .line 300
    new-instance v3, Lcom/sleepycat/b/k/a/d;

    .line 6051
    iget-wide v4, v0, Lcom/sleepycat/b/k/a/a;->a:J

    .line 300
    invoke-direct {v3, v4, v5, p4}, Lcom/sleepycat/b/k/a/d;-><init>(JZ)V

    .line 302
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sleepycat/b/k/a/e;->e:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/bp;)V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 6259
    iget-wide v2, p1, Lcom/sleepycat/b/bp;->c:J

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 321
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 324
    iget-object v3, p0, Lcom/sleepycat/b/k/a/e;->d:Lcom/sleepycat/b/k/a/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/k/a/d;

    invoke-virtual {v3, v1, v0}, Lcom/sleepycat/b/k/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/k/a/d;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 7259
    iget-wide v2, p1, Lcom/sleepycat/b/bp;->c:J

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/k/a/e;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Z)V

    .line 280
    return-void
.end method

.method public final a(Lcom/sleepycat/b/x;)V
    .locals 1

    .prologue
    .line 249
    .line 3206
    iget-object v0, p1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 3858
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    .line 249
    iput-object v0, p0, Lcom/sleepycat/b/k/a/e;->d:Lcom/sleepycat/b/k/a/c;

    .line 251
    sget-boolean v0, Lcom/sleepycat/b/k/a/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->d:Lcom/sleepycat/b/k/a/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 254
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/bp;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sleepycat/b/k/a/e;->b:Ljava/util/Map;

    .line 8259
    iget-wide v2, p1, Lcom/sleepycat/b/bp;->c:J

    .line 334
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public final b(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/k/a/e;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Z)V

    .line 311
    return-void
.end method
