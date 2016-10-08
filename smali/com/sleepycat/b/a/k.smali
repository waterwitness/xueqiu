.class public Lcom/sleepycat/b/a/k;
.super Ljava/lang/Object;
.source "FileSelector.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sleepycat/b/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/k;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/k;->a:Ljava/util/Set;

    .line 173
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/k;->g:Ljava/util/LinkedList;

    .line 174
    return-void
.end method

.method private static a(Ljava/util/Set;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 679
    sget v0, Lcom/sleepycat/b/c/ao;->m:I

    sget v1, Lcom/sleepycat/b/c/ao;->n:I

    add-int/2addr v0, v1

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    sget v2, Lcom/sleepycat/b/c/ao;->o:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method private a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 314
    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/sleepycat/b/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/a/m;-><init>(B)V

    .line 316
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    iput-object p2, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    .line 319
    return-object v0
.end method

.method private static a(Lcom/sleepycat/b/c/ao;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ao;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 663
    .line 664
    if-eqz p1, :cond_0

    .line 665
    invoke-static {p1}, Lcom/sleepycat/b/a/k;->a(Ljava/util/Set;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 667
    :cond_0
    if-eqz p2, :cond_1

    .line 668
    invoke-static {p2}, Lcom/sleepycat/b/a/k;->a(Ljava/util/Set;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 670
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 671
    return-void
.end method

.method private a(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/b/a/n;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 330
    invoke-direct {p0, v0, p2}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/a/n;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 298
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/a/m;

    iget-object v1, v1, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    if-ne v1, p1, :cond_0

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method private b(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Z
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 356
    sget-boolean v1, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 358
    :cond_0
    sget-boolean v1, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    if-eq v1, p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 359
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private b(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/sleepycat/b/a/n;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 369
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 370
    invoke-direct {p0, v0, p2}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Z

    goto :goto_0

    .line 372
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized g()I
    .locals 1

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
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

.method private h()V
    .locals 5

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    sget-object v1, Lcom/sleepycat/b/a/n;->d:Lcom/sleepycat/b/a/n;

    sget-object v2, Lcom/sleepycat/b/a/n;->e:Lcom/sleepycat/b/a/n;

    .line 2340
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 2341
    iget-object v4, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    if-ne v4, v1, :cond_0

    .line 2342
    iput-object v2, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;

    goto :goto_0

    .line 654
    :cond_1
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/sleepycat/b/a/n;)I
    .locals 3

    .prologue
    .line 284
    monitor-enter p0

    const/4 v1, 0x0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 286
    iget-object v0, v0, Lcom/sleepycat/b/a/m;->a:Lcom/sleepycat/b/a/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 287
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    monitor-exit p0

    return v1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/a/aa;Ljava/util/SortedMap;)Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/a/aa;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 259
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/b/a/aa;->a(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 277
    :cond_0
    monitor-exit p0

    return-object v0

    .line 263
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/sleepycat/b/a/k;->g:Ljava/util/LinkedList;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/a/aa;->a(Ljava/util/SortedMap;Ljava/util/Set;ZZLjava/util/Set;)Ljava/lang/Long;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->g:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/a/aa;Ljava/util/SortedMap;ZI)Ljava/lang/Long;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/a/aa;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;ZI)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 198
    monitor-enter p0

    if-eqz p3, :cond_2

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/sleepycat/b/a/aa;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move p4, v7

    .line 214
    :cond_0
    sget-object v0, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/n;)I

    move-result v0

    move v9, v0

    .line 215
    :goto_1
    if-eqz p4, :cond_1

    if-ge v9, p4, :cond_4

    .line 218
    :cond_1
    if-lez v9, :cond_3

    move v3, v7

    :goto_2
    const/4 v4, 0x0

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/a/aa;->a(Ljava/util/SortedMap;Ljava/util/Set;ZZLjava/util/Set;)Ljava/lang/Long;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_4

    .line 228
    sget-object v1, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;

    .line 229
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    .line 230
    goto :goto_1

    :cond_2
    move-object v2, v6

    .line 198
    goto :goto_0

    :cond_3
    move v3, v8

    .line 218
    goto :goto_2

    .line 233
    :cond_4
    if-eqz v2, :cond_5

    .line 234
    iput-object v2, p0, Lcom/sleepycat/b/a/k;->a:Ljava/util/Set;

    .line 241
    :cond_5
    sget-object v0, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sleepycat/b/a/aa;->a(Ljava/util/SortedMap;Ljava/util/SortedSet;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 243
    if-nez v0, :cond_6

    move-object v0, v6

    .line 247
    :goto_3
    monitor-exit p0

    return-object v0

    .line 246
    :cond_6
    :try_start_1
    sget-object v1, Lcom/sleepycat/b/a/n;->b:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    monitor-enter p0

    const/4 v0, 0x0

    .line 601
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 602
    iget-object v3, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 603
    if-eqz v0, :cond_0

    .line 604
    if-nez v1, :cond_1

    .line 605
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 607
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0}, Lcom/sleepycat/b/a/k;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/a/l;)V
    .locals 2

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/b/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1725
    iget-object v1, p1, Lcom/sleepycat/b/a/l;->a:Ljava/util/Set;

    .line 485
    if-eqz v1, :cond_1

    .line 486
    sget-boolean v0, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/a/n;->c:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/a/k;->b(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)Z

    .line 487
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/a/k;->f:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sleepycat/b/a/n;->d:Lcom/sleepycat/b/a/n;

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/a/k;->a(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)V

    .line 1729
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/a/l;->b:Ljava/util/Set;

    .line 493
    if-eqz v0, :cond_3

    .line 494
    sget-boolean v1, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/sleepycat/b/a/n;->e:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/a/k;->b(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)Z

    .line 496
    :cond_2
    sget-object v1, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/a/k;->a(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)V

    .line 499
    :cond_3
    invoke-direct {p0}, Lcom/sleepycat/b/a/k;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_4
    monitor-exit p0

    return-void

    .line 487
    :cond_5
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/c/ao;)V
    .locals 3

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 640
    iget-object v0, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/ao;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 642
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V
    .locals 2

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 397
    if-eqz v0, :cond_0

    .line 398
    iget-object v0, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/ao;Ljava/util/Set;Ljava/util/Set;)V

    .line 399
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/Long;Ljava/util/Set;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/c/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;",
            "Lcom/sleepycat/b/p/au;",
            "Lcom/sleepycat/b/c/ao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/a/n;->b:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Z

    .line 430
    :cond_0
    sget-object v0, Lcom/sleepycat/b/a/n;->c:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;

    move-result-object v0

    .line 431
    iget-object v1, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    invoke-static {p4, v1, p2}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/ao;Ljava/util/Set;Ljava/util/Set;)V

    .line 432
    iput-object p2, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    .line 433
    iput-object p3, v0, Lcom/sleepycat/b/a/m;->c:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 510
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 512
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/sleepycat/b/a/r;

    invoke-direct {v3, p3, p4, p5}, Lcom/sleepycat/b/a/r;-><init>(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/a/k;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    monitor-exit p0

    return v0

    .line 512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/c/h;)Z
    .locals 2

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/a/k;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/Long;)Z
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z
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

