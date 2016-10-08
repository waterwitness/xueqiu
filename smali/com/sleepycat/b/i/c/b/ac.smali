.class public Lcom/sleepycat/b/i/c/b/ac;
.super Ljava/lang/Object;
.source "Replay.java"


# static fields
.field public static final synthetic D:Z


# instance fields
.field final A:Lcom/sleepycat/b/p/z;

.field final B:Lcom/sleepycat/b/p/z;

.field public final C:Ljava/util/logging/Logger;

.field final a:Lcom/sleepycat/b/m;

.field final b:Lcom/sleepycat/b/m;

.field final c:Lcom/sleepycat/b/m;

.field public final d:Lcom/sleepycat/b/i/c/aj;

.field final e:J

.field public final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:Lcom/sleepycat/b/i/c/b/ae;

.field public volatile h:Lcom/sleepycat/b/p/au;

.field final i:Lcom/sleepycat/b/w;

.field final j:J

.field k:Lcom/sleepycat/b/i/h/o;

.field l:Lcom/sleepycat/b/i/e/t;

.field final m:Lcom/sleepycat/b/i/c/b/ad;

.field public final n:Lcom/sleepycat/b/p/ai;

.field final o:Lcom/sleepycat/b/p/z;

.field final p:Lcom/sleepycat/b/p/z;

.field final q:Lcom/sleepycat/b/p/z;

.field final r:Lcom/sleepycat/b/p/z;

.field final s:Lcom/sleepycat/b/p/z;

.field final t:Lcom/sleepycat/b/p/z;

.field final u:Lcom/sleepycat/b/p/z;

.field final v:Lcom/sleepycat/b/p/z;

.field final w:Lcom/sleepycat/b/p/z;

.field final x:Lcom/sleepycat/b/p/z;

.field final y:Lcom/sleepycat/b/p/y;

.field final z:Lcom/sleepycat/b/p/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/sleepycat/b/i/c/b/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1067
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1069
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1070
    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1073
    new-instance v0, Ljava/io/File;

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/m;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1075
    :cond_1
    return-object v2
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/e/t;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->l:Lcom/sleepycat/b/i/e/t;

    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    const-string v0, "matchpointLsn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;

    .line 1055
    const-string v3, "txn id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11169
    iget-wide v4, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 1055
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1056
    const-string v3, " locks="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sleepycat/b/i/f/e;->A()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v3, "lastLogged="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11421
    iget-wide v4, v0, Lcom/sleepycat/b/n/z;->z:J

    .line 1058
    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/h/o;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->k:Lcom/sleepycat/b/i/h/o;

    return-object v0
.end method


# virtual methods
.method public final a(JZ)Lcom/sleepycat/b/i/f/e;
    .locals 9

    .prologue
    .line 669
    iget-object v8, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v8

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;

    .line 671
    if-nez v0, :cond_0

    .line 678
    if-eqz p3, :cond_1

    .line 679
    new-instance v1, Lcom/sleepycat/b/i/f/e;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    sget-object v3, Lcom/sleepycat/b/br;->a:Lcom/sleepycat/b/br;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/i/f/e;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/Map;Ljava/util/logging/Logger;)V

    move-object v0, v1

    .line 692
    :cond_0
    :goto_0
    monitor-exit v8

    .line 693
    return-object v0

    .line 682
    :cond_1
    new-instance v0, Lcom/sleepycat/b/i/c/b/ac$1;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    sget-object v3, Lcom/sleepycat/b/br;->a:Lcom/sleepycat/b/br;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/i/c/b/ac$1;-><init>(Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/Map;Ljava/util/logging/Logger;)V

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 3240
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 4099
    iget v1, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 368
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;

    .line 369
    sget-object v3, Lcom/sleepycat/b/g/av;->f:Lcom/sleepycat/b/g/av;

    invoke-virtual {v0, v3, v1}, Lcom/sleepycat/b/i/f/e;->a(Lcom/sleepycat/b/g/av;I)J

    goto :goto_0

    .line 371
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected txns in activeTxns = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 373
    :cond_1
    return-void
