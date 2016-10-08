.class public Lcom/sleepycat/b/n/z;
.super Lcom/sleepycat/b/n/q;
.source "Txn.java"

# interfaces
.implements Lcom/sleepycat/b/g/ax;


# static fields
.field public static J:I

.field static final synthetic M:Z

.field private static final f:I

.field private static final g:I


# instance fields
.field protected A:J

.field B:J

.field public C:Lcom/sleepycat/b/u;

.field public D:Lcom/sleepycat/b/u;

.field E:Z

.field F:I

.field G:I

.field public H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcom/sleepycat/b/bp;

.field public K:Lcom/sleepycat/b/g/av;

.field public L:Z

.field private N:Z

.field private O:Z

.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Lcom/sleepycat/b/au;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
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
            "Lcom/sleepycat/b/n/am;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/n/b;",
            "Lcom/sleepycat/b/n/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field public t:B

.field public u:Lcom/sleepycat/b/bq;

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/ab;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i;",
            ">;"
        }
    .end annotation
.end field

.field public volatile y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/z;->M:Z

    .line 128
    sget v0, Lcom/sleepycat/b/c/ao;->o:I

    sput v0, Lcom/sleepycat/b/n/z;->f:I

    .line 130
    sget v0, Lcom/sleepycat/b/c/ao;->m:I

    sget v1, Lcom/sleepycat/b/c/ao;->L:I

    add-int/2addr v0, v1

    sput v0, Lcom/sleepycat/b/n/z;->g:I

    .line 226
    const/16 v0, 0x2710

    sput v0, Lcom/sleepycat/b/n/z;->J:I

    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 247
    invoke-direct {p0}, Lcom/sleepycat/b/n/q;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    iput-wide v2, p0, Lcom/sleepycat/b/n/z;->y:J

    .line 169
    iput-wide v2, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 177
    iput-wide v2, p0, Lcom/sleepycat/b/n/z;->A:J

    .line 180
    iput-wide v2, p0, Lcom/sleepycat/b/n/z;->B:J

    .line 206
    iput v1, p0, Lcom/sleepycat/b/n/z;->G:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    .line 238
    iput-boolean v1, p0, Lcom/sleepycat/b/n/z;->N:Z

    .line 239
    iput-boolean v1, p0, Lcom/sleepycat/b/n/z;->O:Z

    .line 242
    iput-boolean v1, p0, Lcom/sleepycat/b/n/z;->L:Z

    .line 248
    iput-wide v2, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V
    .locals 6

    .prologue
    .line 254
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;J)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;J)V
    .locals 6

    .prologue
    .line 273
    .line 3378
    iget-boolean v2, p2, Lcom/sleepycat/b/br;->h:Z

    .line 4341
    iget-boolean v3, p2, Lcom/sleepycat/b/br;->g:Z

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/q;-><init>(Lcom/sleepycat/b/c/ad;ZZJ)V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->y:J

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 177
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->A:J

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->B:J

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/n/z;->G:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->N:Z

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->O:Z

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->L:Z

    .line 5463
    iget-boolean v0, p2, Lcom/sleepycat/b/br;->j:Z

    .line 5340
    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->E:Z

    .line 6418
    iget-boolean v0, p2, Lcom/sleepycat/b/br;->i:Z

    .line 5341
    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->h:Z

    .line 7260
    iget-object v0, p2, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 5342
    iput-object v0, p0, Lcom/sleepycat/b/n/z;->C:Lcom/sleepycat/b/u;

    .line 5343
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->C:Lcom/sleepycat/b/u;

    if-nez v0, :cond_4

    .line 5344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->O:Z

    .line 5345
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 8063
    iget-boolean v1, p2, Lcom/sleepycat/b/br;->b:Z

    if-nez v1, :cond_3

    .line 8065
    iget-boolean v1, p2, Lcom/sleepycat/b/br;->d:Z

    if-eqz v1, :cond_1

    .line 8066
    sget-object v0, Lcom/sleepycat/b/u;->c:Lcom/sleepycat/b/u;

    .line 5345
    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/n/z;->C:Lcom/sleepycat/b/u;

    .line 8123
    :goto_1
    iget-boolean v0, p2, Lcom/sleepycat/b/br;->b:Z

    .line 5349
    if-nez v0, :cond_0

    .line 8173
    iget-boolean v0, p2, Lcom/sleepycat/b/br;->c:Z

    .line 5349
    if-nez v0, :cond_0

    .line 8222
    iget-boolean v0, p2, Lcom/sleepycat/b/br;->d:Z

    .line 5349
    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->N:Z

    .line 5352
    sget-boolean v0, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->O:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->N:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8067
    :cond_1
    iget-boolean v1, p2, Lcom/sleepycat/b/br;->c:Z

    if-eqz v1, :cond_2

    .line 8068
    sget-object v0, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    goto :goto_0

    .line 8075
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8076
    sget-object v0, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    goto :goto_0

    .line 8078
    :cond_3
    sget-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    goto :goto_0

    .line 5347
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/n/z;->O:Z

    goto :goto_1

    .line 5349
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 5354
    :cond_6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 5355
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->y:J

    .line 5357
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sleepycat/b/n/z;->t:B

    .line 5358
    sget-object v0, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 5360
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5361
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    .line 5365
    :cond_7
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/br;)V

    .line 5377
    sget v0, Lcom/sleepycat/b/c/ao;->M:I

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V

    .line 5379
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->e_()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5380
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 8496
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 5380
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/n/aj;->a(Lcom/sleepycat/b/n/z;)V

    .line 276
    :cond_8
    iput-object p3, p0, Lcom/sleepycat/b/n/z;->K:Lcom/sleepycat/b/g/av;

    .line 277
    return-void
