.class Lcom/sleepycat/b/g/ab;
.super Ljava/lang/Object;
.source "LogBufferPool.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:I

.field final b:Lcom/sleepycat/b/p/d;

.field private d:Lcom/sleepycat/b/c/ad;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sleepycat/b/g/aa;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Lcom/sleepycat/b/g/aa;

.field private i:I

.field private final j:Lcom/sleepycat/b/g/m;

.field private final k:Lcom/sleepycat/b/p/ai;

.field private final l:Lcom/sleepycat/b/p/d;

.field private final m:Lcom/sleepycat/b/p/o;

.field private final n:Lcom/sleepycat/b/p/z;

.field private final o:Lcom/sleepycat/b/p/z;

.field private final p:Z

.field private final q:Lcom/sleepycat/b/f/a;

.field private volatile r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/sleepycat/b/g/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/ab;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/g/m;Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    .line 77
    iput v1, p0, Lcom/sleepycat/b/g/ab;->f:I

    .line 78
    iput v1, p0, Lcom/sleepycat/b/g/ab;->g:I

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/ab;->r:J

    .line 136
    iput-object p1, p0, Lcom/sleepycat/b/g/ab;->j:Lcom/sleepycat/b/g/m;

    .line 137
    iput-object p2, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    .line 138
    new-instance v0, Lcom/sleepycat/b/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/g/ab;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FullLatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 3392
    iget-object v0, p2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 4334
    iget-boolean v1, p2, Lcom/sleepycat/b/c/ad;->h:Z

    .line 142
    iput-boolean v1, p0, Lcom/sleepycat/b/g/ab;->p:Z

    .line 143
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/ab;->a(Lcom/sleepycat/b/c/m;)V

    .line 146
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aa;

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    .line 149
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "LogBufferPool"

    const-string v2, "LogBufferPool statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    .line 151
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->D:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->l:Lcom/sleepycat/b/p/d;

    .line 152
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->E:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->b:Lcom/sleepycat/b/p/d;

    .line 153
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->F:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->m:Lcom/sleepycat/b/p/o;

    .line 154
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->G:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->n:Lcom/sleepycat/b/p/z;

    .line 155
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->C:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->o:Lcom/sleepycat/b/p/z;

    .line 156
    return-void
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(IZ)Lcom/sleepycat/b/g/aa;
    .locals 2

    .prologue
    .line 263
    if-eqz p2, :cond_2

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/g/ab;->b(IZ)V

    .line 271
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ab;->p:Z

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->j:Lcom/sleepycat/b/g/m;

    .line 6034
    iget-boolean v1, v0, Lcom/sleepycat/b/g/m;->j:Z

    if-eqz v1, :cond_0

    .line 6035
    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->e()V

    .line 6037
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/r;->a()V

    .line 294
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    return-object v0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/aa;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/ab;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/aa;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/g/ab;->b(IZ)V

    goto :goto_0
.end method

