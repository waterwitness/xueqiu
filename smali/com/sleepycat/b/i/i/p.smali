.class public Lcom/sleepycat/b/i/i/p;
.super Ljava/lang/Object;
.source "VLSNTracker.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field private final a:Lcom/sleepycat/b/c/ad;

.field private b:Lcom/sleepycat/b/p/au;

.field c:Lcom/sleepycat/b/p/au;

.field d:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/i/c;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile e:Lcom/sleepycat/b/i/i/m;

.field private g:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Lcom/sleepycat/b/p/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/p;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;III)V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 54
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 150
    iput-object p1, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    .line 151
    iput p2, p0, Lcom/sleepycat/b/i/i/p;->h:I

    .line 152
    iput p3, p0, Lcom/sleepycat/b/i/i/p;->i:I

    .line 153
    iput p4, p0, Lcom/sleepycat/b/i/i/p;->j:I

    .line 156
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "VLSNIndex"

    const-string v2, "VLSN Index related stats."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/i/i/l;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/i/p;->k:Lcom/sleepycat/b/p/z;

    .line 163
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/p;->a()V

    .line 164
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;IIILcom/sleepycat/b/p/ai;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 54
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 94
    iput p3, p0, Lcom/sleepycat/b/i/i/p;->h:I

    .line 95
    iput p4, p0, Lcom/sleepycat/b/i/i/p;->i:I

    .line 96
    iput p5, p0, Lcom/sleepycat/b/i/i/p;->j:I

    .line 97
    iput-object p1, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    .line 98
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/i/i/l;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, p6, v1}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->k:Lcom/sleepycat/b/p/z;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    .line 104
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 105
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 106
    const-wide/16 v4, -0x1

    invoke-static {v4, v5, v0}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 111
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 112
    :try_start_1
    sget-object v4, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p2, v1, v4}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v2

    .line 3391
    iget-object v4, v2, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4263
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sleepycat/b/c/c;->i:Z

    .line 117
    sget-object v4, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v0, v3, v4}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 119
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v4, :cond_2

    .line 121
    new-instance v0, Lcom/sleepycat/b/i/i/n;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/n;-><init>()V

    .line 122
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/i/n;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/m;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 123
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 5114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 123
    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :goto_0
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 136
    :cond_0
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v1, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 139
    :cond_1
    return-void

    .line 124
    :cond_2
    :try_start_2
    sget-object v3, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_5

    .line 126
    sget-object v0, Lcom/sleepycat/b/i/i/m;->a:Lcom/sleepycat/b/i/i/m;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 136
    :cond_3
    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v1, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 132
    :cond_4
    throw v0

    .line 128
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VLSNTracker init: status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Lcom/sleepycat/b/p/au;B)V
    .locals 7

    .prologue
    .line 328
    iget-object v4, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 9153
    iget-object v0, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 9154
    iget-object v1, v4, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 9155
    iget-object v2, v4, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 9156
    iget-object v3, v4, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    .line 9158
    iget-object v5, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    sget-object v6, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-lez v5, :cond_1

    :cond_0
    move-object v0, p1

    .line 9162
    :cond_1
    iget-object v5, v4, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-gez v5, :cond_2

    move-object v1, p1

    .line 9166
    :cond_2
    invoke-static {p2}, Lcom/sleepycat/b/g/af;->d(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9167
    iget-object v5, v4, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-gez v5, :cond_3

    move-object v2, p1

    .line 9172
    :cond_3
    iget-byte v5, v4, Lcom/sleepycat/b/i/i/m;->d:B

    if-eq p2, v5, :cond_4

    iget-byte v5, v4, Lcom/sleepycat/b/i/i/m;->e:B

    if-ne p2, v5, :cond_5

    .line 9173
    :cond_4
    iget-object v4, v4, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v4, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v4

    if-gez v4, :cond_5

    .line 9178
    :goto_0
    new-instance v3, Lcom/sleepycat/b/i/i/m;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    .line 329
    iput-object v3, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 330
    return-void

    :cond_5
    move-object p1, v3

    goto :goto_0
.end method

.method private a(Ljava/util/SortedMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/i/c;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 548
    invoke-interface {p1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 549
    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 550
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 13110
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 551
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 552
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    .line 13375
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 553
    const/4 v4, 0x1

    invoke-virtual {v3, p2, p3, v4}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 556
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/i/c;->c(Lcom/sleepycat/b/p/au;)J

    move-result-wide v4

    .line 557
    new-instance v0, Lcom/sleepycat/b/i/i/a;

    const/4 v2, 0x0

    invoke-static {v6, v7, v2}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/i/a;-><init>(Lcom/sleepycat/b/p/au;JJ)V

    .line 14101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 560
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ltz v1, :cond_1

    .line 201
    :cond_0
    monitor-exit p0

    return-object v0

    .line 6101
    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 182
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 185
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 186
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 187
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 198
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 200
    sget-boolean v1, Lcom/sleepycat/b/i/i/p;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->e(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VLSN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got wrong bucket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VLSN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be held within this tracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prevBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    .line 168
    sget-object v0, Lcom/sleepycat/b/i/i/m;->a:Lcom/sleepycat/b/i/i/m;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 169
    return-void
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 343
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-boolean v0, p0, Lcom/sleepycat/b/i/i/p;->g:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v6, v0, p1, p2}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/p;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 9820
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/i/i/c;->d:Z

    .line 379
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 380
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 382
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/i/c;

    .line 385
    if-ne v1, v0, :cond_2

    move v2, v3

    .line 10427
    :goto_2
    sget-object v8, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v8}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v8

    if-gtz v8, :cond_3

    .line 10429
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "target bucket overlaps previous bucket. currentLastVLSN= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v2, v4

    .line 385
    goto :goto_2

    .line 10435
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->e()Lcom/sleepycat/b/p/au;

    move-result-object v5

    .line 11114
    iget-object v8, v6, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 10435
    invoke-virtual {v5, v8}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-lez v5, :cond_4

    .line 10436
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "target bucket exceeds flush range. range= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 10442
    :cond_4
    if-eqz v2, :cond_5

    .line 10443
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->e()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 12114
    iget-object v5, v6, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 10443
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 10444
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end of last bucket should match end of range. range= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 389
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)V

    .line 390
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->e()Lcom/sleepycat/b/p/au;

    move-result-object v1

    move-object v5, v1

    .line 391
    goto/16 :goto_1

    .line 393
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v6, v0, p1, p2}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/p;->g:Z

    .line 415
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 416
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/i/i/o;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 710
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 21114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 710
    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 22114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 22815
    iget-object v3, p1, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 711
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected this tracker to precede recovery tracker. This tracker= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recoveryTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    iget-object v3, p1, Lcom/sleepycat/b/i/i/o;->d:Ljava/util/SortedMap;

    invoke-interface {v0, v3}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 723
    iget-object v3, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 23732
    iget-object v4, p1, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 24185
    iget-object v5, v3, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    iget-object v6, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    iget-object v0, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    iget-object v7, v3, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v5, v6, v0}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v5

    .line 24187
    iget-object v6, v3, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    iget-object v7, v4, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    iget-object v0, v4, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    iget-object v8, v3, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v6, v7, v0}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v6

    .line 24189
    iget-object v7, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    iget-object v8, v4, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    iget-object v0, v4, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    iget-object v9, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v9}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v7, v8, v0}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 24192
    iget-object v7, v3, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    iget-object v8, v4, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    iget-object v4, v4, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    iget-object v3, v3, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-lez v3, :cond_5

    :goto_3
    invoke-static {v7, v8, v1}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 24195
    new-instance v2, Lcom/sleepycat/b/i/i/m;

    invoke-direct {v2, v5, v6, v0, v1}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    .line 724
    iput-object v2, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 725
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 727
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 729
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 24185
    goto :goto_0

    :cond_3
    move v0, v2

    .line 24187
    goto :goto_1

    :cond_4
    move v0, v2

    .line 24189
    goto :goto_2

    :cond_5
    move v1, v2

    .line 24192
    goto :goto_3
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/p/au;J)V
    .locals 6

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 12234
    iget-object v0, v3, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 12235
    iget-object v1, v3, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-nez v1, :cond_0

    .line 12236
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 12237
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    move-object v2, v1

    move-object v1, v0

    .line 12244
    :goto_0
    sget-boolean v0, Lcom/sleepycat/b/i/i/m;->h:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    sget-object v4, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t truncate lastSync= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 12239
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 12246
    :cond_1
    iget-object v0, v3, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v3, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    .line 12249
    :goto_1
    new-instance v4, Lcom/sleepycat/b/i/i/m;

    iget-object v3, v3, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    .line 459
    iput-object v4, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/p;->g:Z

    .line 471
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sleepycat/b/i/i/p;->a(Ljava/util/SortedMap;J)V

    .line 498
    :cond_2
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 12246
    :cond_4
    :try_start_2
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    goto :goto_1

    .line 503
    :cond_5
    sget-boolean v1, Lcom/sleepycat/b/i/i/p;->f:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 505
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 507
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    goto :goto_2

    .line 511
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_8

    .line 515
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-direct {p0, v0, p2, p3}, Lcom/sleepycat/b/i/i/p;->a(Ljava/util/SortedMap;J)V

    .line 516
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    goto :goto_2

    .line 523
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/i/p;->b(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 13101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 531
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0, p2, p3}, Lcom/sleepycat/b/i/i/p;->a(Ljava/util/SortedMap;J)V

    .line 533
    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 539
    :goto_3
    :try_start_4
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    goto :goto_2

    .line 535
    :catch_0
    move-exception v0

    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 536
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/p/au;JB)V
    .locals 8

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_1

    .line 260
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 266
    new-instance v1, Lcom/sleepycat/b/i/i/c;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    iget v4, p0, Lcom/sleepycat/b/i/i/p;->h:I

    iget v5, p0, Lcom/sleepycat/b/i/i/p;->i:I

    iget v6, p0, Lcom/sleepycat/b/i/i/p;->j:I

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/i/i/c;-><init>(JIIILcom/sleepycat/b/p/au;)V

    .line 268
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->k:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 270
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 8101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_1
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/i/i/c;->e(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    move-object v1, v0

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/p/au;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    new-instance v1, Lcom/sleepycat/b/i/i/c;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    iget v4, p0, Lcom/sleepycat/b/i/i/p;->h:I

    iget v5, p0, Lcom/sleepycat/b/i/i/p;->i:I

    iget v6, p0, Lcom/sleepycat/b/i/i/p;->j:I

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/i/i/c;-><init>(JIIILcom/sleepycat/b/p/au;)V

    .line 297
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->k:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 298
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 9101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v1, p1, p2, p3}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/p/au;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t put VLSN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 307
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;B)V

    .line 314
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    if-ne v0, v1, :cond_0

    .line 315
    iput-object p1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/o;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 658
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 659
    iget-object v1, p2, Lcom/sleepycat/b/i/i/o;->e:Lcom/sleepycat/b/i/i/m;

    .line 18202
    iget-object v2, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    iget-object v3, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-static {v2, v3, v5}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 18203
    iget-object v3, v0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    iget-object v4, v1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v3

    .line 18204
    iget-object v4, v0, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-static {v4, v1, v5}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 18205
    new-instance v4, Lcom/sleepycat/b/i/i/m;

    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    .line 659
    iput-object v4, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 18732
    iget-object v0, p2, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 19110
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 662
    iput-object p1, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 672
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 674
    iget-object v0, p2, Lcom/sleepycat/b/i/i/o;->d:Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 699
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    .line 701
    :cond_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v1

    .line 677
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 20101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 677
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 680
    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v4, v2}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 687
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v0, v4, v5}, Lcom/sleepycat/b/i/i/c;->b(Lcom/sleepycat/b/p/au;J)V

    .line 688
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 21101
    iget-wide v4, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 689
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_2
    iget-object v0, p2, Lcom/sleepycat/b/i/i/o;->d:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 694
    iput-object v3, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    goto :goto_0