.end method

.method private B()Z
    .locals 2

    .prologue
    .line 1052
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/n/aj;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x0

    .line 1062
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private C()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/n/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1080
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/am;

    .line 15073
    iget-wide v4, v0, Lcom/sleepycat/b/n/am;->a:J

    .line 14090
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 16065
    iget-boolean v3, v0, Lcom/sleepycat/b/n/am;->b:Z

    .line 14090
    if-nez v3, :cond_0

    .line 16073
    iget-wide v4, v0, Lcom/sleepycat/b/n/am;->a:J

    .line 14092
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 14093
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14094
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1084
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private D()V
    .locals 15

    .prologue
    .line 1272
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1273
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    .line 1274
    new-instance v3, Lcom/sleepycat/b/l/al;

    invoke-direct {v3}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 1275
    iget-wide v6, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 1277
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    invoke-static {v0, v6, v7, v1}, Lcom/sleepycat/b/n/al;->a(Lcom/sleepycat/b/c/ad;JLjava/util/Map;)Lcom/sleepycat/b/n/al;

    move-result-object v14

    .line 18358
    iget-object v0, v14, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    .line 18556
    iget-wide v4, v0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 18360
    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-eqz v1, :cond_1

    .line 18361
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1285
    :goto_1
    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 19515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 1287
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v2, v14, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    iget-object v4, v14, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    iget-object v5, v14, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v5

    iget-object v8, v14, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    .line 19556
    iget-wide v8, v8, Lcom/sleepycat/b/g/a/k;->e:J

    .line 1287
    iget-object v10, v14, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    .line 19560
    iget-boolean v10, v10, Lcom/sleepycat/b/g/a/k;->f:Z

    .line 1287
    invoke-static/range {v0 .. v10}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZ)V

    .line 1298
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->w()Z

    move-result v0

    .line 20347
    iget-object v1, v14, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20351
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 20371
    iget-object v5, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 20353
    if-eqz v0, :cond_2

    .line 20354
    iget-object v0, v14, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    .line 20723
    iget v0, v0, Lcom/sleepycat/b/l/y;->g:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 20354
    iget-object v1, v14, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v5, v6, v7, v0, v1}, Lcom/sleepycat/b/g/am;->a(JILcom/sleepycat/b/c/i;)V

    .line 1302
    :cond_0
    :goto_2
    iget-object v0, v14, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/a/k;->m()Lcom/sleepycat/b/n/z;

    move-result-object v0

    .line 22421
    iget-wide v6, v0, Lcom/sleepycat/b/n/z;->z:J

    goto :goto_0

    .line 18363
    :cond_1
    new-instance v1, Lcom/sleepycat/b/n/ae;

    iget-object v2, v14, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/n/ae;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/a/k;)V

    .line 18364
    invoke-interface {v13, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 20360
    :cond_2
    const/4 v8, 0x0

    iget-object v0, v14, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    .line 21723
    iget v0, v0, Lcom/sleepycat/b/l/y;->g:I

    const v1, 0x7fffffff

    and-int v9, v0, v1

    .line 20360
    iget-object v10, v14, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;Z)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LSN="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1306
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    const-string v3, "Txn"

    const-string v4, "undo"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1308
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 1309
    throw v0

    .line 1310
    :catch_1
    move-exception v0

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Txn undo for LSN="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1319
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 1320
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->y()I

    .line 1324
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->c(Z)V

    .line 1327
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1328
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->a(Ljava/util/Set;)V

    .line 1335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->p:Ljava/util/Map;

    .line 1336
    return-void