.method final a(J)Lcom/sleepycat/b/g/aa;
    .locals 11

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->l:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 555
    iget-wide v0, p0, Lcom/sleepycat/b/g/ab;->r:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->b:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 557
    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aa;

    .line 9162
    sget-boolean v1, Lcom/sleepycat/b/g/aa;->h:Z

    if-nez v1, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 10151
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 572
    throw v0

    .line 9169
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/b/g/aa;->d()V

    .line 9170
    const/4 v1, 0x0

    .line 9172
    iget-wide v4, v0, Lcom/sleepycat/b/g/aa;->b:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    iget-wide v4, v0, Lcom/sleepycat/b/g/aa;->b:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 9175
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    .line 9177
    iget-object v2, v0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_4

    .line 9179
    iget-object v2, v0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 9184
    :goto_1
    iget-wide v6, v0, Lcom/sleepycat/b/g/aa;->b:J

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->e(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 9185
    int-to-long v8, v2

    add-long/2addr v8, v6

    .line 9187
    cmp-long v2, v6, v4

    if-gtz v2, :cond_3

    cmp-long v2, v8, v4

    if-lez v2, :cond_3

    .line 9189
    const/4 v1, 0x1

    .line 9193
    :cond_3
    if-eqz v1, :cond_5

    .line 9194
    const/4 v1, 0x1

    .line 564
    :goto_2
    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 10151
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/f/a;->a(Z)Z

    goto :goto_0

    .line 9182
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    goto :goto_1

    .line 9196
    :cond_5
    iget-object v1, v0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->c()V

    .line 9197
    const/4 v1, 0x0

    goto :goto_2

    .line 569
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->b:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 10151
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 570
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 8

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 581
    const-wide/16 v2, 0x0

    .line 582
    const/4 v0, 0x0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    .line 585
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aa;

    .line 587
    add-int/lit8 v1, v1, 0x1

    .line 11145
    iget-object v0, v0, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 588
    int-to-long v6, v0

    add-long/2addr v2, v6

    .line 589
    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->c()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    .line 593
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->m:Lcom/sleepycat/b/p/o;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 594
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->n:Lcom/sleepycat/b/p/z;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    .line 596
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->k:Lcom/sleepycat/b/p/ai;

    .line 12103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 596
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/sleepycat/b/c/m;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 174
    iget-boolean v1, p0, Lcom/sleepycat/b/g/ab;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0, v2, v0}, Lcom/sleepycat/b/g/ab;->b(IZ)V

    .line 190
    :cond_1
    sget-object v1, Lcom/sleepycat/b/b/d;->I:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    .line 192
    iget-object v3, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    .line 4508
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 5226
    iget-wide v4, v3, Lcom/sleepycat/b/c/ao;->ad:J

    .line 194
    sget-object v3, Lcom/sleepycat/b/b/d;->N:Lcom/sleepycat/b/b/f;

    invoke-virtual {p1, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v6

    .line 197
    long-to-int v3, v4

    div-int/2addr v3, v1

    .line 199
    long-to-int v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 201
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 207
    iget-boolean v5, p0, Lcom/sleepycat/b/g/ab;->p:Z

    if-eqz v5, :cond_3

    :goto_1
    move v1, v2

    .line 211
    :goto_2
    if-ge v1, v0, :cond_2

    .line 212
    new-instance v5, Lcom/sleepycat/b/g/aa;

    iget-object v6, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    invoke-direct {v5, v3, v6}, Lcom/sleepycat/b/g/aa;-><init>(ILcom/sleepycat/b/c/ad;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 229
    iput-object v4, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    .line 230
    iput v3, p0, Lcom/sleepycat/b/g/ab;->a:I

    .line 232
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aa;

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 233
    iput v2, p0, Lcom/sleepycat/b/g/ab;->i:I

    .line 234
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final a(Z)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->a()V

    .line 362
    :try_start_0
    iget v1, p0, Lcom/sleepycat/b/g/ab;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gez v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 7151
    :goto_0
    invoke-virtual {v1, v4}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 384
    return-void

    .line 365
    :cond_0
    const/4 v2, 0x1

    .line 367
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    iget v3, p0, Lcom/sleepycat/b/g/ab;->f:I

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/g/aa;

    .line 368
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6396
    :try_start_2
    iget-boolean v3, p0, Lcom/sleepycat/b/g/ab;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    .line 7138
    :try_start_3
    iget-object v3, v1, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 6402
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 6403
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 6404
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6411
    :try_start_4
    iget-object v7, p0, Lcom/sleepycat/b/g/ab;->j:Lcom/sleepycat/b/g/m;

    invoke-virtual {v7, v1, p1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/aa;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6457
    if-eqz v1, :cond_1

    .line 6458
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 372
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    .line 374
    iget v1, p0, Lcom/sleepycat/b/g/ab;->f:I

    iget v3, p0, Lcom/sleepycat/b/g/ab;->g:I

    if-ne v1, v3, :cond_8

    move v1, v4

    .line 379
    :goto_2
    if-nez v1, :cond_9

    .line 380
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/b/g/ab;->f:I

    .line 381
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/b/g/ab;->g:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 383
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    goto :goto_0

    .line 6412
    :catch_0
    move-exception v2

    .line 6413
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6414
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6426
    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6427
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 6428
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6457
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 6458
    :try_start_8
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    .line 6457
    :cond_2
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    :catchall_1
    move-exception v2

    :try_start_9
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 383
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 7151
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 383
    throw v1

    .line 6432
    :cond_3
    :try_start_a
    instance-of v3, v2, Lcom/sleepycat/b/aa;

    if-eqz v3, :cond_5

    .line 6439
    iget-object v3, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6440
    check-cast v2, Lcom/sleepycat/b/aa;

    throw v2

    .line 6443
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    check-cast v2, Lcom/sleepycat/b/aa;

    invoke-static {v3, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 6445
    :cond_5
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_6

    .line 6446
    iget-object v5, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    move-object v0, v2

    check-cast v0, Ljava/lang/Error;

    move-object v3, v0

    invoke-virtual {v5, v3}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 6447
    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 6448
    :cond_6
    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_7

    .line 6449
    iget-object v3, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v3, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 6452
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 377
    :cond_8
    :try_start_b
    iget v1, p0, Lcom/sleepycat/b/g/ab;->f:I

    invoke-direct {p0, v1}, Lcom/sleepycat/b/g/ab;->b(I)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/g/ab;->f:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move v1, v2

    goto :goto_2

    :cond_9
    move v2, v1

    goto/16 :goto_1
.end method

.method final a(I)Z
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 476
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 477
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 7209
    iget-object v0, v0, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 479
    iget-object v4, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 8102
    iget-wide v0, v0, Lcom/sleepycat/b/g/aa;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {v4}, Lcom/sleepycat/b/g/aa;->a()V

    .line 525
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 9151
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/f/a;->a(Z)Z

    move v0, v2

    .line 522
    :goto_0
    return v0

    .line 489
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ab;->p:Z

    if-eqz v0, :cond_2

    .line 490
    iget v0, p0, Lcom/sleepycat/b/g/ab;->a:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/sleepycat/b/g/ab;->a:I

    .line 494
    :cond_1
    new-instance v0, Lcom/sleepycat/b/g/aa;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/g/aa;-><init>(ILcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 495
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/g/ab;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-virtual {v4}, Lcom/sleepycat/b/g/aa;->a()V

    .line 525
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 9151
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/f/a;->a(Z)Z

    move v0, v2

    .line 497
    goto :goto_0

    .line 500
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/sleepycat/b/g/ab;->f:I

    if-gez v0, :cond_5

    .line 501
    iget v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    iput v0, p0, Lcom/sleepycat/b/g/ab;->f:I

    .line 510
    :cond_3
    iget v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    iput v0, p0, Lcom/sleepycat/b/g/ab;->g:I

    .line 511
    iget v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/ab;->b(I)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    .line 512
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    iget v1, p0, Lcom/sleepycat/b/g/ab;->i:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aa;

    .line 513
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->e:Ljava/util/LinkedList;

    iget v5, p0, Lcom/sleepycat/b/g/ab;->i:I

    invoke-direct {p0, v5}, Lcom/sleepycat/b/g/ab;->b(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/g/aa;

    .line 515
    invoke-virtual {v0}, Lcom/sleepycat/b/g/aa;->c()V

    .line 518
    iput-object v0, p0, Lcom/sleepycat/b/g/ab;->h:Lcom/sleepycat/b/g/aa;

    .line 9102
    iget-wide v0, v1, Lcom/sleepycat/b/g/aa;->b:J

    .line 8538
    cmp-long v5, v0, v6

    if-eqz v5, :cond_4

    .line 8539
    iput-wide v0, p0, Lcom/sleepycat/b/g/ab;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    :cond_4
    invoke-virtual {v4}, Lcom/sleepycat/b/g/aa;->a()V

    .line 525
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 9151
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/f/a;->a(Z)Z

    move v0, v2

    .line 522
    goto :goto_0

    .line 504
    :cond_5
    :try_start_3
    iget v0, p0, Lcom/sleepycat/b/g/ab;->i:I

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/ab;->b(I)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/b/g/ab;->f:I

    if-ne v0, v1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->o:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    invoke-virtual {v4}, Lcom/sleepycat/b/g/aa;->a()V

    .line 525
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 9151
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/f/a;->a(Z)Z

    move v0, v3

    .line 506
    goto/16 :goto_0

    .line 524
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/sleepycat/b/g/aa;->a()V

    .line 525
    iget-object v1, p0, Lcom/sleepycat/b/g/ab;->q:Lcom/sleepycat/b/f/a;

    .line 9151
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/f/a;->a(Z)Z

    .line 524
    throw v0
.end method

.method final b(IZ)V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/ab;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/g/ab;->a(Z)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/ab;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sleepycat/b/g/ab;->d:Lcom/sleepycat/b/c/ad;

    const-string v1, "No free log buffers."

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 339
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/g/ab;->a(Z)V

    .line 341
    return-void
.end method
