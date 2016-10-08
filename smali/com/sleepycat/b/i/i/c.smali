.class public Lcom/sleepycat/b/i/i/c;
.super Ljava/lang/Object;
.source "VLSNBucket.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field protected a:Lcom/sleepycat/b/p/au;

.field protected b:Lcom/sleepycat/b/p/au;

.field c:Z

.field d:Z

.field private final f:J

.field private final g:I

.field private h:J

.field private i:Lcom/sleepycat/b/i/i/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/i/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/sleepycat/b/i/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/c;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(JIIILcom/sleepycat/b/p/au;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 106
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 133
    iput-boolean v2, p0, Lcom/sleepycat/b/i/i/c;->d:Z

    .line 140
    iput-wide p1, p0, Lcom/sleepycat/b/i/i/c;->f:J

    .line 141
    iput p3, p0, Lcom/sleepycat/b/i/i/c;->g:I

    .line 142
    iput p4, p0, Lcom/sleepycat/b/i/i/c;->j:I

    .line 143
    iput p5, p0, Lcom/sleepycat/b/i/i/c;->k:I

    .line 150
    iput-object p6, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 151
    iput-object p6, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 157
    new-instance v0, Lcom/sleepycat/b/i/i/d;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/d;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    .line 158
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/b/i/i/d;->add(ILjava/lang/Object;)V

    .line 159
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/a/a/l;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v1, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 106
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v1, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 107
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 133
    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->d:Z

    .line 163
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    .line 164
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->i()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/i/i/c;->g:I

    .line 165
    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 166
    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 167
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 168
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->i()I

    move-result v1

    .line 169
    new-instance v2, Lcom/sleepycat/b/i/i/d;

    invoke-direct {v2, v1}, Lcom/sleepycat/b/i/i/d;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    .line 170
    :goto_0
    if-ge v0, v1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->f(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/b/i/i/d;->add(ILjava/lang/Object;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/a/a/l;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;-><init>(Lcom/sleepycat/a/a/l;)V

    return-void
.end method

.method private a(IZ)I
    .locals 2

    .prologue
    .line 443
    if-eqz p2, :cond_2

    move v1, p1

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    :goto_1
    return v1

    .line 444
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    .line 450
    :goto_2
    if-ltz v1, :cond_3

    .line 451
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 450
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    move v1, p1

    .line 456
    goto :goto_1
.end method

.method public static a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;
    .locals 2

    .prologue
    .line 899
    new-instance v0, Lcom/sleepycat/b/i/i/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/i/e;-><init>(B)V

    .line 900
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/i/e;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/i/c;

    .line 901
    return-object v0
.end method

.method private g(Lcom/sleepycat/b/p/au;)Z
    .locals 4

    .prologue
    .line 251
    .line 2101
    iget-wide v0, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 251
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 251
    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/sleepycat/b/p/au;)I
    .locals 4

    .prologue
    .line 256
    sget-boolean v0, Lcom/sleepycat/b/i/i/c;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->g(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t call getIndex on non-modulo VLSN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4101
    :cond_0
    iget-wide v0, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 259
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 5101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 259
    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Lcom/sleepycat/b/p/au;)I
    .locals 4

    .prologue
    .line 433
    .line 6101
    iget-wide v0, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 433
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 7101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 433
    sub-long/2addr v0, v2

    .line 434
    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/sleepycat/b/p/au;)J
    .locals 4

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 402
    const/4 v0, 0x0

    .line 411
    :goto_1
    if-gez v0, :cond_2

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vlsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 404
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->i(Lcom/sleepycat/b/p/au;)I

    move-result v0

    goto :goto_1

    .line 418
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 419
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    goto :goto_0

    .line 421
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/i/i/c;->a(IZ)I

    move-result v0

    .line 422
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 423
    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/j;->a(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method a(Lcom/sleepycat/a/a/m;)V
    .locals 4

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 954
    iget v0, p0, Lcom/sleepycat/b/i/i/c;->g:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/a/a/m;->c(I)Lcom/sleepycat/a/a/m;

    .line 955
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 13101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 955
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 956
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 14101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 956
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 957
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 958
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/a/a/m;->c(I)Lcom/sleepycat/a/a/m;

    .line 959
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 960
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/b/p/j;->a(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/a/a/m;->b(J)Lcom/sleepycat/a/a/m;

    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)V
    .locals 2

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    if-nez v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    const/4 v1, 0x0

    .line 836
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p2, p3, v0}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 839
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    goto :goto_0

    .line 841
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 842
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 841
    :cond_2
    throw v0
.end method

.method final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 871
    iget-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 875
    :cond_0
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 876
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 878
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 11101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 878
    invoke-static {v2, v3, v0}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 879
    new-instance v2, Lcom/sleepycat/b/i/i/e;

    invoke-direct {v2, v4}, Lcom/sleepycat/b/i/i/e;-><init>(B)V

    .line 880
    invoke-virtual {v2, p0, v1}, Lcom/sleepycat/b/i/i/e;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 11391
    iget-object v2, p2, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 12263
    iput-boolean v4, v2, Lcom/sleepycat/b/c/c;->i:Z

    .line 883
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 885
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_1

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write VLSNBucket for file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 890
    :cond_1
    iput-boolean v4, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized a(Lcom/sleepycat/b/p/au;J)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v1

    .line 243
    :goto_0
    monitor-exit p0

    return v0

    .line 1267
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/sleepycat/b/i/i/c;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "firstVLSN = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1269
    :cond_1
    :try_start_2
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/b/i/i/c;->f:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v1

    .line 211
    :goto_1
    if-nez v0, :cond_7

    move v0, v1

    .line 212
    goto :goto_0

    .line 1274
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/b/i/i/c;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1282
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gtz v0, :cond_6

    .line 1286
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->g(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    .line 1287
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v3

    iget v4, p0, Lcom/sleepycat/b/i/i/c;->j:I

    if-lt v3, v4, :cond_3

    move v0, v1

    .line 1289
    goto :goto_1

    .line 1296
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->h(Lcom/sleepycat/b/p/au;)I

    move-result v0

    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v3

    if-eq v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_6

    .line 1299
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1300
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v0}, Lcom/sleepycat/b/p/j;->a(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/sleepycat/b/i/i/c;->k:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    move v0, v1

    .line 1304
    goto :goto_1

    :cond_6
    move v0, v2

    .line 1308
    goto :goto_1

    .line 219
    :cond_7
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->g(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 220
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->h(Lcom/sleepycat/b/p/au;)I

    move-result v1

    .line 221
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    .line 222
    if-ge v1, v0, :cond_b

    .line 223
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->f(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/i/i/d;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    .line 236
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_9

    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 238
    :cond_9
    iput-object p1, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 239
    iput-wide p2, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    :cond_a
    move v0, v2

    .line 243
    goto/16 :goto_0

    .line 224
    :cond_b
    if-ne v1, v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->f(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :cond_c
    :goto_3
    if-ge v0, v1, :cond_d

    .line 228
    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/i/i/d;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 230
    :cond_d
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->f(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method b()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->f:J

    return-wide v0
.end method

.method public declared-synchronized b(Lcom/sleepycat/b/p/au;)J
    .locals 4

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 485
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 8101
    :cond_0
    :try_start_1
    iget-wide v0, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 488
    iget-object v2, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 9101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 488
    sub-long/2addr v0, v2

    .line 494
    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 495
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 499
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/i/i/c;->a(IZ)I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 502
    sget-boolean v1, Lcom/sleepycat/b/i/i/c;->e:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bucket should always have a non-null first offset. vlsn= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 505
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/j;->a(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method b(Lcom/sleepycat/b/p/au;J)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    .line 739
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 750
    iput-wide v4, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 751
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->clear()V

    goto :goto_0

    .line 756
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->i(Lcom/sleepycat/b/p/au;)I

    move-result v0

    .line 764
    if-gtz v0, :cond_3

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteIndex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startOfDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 778
    cmp-long v1, p2, v4

    if-nez v1, :cond_4

    .line 779
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/b/i/i/c;->a(IZ)I

    move-result v1

    .line 781
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_4

    .line 782
    add-int/lit8 v0, v1, 0x1

    .line 785
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/d;->a(I)V

    .line 801
    :cond_5
    :goto_1
    cmp-long v0, p2, v4

    if-nez v0, :cond_8

    .line 802
    new-instance v0, Lcom/sleepycat/b/p/au;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sleepycat/b/i/i/c;->g:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    .line 10101
    iget-wide v4, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 802
    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 804
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 805
    sget-boolean v1, Lcom/sleepycat/b/i/i/c;->e:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 791
    :cond_6
    cmp-long v0, p2, v4

    if-nez v0, :cond_5

    .line 792
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 793
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/b/i/i/c;->a(IZ)I

    move-result v1

    .line 794
    if-ge v1, v0, :cond_5

    .line 795
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/d;->a(I)V

    goto :goto_1

    .line 806
    :cond_7
    iget-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J

    .line 811
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/i/c;->c:Z

    goto/16 :goto_0

    .line 808
    :cond_8
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    .line 809
    iput-wide p2, p0, Lcom/sleepycat/b/i/i/c;->h:J

    goto :goto_2
.end method

.method public c()J
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->f:J

    return-wide v0
.end method

.method public declared-synchronized c(Lcom/sleepycat/b/p/au;)J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 514
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/i/i/c;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vlsn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 516
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 520
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->g(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_2

    move-wide v0, v2

    .line 521
    goto :goto_0

    .line 524
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/c;->h(Lcom/sleepycat/b/p/au;)I

    move-result v0

    .line 525
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    move-wide v0, v2

    .line 526
    goto :goto_0

    .line 529
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 530
    if-nez v0, :cond_4

    move-wide v0, v2

    .line 531
    goto :goto_0

    .line 534
    :cond_4
    iget-wide v2, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/j;->a(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method final declared-synchronized d()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lcom/sleepycat/b/p/au;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 317
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final e(Lcom/sleepycat/b/p/au;)Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized f()Z
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/i/i/c;->h()Z
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

.method public final f(Lcom/sleepycat/b/p/au;)Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized g()J
    .locals 2

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/c;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 914
    const-string v1, "<VLSNBucket fileNum=%d(0x%x) numOffsets=%d stride=%d firstVLSN=%s lastVLSN=%s lastLsn=%s/>"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sleepycat/b/i/i/c;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget v3, p0, Lcom/sleepycat/b/i/i/c;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->a:Lcom/sleepycat/b/p/au;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/sleepycat/b/i/i/c;->b:Lcom/sleepycat/b/p/au;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/sleepycat/b/i/i/c;->h:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/c;->i:Lcom/sleepycat/b/i/i/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/d;->size()I

    move-result v0

    goto :goto_0
.end method