.method final declared-synchronized b()Lcom/sleepycat/b/a/l;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sleepycat/b/a/k;->f:Z

    .line 469
    new-instance v0, Lcom/sleepycat/b/a/l;

    sget-object v1, Lcom/sleepycat/b/a/n;->c:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/a/n;->e:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v2}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/a/l;-><init>(Ljava/util/Set;Ljava/util/Set;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-object v0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/sleepycat/b/c/h;)V
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 581
    invoke-direct {p0}, Lcom/sleepycat/b/a/k;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/a/n;->b:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Z

    .line 409
    :cond_0
    sget-object v0, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Lcom/sleepycat/b/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V
    .locals 2

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/a/k;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/a/n;)Z

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 629
    if-eqz v0, :cond_1

    .line 630
    iget-object v0, v0, Lcom/sleepycat/b/a/m;->b:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/ao;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :cond_1
    monitor-exit p0

    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Ljava/lang/Long;)Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/m;

    .line 619
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sleepycat/b/a/m;->c:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 527
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()[Lcom/sleepycat/b/c/h;
    .locals 2

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sleepycat/b/c/h;

    .line 568
    iget-object v1, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;

    move-result-object v0

    .line 589
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/sleepycat/b/p/ai;
    .locals 4

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "FileSelector"

    const-string v2, "Cleaner\'s activities when choosing an optimal file to clean."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v1, Lcom/sleepycat/b/p/o;

    sget-object v2, Lcom/sleepycat/b/a/e;->a:Lcom/sleepycat/b/p/ag;

    .line 2457
    sget-object v3, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/n;)I

    move-result v3

    .line 690
    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;I)V

    .line 691
    new-instance v1, Lcom/sleepycat/b/p/o;

    sget-object v2, Lcom/sleepycat/b/a/e;->b:Lcom/sleepycat/b/p/ag;

    sget-object v3, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/n;)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;I)V

    .line 693
    new-instance v1, Lcom/sleepycat/b/p/o;

    sget-object v2, Lcom/sleepycat/b/a/e;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {p0}, Lcom/sleepycat/b/a/k;->g()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-object v0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "files = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->c:Ljava/util/SortedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pendingLNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pendingDBs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " anyPendingDuringCheckpoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/a/k;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lowUtilizationFiles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/a/k;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
