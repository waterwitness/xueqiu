.class public abstract Lcom/sleepycat/b/i/b/m;
.super Ljava/lang/Object;
.source "Proposer.java"


# instance fields
.field protected final a:Lcom/sleepycat/b/i/b/d;

.field protected final b:Lcom/sleepycat/b/p/o;

.field final c:Lcom/sleepycat/b/p/o;

.field final d:Lcom/sleepycat/b/p/o;

.field protected final e:Ljava/util/logging/Logger;

.field protected final f:Ljava/util/logging/Formatter;

.field private final g:Lcom/sleepycat/b/p/ai;

.field private final h:Lcom/sleepycat/b/p/o;

.field private final i:Lcom/sleepycat/b/p/o;

.field private final j:Lcom/sleepycat/b/p/o;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 2225
    iget-object v0, p1, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    .line 77
    :goto_0
    new-instance v0, Lcom/sleepycat/b/i/h/w;

    invoke-direct {v0, p2}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    .line 79
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Election Proposer"

    const-string v2, "Proposals are the first stage of a replication group election."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    .line 81
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->h:Lcom/sleepycat/b/p/o;

    .line 82
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->b:Lcom/sleepycat/b/p/o;

    .line 83
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->c:Lcom/sleepycat/b/p/o;

    .line 84
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->i:Lcom/sleepycat/b/p/o;

    .line 85
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->d:Lcom/sleepycat/b/p/o;

    .line 86
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/b/w;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->j:Lcom/sleepycat/b/p/o;

    .line 87
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/i/b/s;Ljava/util/List;)Lcom/sleepycat/b/i/b/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/b/s;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;>;)",
            "Lcom/sleepycat/b/i/b/q;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lcom/sleepycat/b/i/b/q;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/b/q;-><init>(B)V

    .line 168
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 170
    new-instance v3, Lcom/sleepycat/b/i/b/m$1;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/sleepycat/b/i/b/m$1;-><init>(Lcom/sleepycat/b/i/b/m;Ljava/util/concurrent/Future;Ljava/util/List;Lcom/sleepycat/b/i/b/q;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 5225
    iget-object v4, v4, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 170
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/sleepycat/b/i/b/m$1;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v1, Lcom/sleepycat/b/i/b/q;->c:Lcom/sleepycat/b/i/b/s;

    if-nez v0, :cond_1

    .line 231
    iput-object p1, v1, Lcom/sleepycat/b/i/b/q;->c:Lcom/sleepycat/b/i/b/s;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->j:Lcom/sleepycat/b/p/o;

    iget-object v2, v1, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 235
    return-object v1
.end method

.method private a(Lcom/sleepycat/b/i/p;Ljava/util/List;)Lcom/sleepycat/b/i/b/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/p;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;>;)",
            "Lcom/sleepycat/b/i/b/r;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v4, Lcom/sleepycat/b/i/b/r;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/sleepycat/b/i/b/r;-><init>(B)V

    .line 288
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 289
    new-instance v0, Lcom/sleepycat/b/i/b/m$2;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/b/m$2;-><init>(Lcom/sleepycat/b/i/b/m;Ljava/util/concurrent/Future;Ljava/util/List;Lcom/sleepycat/b/i/b/r;Lcom/sleepycat/b/i/p;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 6225
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 289
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/i/b/m$2;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/b/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    :cond_0
    return-object v4
.end method

.method static synthetic a(Lcom/sleepycat/b/i/b/m;Lcom/sleepycat/b/i/p;I)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;I)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/sleepycat/b/i/p;I)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 3216
    iget-object v0, v0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 4202
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->y:Lcom/sleepycat/b/i/c/b/g;

    .line 5075
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/c/b/g;->a(Lcom/sleepycat/b/i/p;)I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 112
    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/util/Set;)Lcom/sleepycat/b/i/b/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;)",
            "Lcom/sleepycat/b/i/b/ai;"
        }
    .end annotation
.end method

.method protected abstract a()Lcom/sleepycat/b/i/b/s;
.end method

.method public final a(Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/u;)Lcom/sleepycat/b/i/b/v;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/ai;->a()V

    .line 383
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/sleepycat/b/i/b/u;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/m;->a()Lcom/sleepycat/b/i/b/s;

    move-result-object v2

    .line 7130
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 7225
    iget-object v3, v3, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 7520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 7130
    iget-object v4, p0, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Phase 1 proposal: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 7134
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/d;->b()Ljava/util/Set;

    move-result-object v0

    const-string v3, "Acceptor"

    new-instance v4, Lcom/sleepycat/b/i/b/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 8287
    iget-object v5, v5, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 7134
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v2}, Lcom/sleepycat/b/i/b/ad;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 9208
    iget-object v5, v5, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 7134
    invoke-static {v0, v3, v4, v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v0

    .line 7141
    invoke-direct {p0, v2, v0}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/b/s;Ljava/util/List;)Lcom/sleepycat/b/i/b/q;

    move-result-object v0

    .line 7142
    iget-object v3, v0, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    :goto_1
    if-eqz v0, :cond_0

    .line 391
    iget-object v3, v0, Lcom/sleepycat/b/i/b/q;->b:Ljava/util/Set;

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/i/b/m;->a(Ljava/util/Set;)Lcom/sleepycat/b/i/b/ai;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_0

    .line 397
    iget-object v0, v0, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    .line 9253
    iget-object v4, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 10225
    iget-object v5, v5, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 10520
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 9253
    iget-object v6, p0, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Phase 2 proposal: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 9258
    new-instance v4, Lcom/sleepycat/b/i/b/y;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 11287
    iget-object v5, v5, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 9258
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v2, v3}, Lcom/sleepycat/b/i/b/y;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    .line 9260
    const-string v5, "Acceptor"

    iget-object v6, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 12208
    iget-object v6, v6, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 9260
    invoke-static {v0, v5, v4, v6}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v0

    .line 9263
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;Ljava/util/List;)Lcom/sleepycat/b/i/b/r;

    move-result-object v0

    .line 9265
    iget-object v4, v0, Lcom/sleepycat/b/i/b/r;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    :goto_2
    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 12225
    iget-object v4, v4, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 12520
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 404
    iget-object v5, p0, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Winning proposal: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v5, v6, v7}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 408
    new-instance v0, Lcom/sleepycat/b/i/b/v;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    invoke-direct {v0, v2, v3, v4}, Lcom/sleepycat/b/i/b/v;-><init>(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;Lcom/sleepycat/b/p/ai;)V

    return-object v0

    .line 7145
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->h:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V

    move-object v0, v1

    .line 7147
    goto/16 :goto_1

    .line 9269
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m;->i:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V
    :try_end_0
    .catch Lcom/sleepycat/b/i/b/o; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 9270
    goto :goto_2

    .line 413
    :cond_3
    new-instance v0, Lcom/sleepycat/b/i/b/p;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m;->g:Lcom/sleepycat/b/p/ai;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/b/p;-><init>(Lcom/sleepycat/b/p/ai;)V

    throw v0

    .line 410
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
