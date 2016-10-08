.class public Lcom/sleepycat/b/n/a;
.super Lcom/sleepycat/b/n/q;
.source "BasicLocker.java"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 52
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/q;-><init>(Lcom/sleepycat/b/c/ad;ZZJ)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/ad;Z)V
    .locals 6

    .prologue
    .line 68
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/q;-><init>(Lcom/sleepycat/b/c/ad;ZZJ)V

    .line 72
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/sleepycat/b/n/a;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/n/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/sleepycat/b/n/a;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/n/a;-><init>(Lcom/sleepycat/b/c/ad;Z)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/n/aj;J)J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 11

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/a;->b_(Z)V

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const-wide/16 v6, 0x0

    .line 110
    if-nez p4, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/n/a;->m:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v8, 0x1

    .line 111
    :goto_0
    if-nez v8, :cond_1

    .line 112
    monitor-enter p0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/n/a;->r_()J

    move-result-wide v6

    .line 114
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/n/a;->j:Lcom/sleepycat/b/n/l;

    move-wide v2, p1

    move-object v4, p0

    move-object v5, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/sleepycat/b/n/l;->a(JLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;JZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/h;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/sleepycat/b/n/m;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/n/m;-><init>(Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/am;)V

    return-object v1

    .line 107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 114
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 254
    .line 2550
    iget-object v0, p1, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 3533
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v0

    .line 254
    iput-boolean v0, p0, Lcom/sleepycat/b/n/a;->c:Z

    .line 255
    return-void
.end method

.method public a(Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/i;Z)V
    .locals 1

    .prologue
    .line 285
    if-eqz p2, :cond_0

    .line 4516
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->B()V

    .line 4517
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->C()V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->i:Lcom/sleepycat/b/c/ad;

    .line 5379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 289
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 307
    iput-object p1, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    goto :goto_0

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 310
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a_(Z)V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/sleepycat/b/n/a;->k_()V

    .line 245
    invoke-virtual {p0}, Lcom/sleepycat/b/n/a;->j()V

    .line 246
    return-void
.end method

.method final b(J)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public b(Lcom/sleepycat/b/c/c;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected b_(Z)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/sleepycat/b/n/q;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/a;->a_(Z)V

    .line 233
    return-void
.end method

.method public i_()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public j_()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized k_()V
    .locals 6

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->j:Lcom/sleepycat/b/n/l;

    iget-object v1, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/a;->a:Ljava/lang/Long;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 209
    iget-object v2, p0, Lcom/sleepycat/b/n/a;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->p:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/n/a;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->i:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/n/a;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/util/Collection;)V

    .line 221
    iget-object v0, p0, Lcom/sleepycat/b/n/a;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/sleepycat/b/n/a;->c:Z

    return v0
.end method