.end method

.method final a(J)V
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->m:Lcom/sleepycat/b/i/c/b/ad;

    .line 12170
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/i/c/b/ad;->a(J)V

    .line 1149
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/au;J)V
    .locals 12

    .prologue
    .line 931
    const-string v1, "Started Rollback"

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const-string v0, "No active txns, nothing to rollback"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1041
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1042
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rollback to matchpoint "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1046
    return-void

    .line 940
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 4807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 5775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 6114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 941
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    const-string v0, "End of range equals matchpoint, nothing to rollback"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1041
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1042
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rollback to matchpoint "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 947
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    sget v2, Lcom/sleepycat/b/i/ad;->c:I

    .line 6761
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 953
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 6887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 7149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/a/a;->b()V

    .line 7150
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    .line 959
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/aj;->c(Z)V

    .line 960
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 7636
    iget-object v4, v0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7637
    :try_start_3
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/o/b;

    .line 8635
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/sleepycat/b/o/b;->a:Z

    .line 8636
    iput-wide v2, v0, Lcom/sleepycat/b/o/b;->b:J

    goto :goto_1

    .line 7640
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1041
    :catchall_1
    move-exception v0

    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1042
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Rollback to matchpoint "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1041
    throw v0

    .line 7640
    :cond_2
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 969
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 9371
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 970
    sget-object v0, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    new-instance v2, Lcom/sleepycat/b/n/v;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, p1, p2, p3, v4}, Lcom/sleepycat/b/n/v;-><init>(Lcom/sleepycat/b/p/au;JLjava/util/Set;)V

    invoke-static {v0, v2}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v0

    .line 975
    sget-object v2, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v4

    .line 979
    const-string v1, "Logged RollbackStart entry"

    .line 987
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 988
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;

    .line 989
    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/b/i/f/e;->a_(J)Ljava/util/Collection;

    move-result-object v8

    .line 997
    sget-boolean v2, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    if-nez v2, :cond_4

    .line 10079
    invoke-virtual {v0}, Lcom/sleepycat/b/i/f/e;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10080
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 10169
    iget-wide v10, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 10080
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10081
    const/4 v2, 0x0

    .line 997
    :goto_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Should have removed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 10085
    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    .line 999
    :cond_4
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1001
    :cond_5
    const-string v1, "Finished in-memory rollback"

    .line 1002
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    if-nez v0, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {p0, p2, p3}, Lcom/sleepycat/b/i/c/b/ac;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1012
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 10777
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ay:Lcom/sleepycat/b/i/i;

    .line 1013
    if-eqz v0, :cond_7

    .line 1014
    invoke-static {v6}, Lcom/sleepycat/b/i/c/b/ac;->a(Ljava/util/List;)Ljava/util/Set;

    .line 1016
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0, v6}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/c/ad;Ljava/util/List;)V

    .line 1017
    const-string v1, "Finished invisible setting"

    .line 1024
    sget-object v0, Lcom/sleepycat/b/g/af;->C:Lcom/sleepycat/b/g/af;

    new-instance v2, Lcom/sleepycat/b/n/u;

    invoke-direct {v2, p2, p3, v4, v5}, Lcom/sleepycat/b/n/u;-><init>(JJ)V

    invoke-static {v0, v2}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    .line 1035
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 10887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 11158
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    if-eqz v2, :cond_8

    .line 11159
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 11161
    :cond_8
    new-instance v2, Lcom/sleepycat/b/i/c/a/a;

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/b/i/c/a/a;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    .line 1036
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/aj;->c(Z)V

    .line 1037
    const-string v0, "Finished rollback"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1041
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1042
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rollback to matchpoint "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/i/f/e;)Z
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;

    .line 618
    if-eq v0, p1, :cond_0

    .line 4121
    iget-boolean v0, v0, Lcom/sleepycat/b/i/f/e;->d:Z

    .line 621
    if-eqz v0, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 625
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