.end method

.method final declared-synchronized b(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 7101
    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 222
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 224
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 225
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v2, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 235
    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VLSN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be held within this tracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/sleepycat/b/i/i/m;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    return-object v0
.end method

.method final declared-synchronized b(Lcom/sleepycat/b/p/au;J)V
    .locals 6

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 14215
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 14218
    sget-boolean v0, Lcom/sleepycat/b/i/i/m;->h:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t truncate at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it overwrites a commit at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 14221
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14222
    new-instance v0, Lcom/sleepycat/b/i/i/m;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    sget-object v4, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    .line 577
    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/p;->g:Z

    .line 584
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 15114
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 585
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    .line 592
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    :goto_2
    monitor-exit p0

    return-void

    .line 14224
    :cond_2
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/i/i/m;

    iget-object v3, v1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    .line 16114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 588
    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    goto :goto_1

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 604
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    goto :goto_2

    .line 613
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 17101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 614
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 617
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

    invoke-interface {v3, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 624
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/i/i/c;->b(Lcom/sleepycat/b/p/au;J)V

    .line 625
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->f()Z

    move-result v1

    if-nez v1, :cond_6

    .line 626
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 18101
    iget-wide v4, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 626
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_6
    iput-object v2, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->e:Lcom/sleepycat/b/i/i/m;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 739
    const-string v0, " firstTracked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 740
    const-string v0, " lastOnDiskVLSN="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v0, p0, Lcom/sleepycat/b/i/i/p;->d:Ljava/util/SortedMap;

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

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 743
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
