.class public Lcom/sleepycat/b/k/a/c;
.super Ljava/lang/Object;
.source "SyncCleanerBarrier.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field public final a:Lcom/sleepycat/b/c/ad;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sleepycat/b/k/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/k/a/c;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/k/a/c;->c:J

    .line 61
    iput-object p1, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(JJ)I
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/sleepycat/b/p/au;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/b/p/au;-><init>(J)V

    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-direct {v1, p3, p4}, Lcom/sleepycat/b/p/au;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/k/a/c;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Lcom/sleepycat/b/k/a/d;)V
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 121
    monitor-enter p0

    .line 1383
    :try_start_0
    iget-wide v4, p2, Lcom/sleepycat/b/k/a/d;->a:J

    .line 122
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v8, v2

    .line 128
    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/b/k/a/c;->c:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/sleepycat/b/k/a/c;->a(JJ)I

    move-result v2

    if-gez v2, :cond_2

    .line 129
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "-"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid behavior, Processor: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SyncDataSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " is reading log entries on a  protected file at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "VLSN: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 122
    :cond_0
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 130
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "lsn: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1387
    :cond_2
    iget-boolean v2, p2, Lcom/sleepycat/b/k/a/d;->b:Z

    .line 145
    if-eqz v2, :cond_4

    .line 146
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/k/a/c;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 148
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v6

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 163
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {p0, v4, v5, v10, v11}, Lcom/sleepycat/b/k/a/c;->a(JJ)I

    move-result v2

    if-lez v2, :cond_8

    .line 164
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    move-wide v4, v2

    .line 166
    goto :goto_4

    .line 169
    :cond_6
    sget-boolean v2, Lcom/sleepycat/b/k/a/c;->d:Z

    if-nez v2, :cond_7

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 170
    :cond_7
    iput-wide v4, p0, Lcom/sleepycat/b/k/a/c;->c:J

    .line 176
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->R()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    .line 177
    iget-object v2, p0, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_8
    move-wide v2, v4

    goto :goto_5
.end method
