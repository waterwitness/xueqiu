.class public Lcom/sleepycat/b/h/p;
.super Ljava/lang/Object;
.source "RollbackTracker.java"


# instance fields
.field final a:Lcom/sleepycat/b/c/ad;

.field b:J

.field c:Z

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/sleepycat/b/h/r;

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/h/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/p;->g:Ljava/util/List;

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/h/p;->b:J

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/p;->d:Ljava/util/Set;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/p;->e:Ljava/util/List;

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/c/ad;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    return-object v0
.end method

.method static synthetic a(JLcom/sleepycat/b/n/al;Lcom/sleepycat/b/a/y;)V
    .locals 8

    .prologue
    .line 164
    .line 4408
    const/4 v4, 0x0

    iget-object v0, p2, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    .line 4723
    iget v0, v0, Lcom/sleepycat/b/l/y;->g:I

    const v1, 0x7fffffff

    and-int v5, v0, v1

    .line 4408
    iget-object v0, p2, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    .line 5496
    iget-object v6, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object v1, p3

    move-wide v2, p0

    .line 4408
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/y;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V

    .line 164
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 365
    invoke-static {p0, p1, v0}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/c/ad;Ljava/util/List;Ljava/util/Set;)V

    .line 4375
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 366
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/m;->a(Ljava/util/Set;)V

    .line 367
    return-void
.end method

.method static a(Lcom/sleepycat/b/c/ad;Ljava/util/List;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 3375
    :cond_0
    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 329
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    const-wide/16 v0, -0x1

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 341
    invoke-virtual {v4, v2, v3, v1}, Lcom/sleepycat/b/g/m;->a(JLjava/util/List;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v4, v2, v3, v1}, Lcom/sleepycat/b/g/m;->a(JLjava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/sleepycat/b/h/p;)Ljava/util/List;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/h/p;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/h/r;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/h/p;)Ljava/util/List;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/h/p;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method final a(J)V
    .locals 5

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/sleepycat/b/h/p;->c:Z

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Saw entry at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Should only be building the tracker on the first pass"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    iget-object v0, p0, Lcom/sleepycat/b/h/p;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/r;

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
