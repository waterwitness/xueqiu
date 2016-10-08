.class public final Lcom/sleepycat/b/i/b/ak;
.super Lcom/sleepycat/b/i/b/m;
.source "RankingProposer.java"


# static fields
.field static volatile g:I


# instance fields
.field private final h:Lcom/sleepycat/b/i/b/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/b/i/b/ak;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/b/m;-><init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/c/b/x;)V

    .line 123
    new-instance v0, Lcom/sleepycat/b/i/b/am;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/am;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/ak;->h:Lcom/sleepycat/b/i/b/am;

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/Set;)Lcom/sleepycat/b/i/b/ai;
    .locals 14
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

    .prologue
    .line 50
    const-wide/high16 v4, -0x8000000000000000L

    .line 51
    const/high16 v3, -0x80000000

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v1, 0x0

    .line 56
    new-instance v9, Lcom/sleepycat/b/i/b/al;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/ak;->a:Lcom/sleepycat/b/i/b/d;

    invoke-direct {v9, v0, p1}, Lcom/sleepycat/b/i/b/al;-><init>(Lcom/sleepycat/b/i/b/d;Ljava/util/Set;)V

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v6, v4

    move-object v4, v2

    move v5, v3

    move v3, v1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 61
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    iget-object v8, p0, Lcom/sleepycat/b/i/b/ak;->a:Lcom/sleepycat/b/i/b/d;

    .line 1287
    iget-object v8, v8, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 61
    iget-object v8, v8, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    if-ne v1, v8, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/b/ac;

    .line 1294
    iget v8, v1, Lcom/sleepycat/b/i/b/ac;->e:I

    .line 67
    if-nez v8, :cond_1

    .line 68
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 69
    goto :goto_0

    .line 1298
    :cond_1
    iget v11, v1, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 2224
    iget-boolean v8, v9, Lcom/sleepycat/b/i/b/al;->c:Z

    if-nez v8, :cond_6

    .line 2227
    sget v8, Lcom/sleepycat/b/i/b/ak;->g:I

    .line 2228
    if-nez v8, :cond_2

    .line 2229
    const/16 v8, 0x9

    .line 2232
    :cond_2
    iget v12, v9, Lcom/sleepycat/b/i/b/al;->b:I

    add-int/lit8 v8, v8, -0x1

    if-ge v12, v8, :cond_6

    .line 2235
    iget v8, v9, Lcom/sleepycat/b/i/b/al;->a:I

    const/high16 v12, -0x80000000

    if-ne v8, v12, :cond_3

    iget v8, v9, Lcom/sleepycat/b/i/b/al;->b:I

    if-ne v11, v8, :cond_4

    :cond_3
    iget v8, v9, Lcom/sleepycat/b/i/b/al;->a:I

    const/high16 v12, -0x80000000

    if-eq v8, v12, :cond_6

    iget v8, v9, Lcom/sleepycat/b/i/b/al;->b:I

    if-eq v11, v8, :cond_6

    iget v8, v9, Lcom/sleepycat/b/i/b/al;->a:I

    if-eq v11, v8, :cond_6

    .line 2240
    :cond_4
    const/4 v8, 0x1

    .line 72
    :goto_1
    if-nez v8, :cond_0

    .line 2290
    iget-wide v12, v1, Lcom/sleepycat/b/i/b/ac;->d:J

    .line 76
    cmp-long v8, v12, v6

    if-ltz v8, :cond_0

    .line 3290
    iget-wide v12, v1, Lcom/sleepycat/b/i/b/ac;->d:J

    .line 81
    cmp-long v8, v12, v6

    if-nez v8, :cond_5

    .line 3294
    iget v8, v1, Lcom/sleepycat/b/i/b/ac;->e:I

    .line 82
    if-lt v8, v5, :cond_0

    .line 4294
    iget v8, v1, Lcom/sleepycat/b/i/b/ac;->e:I

    .line 89
    if-ne v8, v5, :cond_5

    if-eqz v4, :cond_5

    iget-object v8, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 5286
    :cond_5
    iget-object v2, v1, Lcom/sleepycat/b/i/b/ac;->c:Lcom/sleepycat/b/i/b/ai;

    .line 5290
    iget-wide v4, v1, Lcom/sleepycat/b/i/b/ac;->d:J

    .line 5294
    iget v1, v1, Lcom/sleepycat/b/i/b/ac;->e:I

    .line 99
    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v6, v4

    move v5, v1

    move-object v4, v0

    .line 100
    goto/16 :goto_0

    .line 2243
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 102
    :cond_7
    if-nez v2, :cond_8

    if-lez v3, :cond_8

    .line 103
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ak;->e:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/ak;->a:Lcom/sleepycat/b/i/b/d;

    .line 6225
    iget-object v1, v1, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 103
    iget-object v4, p0, Lcom/sleepycat/b/i/b/ak;->f:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No positive election priority node responded. Zero election priority node count:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v4, v5, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ak;->b:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V

    .line 110
    :cond_8
    return-object v2
.end method

.method public final declared-synchronized a()Lcom/sleepycat/b/i/b/s;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ak;->h:Lcom/sleepycat/b/i/b/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/am;->a()Lcom/sleepycat/b/i/b/s;
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