.end method

.method private declared-synchronized E()V
    .locals 1

    .prologue
    .line 1559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    .line 1561
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    .line 1562
    sget v0, Lcom/sleepycat/b/c/ao;->p:I

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    :cond_0
    monitor-exit p0

    return-void

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private F()Z
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/w;Ljava/util/Collection;)Lcom/sleepycat/b/g/al;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/w;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/n/am;",
            ">;)",
            "Lcom/sleepycat/b/g/al;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 950
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 13371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 951
    sget-boolean v1, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->B()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 953
    :cond_0
    new-instance v7, Lcom/sleepycat/b/g/a/e;

    new-instance v1, Lcom/sleepycat/b/n/ah;

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->z:J

    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->i()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/n/ah;-><init>(JJI)V

    invoke-direct {v7, v1}, Lcom/sleepycat/b/g/a/e;-><init>(Lcom/sleepycat/b/n/ah;)V

    .line 958
    new-instance v1, Lcom/sleepycat/b/g/al;

    invoke-direct {v1}, Lcom/sleepycat/b/g/al;-><init>()V

    .line 959
    iput-object v7, v1, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 960
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    iput-object v2, v1, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    .line 961
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->K:Lcom/sleepycat/b/g/av;

    iput-object v2, v1, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 963
    new-instance v2, Lcom/sleepycat/b/g/ad;

    invoke-direct {v2}, Lcom/sleepycat/b/g/ad;-><init>()V

    .line 964
    iput-object p2, v2, Lcom/sleepycat/b/g/ad;->f:Ljava/util/Collection;

    .line 966
    sget-object v3, Lcom/sleepycat/b/n/z$1;->a:[I

    invoke-virtual {p1}, Lcom/sleepycat/b/w;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 979
    iput-boolean v8, v2, Lcom/sleepycat/b/g/ad;->b:Z

    .line 980
    iput-boolean v8, v2, Lcom/sleepycat/b/g/ad;->d:Z

    .line 14041
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14042
    new-instance v0, Lcom/sleepycat/b/bo;

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    const-string v2, "Thread interrupted prior to logging the commit"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    throw v0

    .line 969
    :pswitch_0
    iput-boolean v9, v2, Lcom/sleepycat/b/g/ad;->b:Z

    .line 970
    iput-boolean v9, v2, Lcom/sleepycat/b/g/ad;->d:Z

    goto :goto_0

    .line 974
    :pswitch_1
    iput-boolean v9, v2, Lcom/sleepycat/b/g/ad;->b:Z

    .line 975
    iput-boolean v8, v2, Lcom/sleepycat/b/g/ad;->d:Z

    goto :goto_0

    .line 14045
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->n()V

    .line 993
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    return-object v1

    .line 995
    :catch_0
    move-exception v0

    .line 1007
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    const-string v2, "Unexpected non-fatal exception while logging commit"

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    :catchall_0
    move-exception v0

    .line 1026
    sget-object v1, Lcom/sleepycat/b/bq;->b:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 1025
    throw v0

    .line 1014
    :cond_2
    :try_start_2
    throw v0

    .line 1015
    :catch_1
    move-exception v0

    .line 1017
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1018
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/sleepycat/b/n/z;

    sget-object v1, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V

    return-object v0
.end method

.method static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/n/z;
    .locals 3

    .prologue
    .line 318
    const/4 v1, 0x0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9106
    iget-boolean v0, p2, Lcom/sleepycat/b/g/av;->h:Z

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v1

    .line 326
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/b/n/z;->L:Z

    .line 333
    return-object v1

    .line 323
    :cond_0
    new-instance v0, Lcom/sleepycat/b/n/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    if-eqz v1, :cond_1

    .line 329
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/n/z;->b(Z)V

    .line 331
    :cond_1
    throw v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 1650
    iget v0, p0, Lcom/sleepycat/b/n/z;->F:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/b/n/z;->F:I

    .line 1651
    iget v0, p0, Lcom/sleepycat/b/n/z;->G:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/b/n/z;->G:I

    .line 1652
    iget v0, p0, Lcom/sleepycat/b/n/z;->G:I

    sget v1, Lcom/sleepycat/b/n/z;->J:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/sleepycat/b/n/z;->G:I

    sget v1, Lcom/sleepycat/b/n/z;->J:I

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    .line 1654
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 26508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 1654
    iget v1, p0, Lcom/sleepycat/b/n/z;->G:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->d(J)V

    .line 1655
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/n/z;->G:I

    .line 1657
    :cond_1
    return-void
.end method

.method private declared-synchronized a(Lcom/sleepycat/b/bq;)V
    .locals 1

    .prologue
    .line 2039
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    monitor-exit p0

    return-void

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 1591
    const/4 v0, 0x0

    .line 1592
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1593
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    .line 1594
    sget v0, Lcom/sleepycat/b/c/ao;->n:I

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1598
    sget v1, Lcom/sleepycat/b/n/z;->f:I

    add-int/2addr v0, v1

    .line 1599
    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V

    .line 1600
    return-void
.end method

.method private static a([Lcom/sleepycat/b/n/ab;Lcom/sleepycat/b/n/ab;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1549
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 1550
    iget-object v4, v3, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    .line 24496
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1550
    iget-object v5, p1, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    .line 25496
    iget-object v5, v5, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1550
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lcom/sleepycat/b/n/ab;->b:Z

    iget-boolean v4, p1, Lcom/sleepycat/b/n/ab;->b:Z

    if-eq v3, v4, :cond_1

    .line 1552
    const/4 v0, 0x1

    .line 1555
    :cond_0
    return v0

    .line 1549
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    .locals 2

    .prologue
    .line 286
    invoke-static {p0, p1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v0

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/n/z;->L:Z

    .line 288
    return-object v0
.end method

.method public static c(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 301
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    throw v0
.end method

.method private e(Z)J
    .locals 12

    .prologue
    const/4 v7, 0x1

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    .line 1155
    .line 1156
    invoke-virtual {p0, v8}, Lcom/sleepycat/b/n/z;->a(Z)V

    .line 1160
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1161
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->b_(Z)V

    .line 1168
    sget-object v0, Lcom/sleepycat/b/bq;->e:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 1171
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->f_()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1172
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->n_()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1174
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->B()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1189
    :catchall_0
    move-exception v0

    move v1, v7

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1191
    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 1192
    :try_start_5
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->o_()V

    .line 1203
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->D()V

    .line 1191
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1251
    :catchall_2
    move-exception v0

    invoke-virtual {p0, v8}, Lcom/sleepycat/b/n/z;->b(Z)V

    .line 1253
    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->B:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    .line 1254
    invoke-static {p0}, Lcom/sleepycat/b/c/bh;->b(Lcom/sleepycat/b/n/z;)V

    .line 1251
    :cond_1
    throw v0

    .line 1175
    :cond_2
    :try_start_6
    sget-boolean v0, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->A:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->B:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1177
    :cond_4
    new-instance v0, Lcom/sleepycat/b/g/a/a;

    new-instance v1, Lcom/sleepycat/b/n/ac;

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->z:J

    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->i()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/n/ac;-><init>(JJI)V

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/a/a;-><init>(Lcom/sleepycat/b/n/ac;)V

    .line 1181
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 16371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1181
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->K:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->B:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v7

    .line 1189
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1191
    if-eqz v1, :cond_5

    .line 1192
    :try_start_8
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->o_()V

    .line 1203
    :cond_5
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->D()V

    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->d(Z)V

    .line 1213
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1214
    :try_start_9
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->F()Z

    move-result v1

    .line 1215
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 17515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 1216
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1217
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Abort: id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " openCursors= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1223
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->x:Ljava/util/Set;

    if-eqz v0, :cond_8

    .line 1224
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i;

    .line 18037
    invoke-virtual {v0}, Lcom/sleepycat/b/i;->c()V

    goto :goto_4

    .line 1235
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1181
    :cond_7
    :try_start_b
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 17371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1181
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->K:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v0

    goto :goto_2

    .line 1229
    :cond_8
    if-eqz v1, :cond_9

    .line 1230
    :try_start_c
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 1231
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detected open cursors while aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_9
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1251
    invoke-virtual {p0, v8}, Lcom/sleepycat/b/n/z;->b(Z)V

    .line 1253
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->B:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_a

    .line 1254
    invoke-static {p0}, Lcom/sleepycat/b/c/bh;->b(Lcom/sleepycat/b/n/z;)V

    .line 1258
    :cond_a
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->B:J

    return-wide v0

    .line 1191
    :catchall_4
    move-exception v0

    move v1, v8

    goto/16 :goto_1

    .line 1189
    :catchall_5
    move-exception v0

    move v1, v8

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    goto/16 :goto_0

    :cond_b
    move v1, v8

    goto/16 :goto_3
.end method


# virtual methods
.method public final A()Ljava/util/Set;
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
    .line 2391
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2392
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()I
    .locals 4

    .prologue
    .line 2082
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->z:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/sleepycat/b/n/aj;J)J
    .locals 2

    .prologue
    .line 414
    .line 9155
    iget-object v0, p1, Lcom/sleepycat/b/n/aj;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 414
    return-wide v0
.end method

.method public a(Lcom/sleepycat/b/u;)J
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 689
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/n/z;->a(Z)V

    .line 698
    iput-object p1, p0, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 702
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 703
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->b_(Z)V

    .line 704
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->F()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Transaction "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " commit failed because there were open cursors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 811
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 842
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v2, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-ne v1, v2, :cond_0

    .line 843
    sget-object v1, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 842
    :cond_0
    throw v0

    .line 714
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->f_()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 715
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->m_()V

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->y()I

    move-result v5

    .line 740
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v3, :cond_12

    .line 741
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    .line 742
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->C()Ljava/util/Collection;

    move-result-object v3

    .line 749
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->f_()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11281
    iget-object v6, p1, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    .line 750
    invoke-direct {p0, v6, v3}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/w;Ljava/util/Collection;)Lcom/sleepycat/b/g/al;

    move-result-object v3

    .line 12082
    iget-wide v6, v3, Lcom/sleepycat/b/g/al;->d:J

    .line 753
    iput-wide v6, p0, Lcom/sleepycat/b/n/z;->A:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 756
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/g/al;)V
    :try_end_5
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 775
    :cond_3
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->c(Z)V

    .line 778
    if-lez v4, :cond_4

    .line 779
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->x()V

    .line 781
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    .line 784
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->p:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/b/n/z;->p:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 785
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    iget-object v6, p0, Lcom/sleepycat/b/n/z;->p:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sleepycat/b/c/ad;->a(Ljava/util/Collection;)V

    .line 787
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->p:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 12165
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 12515
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 12166
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 12168
    const-string v7, " Commit: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12169
    const-string v7, " numWriteLocks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12170
    const-string v4, " numReadLocks = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12171
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 790
    :cond_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 797
    const/4 v3, 0x1

    :try_start_7
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->d(Z)V

    .line 803
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->b(Z)V

    .line 805
    if-nez v0, :cond_10

    .line 806
    invoke-static {p0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/z;)V

    .line 807
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->A:J
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 842
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v3, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-ne v2, v3, :cond_7

    .line 843
    sget-object v2, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v2}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 807
    :cond_7
    return-wide v0

    .line 757
    :catch_1
    move-exception v0

    .line 758
    :try_start_8
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v6, Lcom/sleepycat/b/bq;->d:Lcom/sleepycat/b/bq;

    if-ne v3, v6, :cond_8

    .line 759
    const-string v3, "postLogCommitHook may not set MUST_ABORT"

    invoke-static {v3, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 764
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/n;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 765
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 812
    :catch_2
    move-exception v0

    .line 813
    :try_start_9
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v3

    if-nez v3, :cond_9

    .line 815
    throw v0

    .line 817
    :cond_9
    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->A:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_a

    .line 819
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed after commiting transaction "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " during post transaction cleanup.Original exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 834
    :cond_a
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/n/z;->a(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 13281
    :try_start_a
    iget-object v3, p1, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    .line 12882
    sget-object v4, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    if-ne v3, v4, :cond_c

    :goto_1
    invoke-direct {p0, v1}, Lcom/sleepycat/b/n/z;->e(Z)J

    .line 12883
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    const-string v2, "Txn"

    const-string v3, "commit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Commit of transaction "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 12916
    :goto_2
    :try_start_b
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->g()V

    .line 12923
    instance-of v1, v0, Lcom/sleepycat/b/n;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_f

    .line 12925
    :cond_b
    throw v0

    :cond_c
    move v1, v2

    .line 12882
    goto :goto_1

    .line 12886
    :catch_3
    move-exception v0

    .line 12887
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 12888
    throw v0

    .line 12889
    :catch_4
    move-exception v1

    .line 12890
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v2

    if-nez v2, :cond_d

    .line 12892
    throw v1

    .line 12894
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed while attempting to commit transaction "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The attempt to abort also failed. The original exception seen from commit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The exception from the cleanup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12900
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->B:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_e

    .line 12902
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    sget-object v4, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 12913
    :cond_e
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2

    .line 12929
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while attempting to commit transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aborted instead. Original exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 842
    :cond_10
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v2, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-ne v1, v2, :cond_11

    .line 843
    sget-object v1, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 846
    :cond_11
    throw v0

    :cond_12
    move-object v3, v0

    move v4, v2

    goto/16 :goto_0
.end method

.method public a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 13

    .prologue
    .line 512
    const-wide/16 v8, 0x0

    .line 513
    if-nez p4, :cond_0

    iget-boolean v2, p0, Lcom/sleepycat/b/n/z;->m:Z

    if-eqz v2, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 514
    :goto_0
    monitor-enter p0

    .line 515
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/n/z;->b_(Z)V

    .line 516
    if-nez v10, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->r_()J

    move-result-wide v8

    .line 519
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->j:Lcom/sleepycat/b/n/l;

    move-wide v4, p1

    move-object v6, p0

    move-object/from16 v7, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lcom/sleepycat/b/n/l;->a(JLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;JZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/h;

    move-result-object v3

    .line 526
    const/4 v2, 0x0

    .line 527
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 528
    sget-object v4, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-eq v3, v4, :cond_2

    .line 9161
    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/sleepycat/b/n/o;->h:Z

    .line 528
    if-eqz v4, :cond_2

    .line 529
    monitor-enter p0

    .line 530
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/n/am;

    .line 532
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    .line 9496
    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 532
    move-object/from16 v0, p6

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    :cond_2
    new-instance v4, Lcom/sleepycat/b/n/m;

    invoke-direct {v4, v3, v2}, Lcom/sleepycat/b/n/m;-><init>(Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/am;)V

    return-object v4

    .line 513
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 533
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 1620
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    sget v0, Lcom/sleepycat/b/n/z;->f:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1623
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    sget v0, Lcom/sleepycat/b/n/z;->g:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/au;)V
    .locals 1

    .prologue
    .line 1886
    sget-boolean v0, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1887
    :cond_0
    sget-object v0, Lcom/sleepycat/b/bq;->d:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 1888
    iput-object p1, p0, Lcom/sleepycat/b/n/z;->b:Lcom/sleepycat/b/au;

    .line 1889
    return-void
.end method

.method public a(Lcom/sleepycat/b/br;)V
    .locals 0

    .prologue
    .line 2250
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 1828
    return-void
.end method

.method public declared-synchronized a(Lcom/sleepycat/b/c/i;)V
    .locals 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->E()V

    .line 547
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    .line 10496
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 547
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/i;Z)V
    .locals 3

    .prologue
    .line 1460
    monitor-enter p0

    const/4 v0, 0x0

    .line 1461
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1462
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    .line 1463
    sget v0, Lcom/sleepycat/b/c/ao;->n:I

    add-int/lit8 v0, v0, 0x0

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    new-instance v2, Lcom/sleepycat/b/n/ab;

    invoke-direct {v2, p1, p2}, Lcom/sleepycat/b/n/ab;-><init>(Lcom/sleepycat/b/c/i;Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1468
    sget v1, Lcom/sleepycat/b/c/ao;->o:I

    sget v2, Lcom/sleepycat/b/c/ao;->j:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1470
    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    monitor-exit p0

    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/sleepycat/b/g/al;)V
    .locals 0

    .prologue
    .line 2302
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i;)V
    .locals 1

    .prologue
    .line 1812
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->L:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1819
    :goto_0
    monitor-exit p0

    return-void

    .line 1815
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->x:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 1816
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->x:Ljava/util/Set;

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1812
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/sleepycat/b/n/b;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V
    .locals 2

    .prologue
    .line 1573
    monitor-enter p0

    .line 26161
    :try_start_0
    iget-boolean v0, p2, Lcom/sleepycat/b/n/o;->h:Z

    .line 1573
    if-eqz v0, :cond_2

    .line 1575
    invoke-direct {p0}, Lcom/sleepycat/b/n/z;->E()V

    .line 1576
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/b/n/am;

    invoke-direct {v1}, Lcom/sleepycat/b/n/am;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    sget v0, Lcom/sleepycat/b/n/z;->g:I

    add-int/lit8 v0, v0, 0x0

    .line 1579
    sget-object v1, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    if-ne p3, v1, :cond_1

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1582
    sget v1, Lcom/sleepycat/b/n/z;->f:I

    sub-int/2addr v0, v1

    .line 1584
    :cond_1
    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :goto_0
    monitor-exit p0

    return-void

    .line 1586
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/z;->a(Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 2130
    const-string v0, "<txn id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29169
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 2131
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2132
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    const-string v0, "</txn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 2101
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 2102
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 2103
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2120
    if-ge p2, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/n/z;->k:J

    .line 2121
    if-ge p2, v3, :cond_1

    :goto_1
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 2122
    return-void

    :cond_0
    move v0, v2

    .line 2120
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2121
    goto :goto_1
.end method

.method public final a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1381
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1386
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1387
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    .line 1388
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1392
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 2483
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2151
    instance-of v1, p1, Lcom/sleepycat/b/n/z;

    if-nez v1, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    check-cast p1, Lcom/sleepycat/b/n/z;

    iget-wide v4, p1, Lcom/sleepycat/b/n/z;->k:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/n;)Z
    .locals 1

    .prologue
    .line 2348
    const/4 v0, 0x0

    return v0
.end method

.method public final a_(Z)V
    .locals 1

    .prologue
    .line 1787
    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->L:Z

    if-nez v0, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1792
    :cond_0
    if-eqz p1, :cond_1

    .line 1793
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->m()J

    goto :goto_0

    .line 1795
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->o()J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 2142
    .line 30169
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 2142
    return-wide v0
.end method

.method final declared-synchronized b(J)V
    .locals 3

    .prologue
    .line 1637
    monitor-enter p0

    const/4 v0, 0x0

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1640
    const/4 v0, 0x1

    .line 1641
    sget v1, Lcom/sleepycat/b/n/z;->g:I

    rsub-int/lit8 v1, v1, 0x0

    invoke-direct {p0, v1}, Lcom/sleepycat/b/n/z;->a(I)V

    .line 1644
    :cond_0
    sget-boolean v1, Lcom/sleepycat/b/n/z;->M:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find lock for Node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in writeInfo Map."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1646
    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1647
    monitor-exit p0

    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 1837
    return-void
.end method

.method final b(Lcom/sleepycat/b/n/b;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    return-void
.end method

.method public final b(Lcom/sleepycat/b/n/q;)V
    .locals 2

    .prologue
    .line 1921
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/z;->c(Lcom/sleepycat/b/n/q;)V

    .line 1949
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/b;

    .line 1951
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/b;->c(Lcom/sleepycat/b/n/q;)V

    goto :goto_0

    .line 1954
    :cond_0
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 2110
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 2111
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 2011
    if-eqz p1, :cond_2

    .line 2013
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v1, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-ne v0, v1, :cond_0

    .line 2014
    sget-object v0, Lcom/sleepycat/b/bq;->c:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    .line 2032
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 27496
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 28212
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 28214
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28217
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->b:Lcom/sleepycat/b/c/ad;

    .line 28508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 28663
    iget v2, p0, Lcom/sleepycat/b/n/z;->F:I

    iget v3, p0, Lcom/sleepycat/b/n/z;->G:I

    sub-int/2addr v2, v3

    .line 28217
    rsub-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->d(J)V

    .line 28219
    if-eqz p1, :cond_3

    .line 28220
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->j:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 28721
    :goto_1
    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->E:Z

    .line 28224
    if-eqz v0, :cond_1

    .line 28225
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28228
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 2035
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->j()V

    .line 2036
    return-void

    .line 2018
    :cond_2
    sget-object v0, Lcom/sleepycat/b/bq;->e:Lcom/sleepycat/b/bq;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/bq;)V

    goto :goto_0

    .line 28222
    :cond_3
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/b/n/aj;->k:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 28228
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final b_(Z)V
    .locals 4

    .prologue
    .line 1969
    sget-object v0, Lcom/sleepycat/b/n/z$1;->b:[I

    iget-object v1, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    invoke-virtual {v1}, Lcom/sleepycat/b/bq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2001
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1977
    :pswitch_0
    if-eqz p1, :cond_0

    .line 1978
    :pswitch_1
    return-void

    .line 1990
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->b:Lcom/sleepycat/b/au;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/n/z;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be aborted, caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/n/z;->b:Lcom/sleepycat/b/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/au;->b(Ljava/lang/String;)Lcom/sleepycat/b/au;

    move-result-object v0

    throw v0

    .line 1969
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Z)V
    .locals 3

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1488
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ab;

    .line 1490
    iget-boolean v2, v0, Lcom/sleepycat/b/n/ab;->b:Z

    if-ne v2, p1, :cond_0

    .line 1491
    iget-object v0, v0, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->B()V

    goto :goto_0

    .line 1495
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->E:Z

    return v0
.end method

.method public d()Lcom/sleepycat/b/d;
    .locals 1

    .prologue
    .line 2333
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Z)V
    .locals 6

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 1517
    monitor-enter p0

    .line 1518
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Lcom/sleepycat/b/n/ab;

    .line 1519
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1520
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1522
    iget-boolean v4, v3, Lcom/sleepycat/b/n/ab;->b:Z

    if-ne v4, p1, :cond_2

    .line 1529
    invoke-static {v1, v3}, Lcom/sleepycat/b/n/z;->a([Lcom/sleepycat/b/n/ab;Lcom/sleepycat/b/n/ab;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1530
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 23379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1530
    iget-object v5, v3, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1533
    :cond_0
    iget-object v3, v3, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->C()V

    .line 1521
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1520
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1534
    :cond_2
    invoke-static {v1, v3}, Lcom/sleepycat/b/n/z;->a([Lcom/sleepycat/b/n/ab;Lcom/sleepycat/b/n/ab;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1540
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 24379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1540
    iget-object v3, v3, Lcom/sleepycat/b/n/ab;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_1

    .line 1543
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    .line 1545
    :cond_4
    return-void
.end method

.method public final e()Lcom/sleepycat/b/n/z;
    .locals 0

    .prologue
    .line 1754
    return-object p0
.end method

.method public final declared-synchronized e(J)V
    .locals 5

    .prologue
    .line 1422
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/b/n/z;->z:J

    .line 1430
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->y:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1431
    iput-wide p1, p0, Lcom/sleepycat/b/n/z;->y:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1433
    :cond_0
    monitor-exit p0

    return-void

    .line 1422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public final f(J)Lcom/sleepycat/b/n/am;
    .locals 3

    .prologue
    .line 1687
    const/4 v0, 0x0

    .line 1688
    monitor-enter p0

    .line 1689
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/am;

    .line 1692
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    if-nez v0, :cond_1

    .line 1695
    const-string v0, "writeInfo is null in Txn.getWriteLockInfo"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1692
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1698
    :cond_1
    return-object v0
.end method

.method public final f()Lcom/sleepycat/b/n/q;
    .locals 0

    .prologue
    .line 1763
    return-object p0
.end method

.method public f_()Z
    .locals 4

    .prologue
    .line 1449
    iget-wide v0, p0, Lcom/sleepycat/b/n/z;->z:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 2321
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1778
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2062
    const/4 v0, 0x0

    return v0
.end method

.method public final i_()Z
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x1

    return v0
.end method

.method public final j_()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/sleepycat/b/n/z;->h:Z

    return v0
.end method

.method public final k_()V
    .locals 0

    .prologue
    .line 1771
    return-void
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x1

    return v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->C:Lcom/sleepycat/b/u;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 2281
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->o()J

    goto :goto_0
.end method

.method public n_()V
    .locals 0

    .prologue
    .line 2308
    return-void
.end method

.method public o()J
    .locals 2

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/n/z;->e(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public o_()V
    .locals 0

    .prologue
    .line 2325
    return-void
.end method

.method public final p_()Lcom/sleepycat/b/bp;
    .locals 1

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->I:Lcom/sleepycat/b/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/z;->I:Lcom/sleepycat/b/bp;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/n/aa;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/n/aa;-><init>(Lcom/sleepycat/b/n/z;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->I:Lcom/sleepycat/b/bp;

    goto :goto_0
.end method

.method public q_()Z
    .locals 1

    .prologue
    .line 2492
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 1908
    iget-byte v0, p0, Lcom/sleepycat/b/n/z;->t:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v1, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 482
    iget-byte v0, p0, Lcom/sleepycat/b/n/z;->t:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()V
    .locals 6

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 857
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    goto :goto_1

    .line 859
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->d:Ljava/util/Map;

    goto :goto_0
.end method

.method public final y()I
    .locals 6

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1401
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 1403
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1404
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1406
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    goto :goto_0

    .line 1408
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/z;->c:Ljava/util/Set;

    move v0, v1

    .line 1410
    :cond_1
    return v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v1, Lcom/sleepycat/b/bq;->a:Lcom/sleepycat/b/bq;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    sget-object v1, Lcom/sleepycat/b/bq;->d:Lcom/sleepycat/b/bq;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
