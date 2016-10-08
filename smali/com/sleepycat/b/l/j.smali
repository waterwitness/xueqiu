.class public Lcom/sleepycat/b/l/j;
.super Lcom/sleepycat/b/l/ac;
.source "IN.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/l/ac;",
        "Lcom/sleepycat/b/g/at;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/l/j;",
        ">;"
    }
.end annotation


# static fields
.field public static o:I

.field static final synthetic p:Z


# instance fields
.field private a:I

.field private b:Lcom/sleepycat/b/l/r;

.field public c:J

.field protected d:Lcom/sleepycat/b/f/f;

.field public e:J

.field public f:I

.field public g:[B

.field public h:[B

.field public i:Lcom/sleepycat/b/c/i;

.field public j:I

.field public k:J

.field public l:Z

.field public m:J

.field public n:I

.field private q:Lcom/sleepycat/b/l/l;

.field private r:[B

.field private s:J

.field private t:[B

.field private u:[J

.field private v:Lcom/sleepycat/b/a/v;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    .line 253
    const/16 v0, 0x3e8

    sput v0, Lcom/sleepycat/b/l/j;->o:I

    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Lcom/sleepycat/b/l/ac;-><init>()V

    .line 223
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 245
    iput v2, p0, Lcom/sleepycat/b/l/j;->n:I

    .line 259
    const/4 v0, 0x0

    sget-object v1, Lcom/sleepycat/b/l/w;->b:[B

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/c/i;[BII)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;[BII)V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/sleepycat/b/l/ac;-><init>()V

    .line 223
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/j;->n:I

    .line 5133
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 5396
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 6081
    iget-object v0, v0, Lcom/sleepycat/b/c/as;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 270
    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 6496
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 6614
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6615
    const/high16 v0, 0x20000

    or-int/2addr v0, p4

    .line 272
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/c/i;[BII)V

    .line 274
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->d()V

    .line 275
    return-void

    .line 6617
    :cond_0
    const/high16 v0, 0x10000

    or-int/2addr v0, p4

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    const-string v1, "fetchTarget of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-nez v1, :cond_2

    .line 1489
    const-string v1, "null lsn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    :goto_0
    if-eqz p1, :cond_0

    .line 1494
    const-string v1, " parent IN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29342
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 1494
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1495
    const-string v1, " IN class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    const-string v1, " lastFullVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29468
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->m:J

    .line 1497
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v1, " lastLoggedVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    const-string v1, " parent.getDirty()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1502
    :cond_0
    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1503
    if-eqz p0, :cond_1

    .line 1504
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1491
    :cond_2
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 1262
    add-int/lit8 v0, p1, 0x1

    .line 26270
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->t:[B

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, p2, 0x0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 26271
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 26272
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1263
    return-void
.end method

.method private a(Lcom/sleepycat/b/l/j;J)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3675
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50239
    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v0

    .line 3679
    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v2, :cond_0

    .line 3680
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v2, :cond_4

    .line 3682
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    iget-object v3, p1, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50244
    iget-object v4, v3, Lcom/sleepycat/c/d;->b:[B

    .line 50245
    iget v3, v3, Lcom/sleepycat/c/d;->a:I

    .line 50240
    invoke-virtual {v2, v4, v1, v3}, Lcom/sleepycat/b/a/v;->a([BII)V

    .line 3688
    :goto_1
    iget-object v2, p1, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50246
    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v2

    .line 3688
    rsub-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 3690
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 3693
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    .line 3694
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-nez v2, :cond_1

    .line 3695
    new-instance v2, Lcom/sleepycat/b/a/v;

    invoke-direct {v2}, Lcom/sleepycat/b/a/v;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 3697
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50247
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/a/v;->d(J)Lcom/sleepycat/a/a/m;

    .line 50248
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/a/v;->d(J)Lcom/sleepycat/a/a/m;

    .line 50249
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/a/v;->a(Z)Lcom/sleepycat/a/a/m;

    .line 50250
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/a/v;->c(I)Lcom/sleepycat/a/a/m;

    .line 3701
    :cond_2
    int-to-long v2, v0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50252
    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v0

    .line 3701
    int-to-long v0, v0

    :goto_2
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 3705
    return-void

    :cond_3
    move v0, v1

    .line 3675
    goto :goto_0

    .line 3686
    :cond_4
    iget-object v2, p1, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    iput-object v2, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    goto :goto_1

    .line 3701
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method static a(Ljava/lang/StringBuilder;B)V
    .locals 2

    .prologue
    .line 4126
    const-string v0, "<knownDeleted val=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4127
    invoke-static {p1}, Lcom/sleepycat/b/l/j;->a(B)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    const-string v0, "<pendingDeleted val=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50295
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4129
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4130
    return-void

    .line 50295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([B[BI)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 877
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v1, v0, :cond_1

    .line 878
    if-ne v1, p3, :cond_0

    move-object v0, p2

    .line 879
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-static {p1, v0}, Lcom/sleepycat/b/l/j;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v3, v1, v0, p0}, Lcom/sleepycat/b/l/l;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 877
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    goto :goto_1

    .line 16623
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16624
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-nez v0, :cond_3

    move v0, v2

    .line 16625
    :goto_2
    iput-object p1, p0, Lcom/sleepycat/b/l/j;->r:[B

    .line 16627
    if-nez p1, :cond_4

    .line 16628
    :goto_3
    int-to-long v0, v0

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 883
    return-void

    .line 16624
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v0, v0

    goto :goto_2

    .line 16627
    :cond_4
    array-length v2, p1

    goto :goto_3
.end method

.method static a(B)Z
    .locals 1

    .prologue
    .line 1358
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I[B)Z
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 809
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/l/j;->b(I[B)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/sleepycat/b/g/au;)Z
    .locals 1

    .prologue
    .line 3659
    sget-object v0, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 976
    if-nez p0, :cond_0

    move v1, v2

    .line 978
    :goto_0
    if-nez v1, :cond_1

    .line 985
    :goto_1
    return-object p1

    .line 976
    :cond_0
    array-length v0, p0

    move v1, v0

    goto :goto_0

    .line 982
    :cond_1
    array-length v0, p1

    sub-int v3, v0, v1

    .line 983
    new-array v0, v3, [B

    .line 984
    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 985
    goto :goto_1
.end method

.method private b(ILcom/sleepycat/b/l/ac;J[B)V
    .locals 5

    .prologue
    .line 1815
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    .line 1816
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 1817
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;)V

    .line 1818
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    .line 31799
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 32097
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 1819
    invoke-static {p5, v0, v1}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v1

    .line 1820
    const/4 v0, 0x0

    .line 1821
    if-gez v1, :cond_0

    .line 1822
    invoke-direct {p0, p1, p5}, Lcom/sleepycat/b/l/j;->a(I[B)Z

    move-result v0

    .line 1824
    :cond_0
    if-eqz v0, :cond_1

    .line 1825
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1830
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1831
    return-void

    .line 1827
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    .line 1828
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0
.end method

.method private b(ILcom/sleepycat/b/l/ac;[B)Z
    .locals 1

    .prologue
    .line 1751
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    instance-of v0, p2, Lcom/sleepycat/b/l/y;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1759
    :cond_0
    if-eqz p3, :cond_1

    .line 30799
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 31097
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 1759
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1762
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1763
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/b/l/j;->a(I[B)Z

    move-result v0

    .line 1765
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I[B)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 824
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_4

    .line 826
    invoke-direct {p0, p2}, Lcom/sleepycat/b/l/j;->c([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->e(I)[B

    move-result-object v0

    .line 833
    if-eqz v0, :cond_1

    .line 835
    invoke-static {v0, p2}, Lcom/sleepycat/b/l/w;->a([B[B)[B

    move-result-object v0

    .line 837
    :cond_1
    invoke-direct {p0, v0, p2, p1}, Lcom/sleepycat/b/l/j;->a([B[BI)V

    move v0, v2

    .line 857
    :goto_0
    return v0

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/o;

    .line 841
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    iget-object v4, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {v4, p2}, Lcom/sleepycat/b/l/j;->a([B[B)[B

    move-result-object v4

    invoke-virtual {v1, p1, v4, p0}, Lcom/sleepycat/b/l/l;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/l/l;

    iput-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 843
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/l;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    .line 846
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_5

    .line 852
    new-array v0, v3, [B

    invoke-direct {p0, v0, p2, p1}, Lcom/sleepycat/b/l/j;->a([B[BI)V

    move v0, v2

    .line 853
    goto :goto_0

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/o;

    .line 856
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v1, p1, p2, p0}, Lcom/sleepycat/b/l/l;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/l/l;

    iput-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 857
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/l;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method private c([B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v1

    .line 897
    :cond_1
    array-length v2, p1

    move v0, v1

    .line 898
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 899
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/sleepycat/b/l/j;->r:[B

    aget-byte v3, v3, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 907
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/l;->a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 338
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    .line 339
    return-void
.end method

.method private d(IJ)V
    .locals 2

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v0

    .line 1087
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->a(IJ)V

    .line 1088
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v1

    sub-int v0, v1, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 1089
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1090
    return-void
.end method

.method private e(IJ)V
    .locals 6

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    array-length v0, v0

    shr-int/lit8 v1, v0, 0x2

    .line 1173
    new-array v2, v1, [J

    .line 1174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1175
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_0
    aput-wide p2, v2, p1

    .line 1178
    iput-object v2, p0, Lcom/sleepycat/b/l/j;->u:[J

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    .line 1180
    return-void
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 674
    if-eqz p1, :cond_0

    .line 675
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    goto :goto_0
.end method

.method private e(I)[B
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 916
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    if-gt v2, v0, :cond_1

    .line 918
    :cond_0
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    .line 921
    :cond_1
    if-nez p1, :cond_3

    .line 922
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v3

    .line 923
    array-length v2, v3

    .line 952
    add-int/lit8 v0, v0, 0x1

    move v6, v2

    move-object v2, v3

    move v3, v0

    move v0, v6

    :goto_2
    iget v4, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v3, v4, :cond_4

    .line 953
    if-eq v3, p1, :cond_2

    .line 956
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v5

    .line 957
    invoke-static {v2, v0, v5}, Lcom/sleepycat/b/l/w;->a([BI[B)I

    move-result v4

    .line 959
    if-ge v4, v0, :cond_2

    move v0, v4

    move-object v2, v5

    .line 952
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 921
    goto :goto_1

    .line 966
    :cond_4
    new-array v3, v0, [B

    .line 967
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 969
    goto :goto_0
.end method

.method private p()I
    .locals 2

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sleepycat/b/c/ao;->h:I

    iget-object v1, p0, Lcom/sleepycat/b/l/j;->u:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private t(I)I
    .locals 4

    .prologue
    .line 1266
    add-int/lit8 v0, p1, 0x1

    .line 26276
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->t:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    .line 26277
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->t:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 26278
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->t:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 26279
    const v1, 0xffffff

    if-ne v0, v1, :cond_0

    .line 26280
    const/4 v0, -0x1

    .line 1266
    :cond_0
    return v0
.end method

.method private u(I)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1894
    .line 1900
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1907
    if-eqz v0, :cond_0

    .line 1908
    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ac;

    .line 1913
    if-eqz v0, :cond_1

    .line 1914
    invoke-virtual {v0}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 1916
    :cond_1
    return-wide v2
.end method

.method private v(I)V
    .locals 2

    .prologue
    .line 2824
    const/4 v0, 0x0

    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/b/l/j;->a(III)V

    .line 2825
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    sub-int/2addr v0, p1

    :goto_0
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v0, v1, :cond_0

    .line 2826
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(I)V

    .line 2825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2828
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2829
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 522
    return-void
.end method

.method public final C()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 552
    return-void
.end method

.method public final D()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    .line 14206
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14207
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 14208
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_4

    .line 14261
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 14208
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14212
    :cond_0
    iget-boolean v0, v1, Lcom/sleepycat/b/f/f;->d:Z

    if-nez v0, :cond_4

    .line 14216
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->getReadLockCount()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14217
    :cond_1
    const/4 v0, 0x0

    .line 14218
    sget-boolean v2, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 14219
    :cond_2
    if-eqz v0, :cond_3

    .line 14220
    iget-object v0, v1, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14221
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 14222
    iget-object v0, v1, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14223
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_4

    .line 15261
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 14223
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14231
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 14209
    :cond_4
    return-void
.end method

.method public final E()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 565
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    .line 16240
    sget-boolean v2, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v2, :cond_3

    move v2, v1

    .line 16241
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v2, v3, Lcom/sleepycat/b/f/f;->d:Z

    if-nez v2, :cond_2

    .line 16242
    iget-object v2, v3, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    .line 16245
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I()Z
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final J()Z
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final K()Z
    .locals 4

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v0

    .line 1839
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->k:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1841
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-Warning: Out of sync. Should be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32342
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 1841
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1845
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 33133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1845
    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1848
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->M()J

    .line 1851
    const/4 v0, 0x0

    .line 1853
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final L()J
    .locals 4

    .prologue
    .line 1860
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    iget v2, p0, Lcom/sleepycat/b/l/j;->n:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public M()J
    .locals 19

    .prologue
    .line 1963
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/l/j;->n()J

    move-result-wide v6

    .line 1965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v2

    int-to-long v8, v2

    .line 1968
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v5

    .line 1970
    const/4 v3, 0x0

    .line 1971
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v2, v4, :cond_0

    .line 1972
    int-to-long v10, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v3, v10

    .line 1971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1975
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v2

    .line 1978
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 35035
    invoke-static {v4}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v4

    .line 1981
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v10}, Lcom/sleepycat/b/l/r;->b()J

    move-result-wide v10

    .line 1982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v12}, Lcom/sleepycat/b/l/l;->b()J

    move-result-wide v12

    .line 1983
    add-long v14, v6, v8

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v2

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v14, v10

    add-long/2addr v14, v12

    .line 1987
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " nEntries:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sleepycat/b/l/j;->f:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/l/j;->h:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " in: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " states: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " lsn: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " keyPrefix: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provisional: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " targetRep("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/r;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyRep("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/l;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inMemorySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2001
    return-wide v14

    .line 1975
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1978
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public final N()V
    .locals 4

    .prologue
    .line 2035
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 2037
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/r;->a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 2038
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/l;->a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 2046
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/l;->c()Z

    move-result v0

    invoke-virtual {v1}, Lcom/sleepycat/b/l/l;->c()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2055
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    if-eq v0, v1, :cond_0

    .line 2065
    invoke-virtual {v1}, Lcom/sleepycat/b/l/l;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/l;->b()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 2478
    const/4 v0, 0x1

    return v0
.end method

.method public final P()Z
    .locals 2

    .prologue
    .line 2514
    .line 45372
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v0, v0

    .line 2514
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3226
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3248
    :cond_0
    :goto_0
    return v1

    .line 3236
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 50217
    :goto_1
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 3240
    if-ge v0, v2, :cond_3

    .line 3242
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3240
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3248
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method final R()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3352
    move v0, v1

    .line 50219
    :goto_0
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 3352
    if-ge v0, v2, :cond_0

    .line 3353
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3354
    const/4 v1, 0x1

    .line 3358
    :cond_0
    return v1

    .line 3352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final S()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 3742
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->y()Lcom/sleepycat/b/g/af;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3757
    invoke-super {p0}, Lcom/sleepycat/b/l/ac;->a()I

    move-result v0

    .line 3758
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 3759
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->g:[B

    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 3760
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v2, :cond_0

    .line 3761
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 3763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3764
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3765
    iget v2, p0, Lcom/sleepycat/b/l/j;->j:I

    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 50263
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v2, v2

    .line 3766
    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3767
    invoke-static {}, Lcom/sleepycat/b/g/ar;->c()I

    move-result v2

    add-int/2addr v0, v2

    .line 3768
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 3769
    :goto_0
    if-eqz v3, :cond_1

    .line 3770
    add-int/lit8 v0, v0, 0x4

    :cond_1
    move v2, v0

    .line 3773
    :goto_1
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v1, v0, :cond_4

    .line 3774
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v4

    if-eqz v3, :cond_3

    const/4 v0, 0x4

    :goto_2
    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 3773
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 3768
    goto :goto_0

    .line 3774
    :cond_3
    invoke-static {}, Lcom/sleepycat/b/g/ar;->b()I

    move-result v0

    goto :goto_2

    .line 3779
    :cond_4
    return v2
.end method

.method public final a([BZZ)I
    .locals 1

    .prologue
    .line 2188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/l/j;->a([BZZLjava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public final a([BZZLjava/util/Comparator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZZ",
            "Ljava/util/Comparator",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2221
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v4, v0, -0x1

    .line 2225
    if-eqz p4, :cond_0

    .line 2254
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    move v0, v1

    .line 2257
    :goto_1
    sget-boolean v5, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/sleepycat/b/l/j;->f:I

    if-gez v5, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 38097
    iget-object p4, v0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2254
    goto :goto_1

    .line 2259
    :goto_2
    if-gt v5, v2, :cond_7

    .line 2260
    add-int v4, v2, v5

    div-int/lit8 v4, v4, 0x2

    .line 2263
    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    move v6, v1

    .line 2269
    :goto_3
    if-gez v6, :cond_3

    .line 2270
    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 2266
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v6

    .line 2267
    invoke-static {p1, v6, p4}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v6

    goto :goto_3

    .line 2271
    :cond_3
    if-lez v6, :cond_4

    .line 2272
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto :goto_2

    .line 2275
    :cond_4
    if-eqz p2, :cond_6

    .line 2276
    const/high16 v0, 0x10000

    or-int/2addr v0, v4

    .line 2281
    :goto_4
    if-ltz v0, :cond_5

    if-eqz p3, :cond_5

    const v1, 0xffff

    and-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    .line 2296
    :cond_5
    :goto_5
    return v0

    :cond_6
    move v0, v4

    .line 2278
    goto :goto_4

    .line 2293
    :cond_7
    if-eqz p3, :cond_8

    move v0, v3

    .line 2294
    goto :goto_5

    :cond_8
    move v0, v2

    .line 2296
    goto :goto_5

    :cond_9
    move v5, v2

    move v2, v4

    goto :goto_2
.end method

.method public final a(Lcom/sleepycat/b/g/am;)J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3491
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3492
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v0

    .line 3494
    :goto_0
    return-wide v0

    :cond_0
    sget-object v4, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZLcom/sleepycat/b/g/au;ZLcom/sleepycat/b/l/j;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3511
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3512
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v0

    .line 3514
    :goto_0
    return-wide v0

    :cond_0
    sget-object v4, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZLcom/sleepycat/b/g/au;ZLcom/sleepycat/b/l/j;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/am;ZZLcom/sleepycat/b/g/au;ZLcom/sleepycat/b/l/j;)J
    .locals 3

    .prologue
    .line 3535
    new-instance v0, Lcom/sleepycat/b/l/q;

    invoke-direct {v0}, Lcom/sleepycat/b/l/q;-><init>()V

    .line 3536
    iput-object p4, v0, Lcom/sleepycat/b/l/q;->e:Lcom/sleepycat/b/g/au;

    .line 3537
    iput-object p6, v0, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    .line 3538
    sget-object v1, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    iput-object v1, v0, Lcom/sleepycat/b/l/q;->f:Lcom/sleepycat/b/g/av;

    .line 3540
    new-instance v1, Lcom/sleepycat/b/l/p;

    invoke-direct {v1}, Lcom/sleepycat/b/l/p;-><init>()V

    .line 50228
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 3541
    iput-object v2, v1, Lcom/sleepycat/b/l/p;->a:Lcom/sleepycat/b/c/i;

    .line 3542
    iput-boolean p5, v1, Lcom/sleepycat/b/l/p;->e:Z

    .line 3543
    iput-boolean p2, v1, Lcom/sleepycat/b/l/p;->l:Z

    .line 3544
    iput-boolean p3, v1, Lcom/sleepycat/b/l/p;->m:Z

    .line 3546
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;)V

    .line 3547
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 3548
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;)V

    .line 3550
    iget-wide v0, v0, Lcom/sleepycat/b/l/q;->d:J

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/g/am;ZZZZLcom/sleepycat/b/l/j;)J
    .locals 7

    .prologue
    .line 3461
    if-eqz p4, :cond_0

    sget-object v4, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZLcom/sleepycat/b/g/au;ZLcom/sleepycat/b/l/j;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v4, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    goto :goto_0
.end method

.method protected a([BII)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Lcom/sleepycat/b/l/j;

    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/b/l/j;-><init>(Lcom/sleepycat/b/c/i;[BII)V

    return-object v0
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v2, 0x0

    .line 4031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4032
    if-eqz p2, :cond_0

    .line 50278
    const-string v0, "                                                                                                                                "

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4033
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4034
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4038
    :cond_0
    if-eqz p2, :cond_1

    .line 4039
    const-string v0, "<nodeId val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4040
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4041
    const-string v0, "\"/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4045
    :goto_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4047
    add-int/lit8 v0, p1, 0x2

    .line 50279
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4047
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4048
    const-string v0, "<idkey>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4049
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->g:[B

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    const-string v0, "</idkey>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4054
    add-int/lit8 v0, p1, 0x2

    .line 50280
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4054
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4055
    const-string v0, "<prefix>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    const-string v0, "</prefix>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4058
    add-int/lit8 v0, p1, 0x2

    .line 50281
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4058
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    const-string v0, "<dirty val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4061
    add-int/lit8 v0, p1, 0x2

    .line 50282
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4061
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    const-string v0, "<generation val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4064
    add-int/lit8 v0, p1, 0x2

    .line 50283
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4064
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    const-string v0, "<level val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    iget v0, p0, Lcom/sleepycat/b/l/j;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4068
    add-int/lit8 v0, p1, 0x2

    .line 50284
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4068
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    const-string v0, "<isRoot val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4072
    add-int/lit8 v0, p1, 0x2

    .line 50285
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4072
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    const-string v0, "<entries nEntries=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4075
    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 4078
    :goto_3
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v1, v0, :cond_7

    .line 4079
    add-int/lit8 v0, p1, 0x4

    .line 50286
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4079
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "<entry id=\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4082
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 4083
    add-int/lit8 v0, p1, 0x6

    .line 50287
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4083
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4084
    const-string v0, "<lsn/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    :goto_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4089
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 4090
    add-int/lit8 v0, p1, 0x6

    .line 50288
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4090
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    const-string v0, "<key/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4095
    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4096
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 4097
    add-int/lit8 v0, p1, 0x6

    .line 50289
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4097
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    const-string v0, "<target/>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    :goto_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4103
    add-int/lit8 v0, p1, 0x6

    .line 50290
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50291
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, v1

    .line 4104
    invoke-static {v3, v0}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/StringBuilder;B)V

    .line 4105
    const-string v0, "<dirty val=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->p(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"/>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4107
    add-int/lit8 v0, p1, 0x4

    .line 50292
    const-string v4, "                                                                                                                                "

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    const-string v0, "</entry>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4078
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 4043
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4049
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->g:[B

    invoke-static {v0, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4056
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {v0, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 4086
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    add-int/lit8 v0, p1, 0x6

    invoke-static {v4, v5, v0}, Lcom/sleepycat/b/p/j;->b(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 4093
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v4, p1, 0x6

    invoke-static {v0, v4}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 4100
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ac;

    add-int/lit8 v4, p1, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/l/ac;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 4112
    :cond_7
    add-int/lit8 v0, p1, 0x2

    .line 50293
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    const-string v0, "</entries>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4114
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4115
    if-eqz p2, :cond_8

    .line 50294
    const-string v0, "                                                                                                                                "

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4119
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 770
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sleepycat/b/l/l;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 771
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/b/l/j;->a(IJ)V

    .line 772
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 773
    return-void
.end method

.method a(III)V
    .locals 5

    .prologue
    .line 752
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/b/l/r;->a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 753
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sleepycat/b/l/l;->a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 754
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    iget-object v1, p0, Lcom/sleepycat/b/l/j;->h:[B

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v0, :cond_0

    .line 756
    shl-int/lit8 v0, p1, 0x2

    .line 757
    shl-int/lit8 v1, p2, 0x2

    .line 758
    shl-int/lit8 v2, p3, 0x2

    .line 759
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->t:[B

    iget-object v4, p0, Lcom/sleepycat/b/l/j;->t:[B

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    iget-object v1, p0, Lcom/sleepycat/b/l/j;->u:[J

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 10

    .prologue
    .line 1112
    shl-int/lit8 v1, p1, 0x2

    .line 1115
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    aput-wide p2, v0, p1

    .line 1158
    :goto_0
    return-void

    .line 1120
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 20254
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 1122
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/l/j;->a(II)V

    goto :goto_0

    .line 1126
    :cond_1
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 1128
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 1130
    iput-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 21254
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 1150
    :goto_1
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1151
    const v2, 0xfffffe

    if-le v0, v2, :cond_b

    .line 1152
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->e(IJ)V

    goto :goto_0

    .line 1133
    :cond_2
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_9

    .line 22220
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 22221
    const/4 v0, 0x0

    .line 22222
    :goto_2
    iget-object v6, p0, Lcom/sleepycat/b/l/j;->t:[B

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 22224
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->t(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 22258
    iget-object v6, p0, Lcom/sleepycat/b/l/j;->t:[B

    aget-byte v6, v6, v0

    .line 22228
    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 22230
    sub-long/2addr v6, v2

    .line 22232
    const-wide/16 v8, 0x7f

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    .line 22233
    sub-long/2addr v4, v2

    .line 22234
    add-int/lit8 v0, v0, -0x4

    .line 22235
    :goto_3
    if-ltz v0, :cond_4

    .line 22237
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->t(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 23258
    iget-object v6, p0, Lcom/sleepycat/b/l/j;->t:[B

    aget-byte v6, v6, v0

    .line 22240
    int-to-long v6, v6

    sub-long/2addr v6, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 24254
    iget-object v7, p0, Lcom/sleepycat/b/l/j;->t:[B

    aput-byte v6, v7, v0

    .line 22236
    :cond_3
    add-int/lit8 v0, v0, -0x4

    goto :goto_3

    .line 22244
    :cond_4
    const/4 v0, 0x0

    .line 1134
    :goto_4
    if-nez v0, :cond_8

    .line 1135
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->e(IJ)V

    goto :goto_0

    .line 22246
    :cond_5
    long-to-int v6, v6

    int-to-byte v6, v6

    .line 25254
    iget-object v7, p0, Lcom/sleepycat/b/l/j;->t:[B

    aput-byte v6, v7, v0

    .line 22223
    :cond_6
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 22250
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1138
    :cond_8
    iput-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 1140
    :cond_9
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    sub-long v4, v2, v4

    .line 1141
    const-wide/16 v6, 0x7f

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 1142
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->e(IJ)V

    goto/16 :goto_0

    .line 1145
    :cond_a
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    .line 26254
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->t:[B

    aput-byte v0, v2, v1

    goto :goto_1

    .line 1156
    :cond_b
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/l/j;->a(II)V

    goto/16 :goto_0
.end method

.method public final a(IJJ[BLcom/sleepycat/b/l/ac;)V
    .locals 4

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    .line 1645
    invoke-direct {p0, p1, p7, p6}, Lcom/sleepycat/b/l/j;->b(ILcom/sleepycat/b/l/ac;[B)Z

    move-result v2

    .line 1647
    if-eqz v2, :cond_0

    .line 1648
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1660
    :goto_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 1661
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1662
    return-void

    .line 1651
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    .line 1652
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1654
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 1655
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v0

    .line 1658
    :goto_1
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0

    .line 1655
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method a(ILcom/sleepycat/b/l/ac;)V
    .locals 4

    .prologue
    .line 1051
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    .line 17569
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    .line 1051
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not latched for write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18342
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 1051
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 1054
    return-void
.end method

.method public final a(ILcom/sleepycat/b/l/ac;J)V
    .locals 5

    .prologue
    .line 1698
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    .line 1699
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 1700
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;)V

    .line 1701
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/sleepycat/b/l/j;->b(ILcom/sleepycat/b/l/ac;[B)Z

    move-result v2

    .line 1702
    if-eqz v2, :cond_0

    .line 1703
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1708
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1709
    return-void

    .line 1705
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    .line 1706
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0
.end method

.method public final a(ILcom/sleepycat/b/l/ac;J[B)V
    .locals 5

    .prologue
    .line 1777
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    .line 1778
    invoke-virtual {p0, p1, p3, p4}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 1779
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;)V

    .line 1780
    invoke-direct {p0, p1, p5}, Lcom/sleepycat/b/l/j;->a(I[B)Z

    move-result v2

    .line 1781
    if-eqz v2, :cond_0

    .line 1782
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1787
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1788
    return-void

    .line 1784
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    .line 1785
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0
.end method

.method public final a(ILcom/sleepycat/b/l/ac;[B)V
    .locals 4

    .prologue
    .line 1675
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    .line 1676
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;)V

    .line 1677
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->b(ILcom/sleepycat/b/l/ac;[B)Z

    move-result v2

    .line 1678
    if-eqz v2, :cond_0

    .line 1679
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1684
    :goto_0
    return-void

    .line 1681
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    .line 1682
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_0
.end method

.method a(ILcom/sleepycat/b/l/j;I)V
    .locals 10

    .prologue
    .line 1523
    iget-object v0, p2, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p3}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ac;

    .line 1524
    invoke-virtual {p2, p3}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v1

    .line 1525
    invoke-virtual {p2, p3}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    .line 1526
    iget-object v2, p2, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v6, v2, p3

    .line 1528
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v2

    int-to-long v2, v2

    .line 1529
    add-int/lit8 v7, p1, 0x1

    .line 1531
    iget v8, p0, Lcom/sleepycat/b/l/j;->f:I

    if-le v7, v8, :cond_0

    .line 1537
    iput v7, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 1542
    :goto_0
    iget-object v7, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v7, p1, v0, p0}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 1543
    invoke-direct {p0, p1, v1}, Lcom/sleepycat/b/l/j;->b(I[B)Z

    move-result v0

    .line 1546
    invoke-virtual {p0, p1, v4, v5}, Lcom/sleepycat/b/l/j;->a(IJ)V

    .line 1547
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->h:[B

    aput-byte v6, v1, p1

    .line 1548
    if-eqz v0, :cond_1

    .line 1549
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 1554
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1555
    return-void

    .line 1539
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_0

    .line 1551
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1552
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sleepycat/b/l/j;->a(JJ)V

    goto :goto_1
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 442
    .line 13460
    iput-wide p1, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 443
    return-void
.end method

.method protected final a(JJ)V
    .locals 3

    .prologue
    .line 2024
    sub-long v0, p3, p1

    .line 2025
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 2026
    return-void
.end method

.method final a(J[BLcom/sleepycat/b/l/ae;ZLcom/sleepycat/b/a;IZ)V
    .locals 5

    .prologue
    .line 3071
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    .line 50197
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    .line 3071
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50198
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3074
    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 50199
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3076
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3077
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3078
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 3210
    :goto_0
    return-void

    .line 50201
    :cond_1
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 3083
    if-nez v0, :cond_3

    .line 3089
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3090
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3091
    if-eqz p5, :cond_2

    .line 50202
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3093
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto :goto_0

    .line 3095
    :cond_2
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 3096
    const/4 v0, -0x1

    iput v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    goto :goto_0

    .line 3102
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v0

    iput v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    .line 3104
    iget v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    if-gez v0, :cond_5

    .line 3105
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3106
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3107
    if-eqz p5, :cond_4

    .line 50204
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3109
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto :goto_0

    .line 3112
    :cond_4
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto :goto_0

    .line 3121
    :cond_5
    const/4 v2, 0x0

    .line 3122
    const/4 v1, 0x0

    .line 3123
    iget v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3124
    const/4 v0, 0x1

    move-object v1, v2

    .line 3135
    :goto_1
    if-eqz v0, :cond_9

    .line 3136
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3137
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3138
    if-eqz p5, :cond_8

    .line 3139
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 50206
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    goto :goto_0

    .line 3125
    :cond_6
    if-eqz p8, :cond_7

    .line 3126
    iget v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 3127
    if-nez v0, :cond_10

    .line 3128
    const/4 v1, 0x1

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    .line 3131
    :cond_7
    iget v0, p4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_1

    .line 3142
    :cond_8
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto :goto_0

    .line 3148
    :cond_9
    if-ltz p7, :cond_a

    iget v0, p0, Lcom/sleepycat/b/l/j;->j:I

    add-int/lit8 v2, p7, 0x1

    if-ne v0, v2, :cond_a

    .line 3149
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3150
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 3151
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    goto/16 :goto_0

    .line 3155
    :cond_a
    if-nez v1, :cond_c

    .line 3156
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_b

    if-eqz p8, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3161
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3162
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3163
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 3164
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->c:Z

    goto/16 :goto_0

    .line 3168
    :cond_c
    invoke-virtual {v1, p6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 50208
    iget-wide v2, v1, Lcom/sleepycat/b/l/j;->c:J

    .line 3169
    cmp-long v0, v2, p1

    if-nez v0, :cond_d

    .line 50209
    iget-object v0, v1, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3172
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3173
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 3174
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    goto/16 :goto_0

    .line 3188
    :cond_d
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50211
    iget-object v0, v1, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3196
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->a:Z

    .line 3197
    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/sleepycat/b/l/ae;->b:Z

    .line 3199
    if-eqz p5, :cond_e

    .line 50213
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3201
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto/16 :goto_0

    .line 3203
    :cond_e
    iput-object p0, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto/16 :goto_0

    .line 50215
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3208
    iput-object v1, p4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto/16 :goto_0

    :cond_10
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto/16 :goto_1
.end method

.method public final a(Lcom/sleepycat/b/a;)V
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->d(Lcom/sleepycat/b/a;)V

    .line 486
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->a()V

    .line 487
    return-void
.end method

.method public a(Lcom/sleepycat/b/c/ad;Z)V
    .locals 2

    .prologue
    .line 3734
    .line 50257
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 50258
    iget-object v1, v0, Lcom/sleepycat/b/d/b;->i:Lcom/sleepycat/b/p/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/d;->g()V

    .line 50259
    if-eqz p2, :cond_0

    .line 50260
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->l:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 3735
    :cond_0
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/al;)V
    .locals 2

    .prologue
    .line 2894
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->d()V

    .line 2895
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 2901
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v0, v1, :cond_1

    .line 2902
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    .line 2903
    if-eqz v1, :cond_0

    .line 2904
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/al;)V

    .line 2901
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2907
    :cond_1
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/a/s;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    .line 2936
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found non-deletable IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50191
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 2937
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while flushing INList. nEntries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2943
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 50192
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 2946
    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 50193
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 2947
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->y()Lcom/sleepycat/b/g/af;

    move-result-object v4

    iget-object v6, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/s;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 2950
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->h()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    .line 2951
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->h()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->y()Lcom/sleepycat/b/g/af;

    move-result-object v4

    iget-object v6, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/s;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 2956
    :cond_2
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-lez v0, :cond_3

    .line 2957
    invoke-virtual {p0, v5}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 2958
    if-eqz v0, :cond_3

    .line 2959
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/a/s;)V

    .line 2962
    :cond_3
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 2987
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2988
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found non-deletable IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50194
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 2988
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while flushing INList. nEntries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2994
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 50195
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 2997
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 50196
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 2998
    invoke-direct {p2, p0, v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;J)V

    .line 3001
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->h()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 3002
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->h()J

    move-result-wide v0

    invoke-direct {p2, p0, v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;J)V

    .line 3007
    :cond_2
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-lez v0, :cond_3

    .line 3008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 3009
    if-eqz v0, :cond_3

    .line 3010
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)V

    .line 3013
    :cond_3
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/i;J)V
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/c/i;J)V

    .line 11737
    iget-boolean v0, p0, Lcom/sleepycat/b/l/j;->w:Z

    if-eqz v0, :cond_0

    .line 11740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/l/j;->w:Z

    .line 11741
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-static {v0, p0}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)V

    .line 12133
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 12492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 415
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 416
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/i;[BII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 312
    .line 6724
    iput-object p1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 313
    new-instance v0, Lcom/sleepycat/b/f/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7342
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 313
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sleepycat/b/f/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    .line 314
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-static {}, Lcom/sleepycat/b/c/ad;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->e()Z

    move-result v0

    .line 8072
    :goto_0
    iput-boolean v0, v2, Lcom/sleepycat/b/f/f;->d:Z

    .line 317
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    .line 9062
    iput-boolean v1, v0, Lcom/sleepycat/b/f/f;->b:Z

    .line 318
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->e:J

    .line 319
    iput v6, p0, Lcom/sleepycat/b/l/j;->a:I

    .line 320
    iput v6, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 321
    iput-object p2, p0, Lcom/sleepycat/b/l/j;->g:[B

    .line 322
    sget-object v0, Lcom/sleepycat/b/l/r;->a:Lcom/sleepycat/b/l/t;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 323
    new-instance v0, Lcom/sleepycat/b/l/m;

    invoke-direct {v0, p3}, Lcom/sleepycat/b/l/m;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 324
    iput-object v7, p0, Lcom/sleepycat/b/l/j;->r:[B

    .line 325
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 326
    shl-int/lit8 v0, p3, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->t:[B

    .line 327
    iput-object v7, p0, Lcom/sleepycat/b/l/j;->u:[J

    .line 328
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    .line 329
    iput p4, p0, Lcom/sleepycat/b/l/j;->j:I

    .line 330
    iput-boolean v6, p0, Lcom/sleepycat/b/l/j;->l:Z

    .line 331
    return-void

    :cond_1
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/d/e;)V
    .locals 2

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 50253
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50254
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 50255
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->q:[Lcom/sleepycat/b/p/d;

    invoke-virtual {p1}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 3727
    return-void
.end method

.method final a(Lcom/sleepycat/b/l/ac;Lcom/sleepycat/b/l/ac;)V
    .locals 4

    .prologue
    .line 2075
    const-wide/16 v0, 0x0

    .line 2076
    if-eqz p2, :cond_0

    .line 2077
    invoke-virtual {p2}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v0

    .line 2080
    :cond_0
    if-eqz p1, :cond_1

    .line 2081
    invoke-virtual {p1}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2083
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 2084
    return-void
.end method

.method a(Lcom/sleepycat/b/l/j;II)V
    .locals 0

    .prologue
    .line 2789
    return-void
.end method

.method protected final a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V
    .locals 19

    .prologue
    .line 2549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->g:[B

    if-nez v4, :cond_0

    .line 2550
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v4

    throw v4

    .line 2552
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->g:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v18

    .line 2554
    if-gez p4, :cond_e

    .line 2555
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/l/j;->f:I

    div-int/lit8 v17, v4, 0x2

    .line 2561
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 2568
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/l/j;->f:I

    move v5, v4

    move/from16 v6, v17

    .line 2579
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v10

    .line 2582
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/l/j;->j:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v1, v4}, Lcom/sleepycat/b/l/j;->a([BII)Lcom/sleepycat/b/l/j;

    move-result-object v7

    .line 2583
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 2586
    const/4 v9, 0x0

    .line 2587
    const/4 v8, 0x0

    .line 2588
    const/4 v4, 0x0

    move v12, v9

    move v9, v8

    move v8, v6

    .line 2589
    :goto_2
    if-ge v8, v5, :cond_3

    .line 2590
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/l/j;->l(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2591
    if-nez v9, :cond_d

    .line 2592
    const/4 v9, 0x1

    .line 2593
    sget-boolean v4, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v4, :cond_2

    invoke-virtual {v7}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    :catchall_0
    move-exception v4

    .line 50189
    iget-object v5, v7, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/f;->d()V

    .line 2753
    throw v4

    .line 2575
    :cond_1
    const/4 v4, 0x0

    move/from16 v5, v17

    move v6, v4

    .line 2576
    goto :goto_1

    .line 2594
    :cond_2
    :try_start_1
    move-object v0, v7

    check-cast v0, Lcom/sleepycat/b/l/a;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->d()Lcom/sleepycat/b/l/d;

    move-result-object v4

    move v11, v9

    move-object v9, v4

    .line 2597
    :goto_3
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v12, v0, v8}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/j;I)V

    .line 2598
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/l/j;->a(I)V

    .line 2589
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v12, v13

    move-object v4, v9

    move v9, v11

    goto :goto_2

    .line 2605
    :cond_3
    if-eqz v9, :cond_4

    .line 2606
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 46133
    iget-object v8, v8, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 46347
    iget-object v9, v8, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v9, :cond_4

    .line 46348
    iget-object v8, v8, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    invoke-virtual {v8, v4}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/d;)V

    .line 2610
    :cond_4
    sub-int v4, v5, v6

    .line 2616
    if-nez v6, :cond_5

    .line 2617
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sleepycat/b/l/j;->v(I)V

    .line 2620
    :cond_5
    iput v12, v7, Lcom/sleepycat/b/l/j;->f:I

    .line 2621
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sleepycat/b/l/j;->f:I

    sub-int v4, v8, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 2622
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2624
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;II)V

    .line 2631
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sleepycat/b/l/j;->e(I)[B

    move-result-object v4

    .line 2632
    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v8}, Lcom/sleepycat/b/l/j;->a([B[BI)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/l/l;->a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/l;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 47345
    iget v4, v7, Lcom/sleepycat/b/l/j;->f:I

    .line 2637
    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 2639
    const/4 v4, -0x1

    invoke-direct {v7, v4}, Lcom/sleepycat/b/l/j;->e(I)[B

    move-result-object v4

    .line 2640
    const/4 v5, 0x0

    const/4 v8, -0x1

    invoke-direct {v7, v4, v5, v8}, Lcom/sleepycat/b/l/j;->a([B[BI)V

    .line 2642
    invoke-direct {v7}, Lcom/sleepycat/b/l/j;->d()V

    .line 2654
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 48133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 48492
    iget-object v5, v4, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 2656
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sleepycat/b/l/j;->k:J

    .line 2657
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v12

    .line 2658
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v12, v13}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2659
    invoke-virtual {v5, v7}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 49371
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 2676
    move-object/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J

    move-result-wide v8

    .line 2679
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J

    move-result-wide v14

    .line 2690
    if-nez v6, :cond_8

    .line 2697
    invoke-virtual/range {p1 .. p2}, Lcom/sleepycat/b/l/j;->r(I)V

    .line 2698
    if-nez p2, :cond_7

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 2699
    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/b/l/j;->b(ILcom/sleepycat/b/l/ac;J[B)V

    .line 2706
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v5

    .line 2707
    new-instance v6, Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v14, v15}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/e;)Z

    move-result v5

    .line 2709
    sget-boolean v6, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v6, :cond_a

    if-nez v5, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2702
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v7, v8, v9}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;J)V

    goto :goto_4

    .line 2716
    :cond_8
    if-nez p2, :cond_9

    .line 2722
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v16

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p0

    invoke-direct/range {v11 .. v16}, Lcom/sleepycat/b/l/j;->b(ILcom/sleepycat/b/l/ac;J[B)V

    .line 2728
    :goto_5
    new-instance v5, Lcom/sleepycat/b/l/e;

    invoke-direct {v5, v7, v10, v8, v9}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/e;)Z

    move-result v5

    .line 2730
    sget-boolean v6, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v6, :cond_a

    if-nez v5, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2725
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;J)V

    goto :goto_5

    .line 2737
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;)J

    move-result-wide v4

    .line 2744
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2745
    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2749
    :cond_b
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 50155
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 50183
    iget-object v10, v10, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50184
    iget-object v10, v10, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 50156
    invoke-virtual {v10, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 50157
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 50158
    const-string v12, "Split:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50159
    const-string v12, " parent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50185
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 50160
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50161
    const-string v12, " child="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50186
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 50162
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50163
    const-string v12, " newSibling="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50187
    iget-wide v12, v7, Lcom/sleepycat/b/l/j;->c:J

    .line 50164
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50165
    const-string v12, " parentLsn = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50166
    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50167
    const-string v4, " childLsn = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50168
    invoke-static {v14, v15}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50169
    const-string v4, " newSiblingLsn = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50170
    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50171
    const-string v4, " splitIdx="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50172
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50173
    const-string v4, " idKeyIdx="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50174
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50175
    const-string v4, " childIdx="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50176
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 50188
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50177
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v4, v6, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50189
    :cond_c
    iget-object v4, v7, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/f;->d()V

    .line 2754
    return-void

    :cond_d
    move v11, v9

    move-object v9, v4

    goto/16 :goto_3

    :cond_e
    move/from16 v17, p4

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V
    .locals 6

    .prologue
    .line 2535
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V

    .line 2536
    return-void
.end method

.method a(Lcom/sleepycat/b/l/j;II[BZLcom/sleepycat/b/a;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2771
    invoke-virtual {p0, p4, v0, v0}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v0

    .line 2772
    if-eqz p5, :cond_0

    if-nez v0, :cond_0

    .line 2774
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V

    .line 2783
    :goto_0
    return-void

    .line 2776
    :cond_0
    if-nez p5, :cond_1

    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2778
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v4, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V

    goto :goto_0

    .line 2781
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/l/q;)V
    .locals 6

    .prologue
    .line 3601
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->m:J

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;JJ)V

    .line 3604
    iget-wide v0, p1, Lcom/sleepycat/b/l/q;->d:J

    .line 50231
    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 3605
    return-void
.end method

.method final a(Lcom/sleepycat/b/l/q;JJ)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 3616
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->e:Lcom/sleepycat/b/g/au;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/au;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50233
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v0, :cond_0

    .line 50234
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 50238
    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v0

    .line 50234
    rsub-int/lit8 v0, v0, 0x0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 50235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 3631
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 3639
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/sleepycat/b/l/q;->k:I

    if-ltz v0, :cond_1

    .line 3640
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    iget v1, p1, Lcom/sleepycat/b/l/q;->k:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->c(I)V

    .line 3641
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    iget v1, p1, Lcom/sleepycat/b/l/q;->k:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->n(I)V

    .line 3643
    :cond_1
    return-void

    .line 3619
    :cond_2
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_0

    .line 3620
    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    .line 3621
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    invoke-direct {v0, p0, p2, p3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;J)V

    .line 3624
    :cond_3
    cmp-long v0, p4, v2

    if-eqz v0, :cond_0

    .line 3625
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    invoke-direct {v0, p0, p4, p5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;J)V

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;)V
    .locals 8

    .prologue
    .line 3563
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->m:J

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;JJ)V

    .line 3564
    new-instance v0, Lcom/sleepycat/b/g/a/j;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/g/a/j;-><init>(Lcom/sleepycat/b/l/j;)V

    iput-object v0, p1, Lcom/sleepycat/b/l/q;->a:Lcom/sleepycat/b/g/a/m;

    .line 3565
    return-void
.end method

.method final a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;JJ)V
    .locals 1

    .prologue
    .line 3575
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_0

    .line 50229
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    .line 3575
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3576
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    .line 50230
    iget-object v0, v0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    .line 3576
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3579
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/l/q;->e:Lcom/sleepycat/b/g/au;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/au;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3580
    iput-wide p3, p1, Lcom/sleepycat/b/l/q;->b:J

    .line 3581
    iput-wide p5, p1, Lcom/sleepycat/b/l/q;->c:J

    .line 3582
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    iput-object v0, p2, Lcom/sleepycat/b/l/p;->g:Lcom/sleepycat/b/a/v;

    .line 3584
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 4009
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3939
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    const-string v0, "<nodeId val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3943
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3945
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->g:[B

    invoke-static {v0, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    const-string v0, "<isRoot val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3949
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3950
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3953
    const-string v0, "<level val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    iget v0, p0, Lcom/sleepycat/b/l/j;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_0

    .line 3958
    const-string v0, "<keyPrefix>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {v0, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    const-string v0, "</keyPrefix>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    :cond_0
    const-string v0, "<entries numEntries=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3966
    const-string v0, "\" length=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50277
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v0, v0

    .line 3967
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3968
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3969
    :goto_0
    if-eqz v0, :cond_1

    .line 3970
    const-string v0, "\" baseFileNumber=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->s:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3973
    :cond_1
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    if-eqz p2, :cond_3

    move v1, v2

    .line 3976
    :goto_1
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v1, v0, :cond_3

    .line 3977
    const-string v0, "<ref kd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3979
    const-string v0, "\" pd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->l(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3981
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3984
    const-string v0, "</ref>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 3968
    goto :goto_0

    .line 3988
    :cond_3
    const-string v0, "</entries>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/StringBuilder;)V

    .line 3993
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3788
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/ac;->a(Ljava/nio/ByteBuffer;)V

    .line 3790
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->c:J

    invoke-static {p1, v4, v5}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 3791
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_3

    move v0, v1

    .line 3792
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->g:[B

    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 3793
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    int-to-byte v4, v3

    .line 3794
    if-eqz v0, :cond_5

    const/4 v3, 0x2

    :goto_2
    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 3795
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3796
    if-eqz v0, :cond_0

    .line 3797
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 3799
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 3800
    iget v0, p0, Lcom/sleepycat/b/l/j;->j:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 50264
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v0, v0

    .line 3801
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 3804
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v0, :cond_6

    move v3, v1

    .line 3805
    :goto_3
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;Z)V

    .line 3806
    if-eqz v3, :cond_1

    .line 3807
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->s:J

    long-to-int v0, v4

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    :cond_1
    move v4, v2

    .line 3810
    :goto_4
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v4, v0, :cond_c

    .line 3811
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 3819
    sget-boolean v0, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v0, :cond_a

    .line 50265
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50266
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    .line 3819
    :goto_5
    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logging IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50272
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3819
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with null lsn child  db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDeferredWriteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isTemporary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    move v0, v2

    .line 3791
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 3793
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 3794
    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 3804
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 50266
    goto :goto_5

    .line 50269
    :cond_8
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_5

    .line 3824
    :cond_a
    if-eqz v3, :cond_b

    .line 3825
    shl-int/lit8 v0, v4, 0x2

    .line 3826
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->t(I)I

    move-result v5

    .line 50273
    iget-object v6, p0, Lcom/sleepycat/b/l/j;->t:[B

    aget-byte v0, v6, v0

    .line 3827
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3828
    ushr-int/lit8 v0, v5, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3829
    ushr-int/lit8 v0, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3830
    ushr-int/lit8 v0, v5, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3834
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3835
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v5, v0, v4

    and-int/lit8 v5, v5, -0x3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 3810
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    .line 3832
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    aget-wide v6, v0, v4

    invoke-static {p1, v6, v7}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_6

    .line 3837
    :cond_c
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 10

    .prologue
    .line 3859
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/ac;->a(Ljava/nio/ByteBuffer;I)V

    .line 3861
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 3862
    :goto_0
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3863
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->g:[B

    .line 3864
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 3865
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->e(Z)V

    .line 3866
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_0

    .line 3867
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    .line 3870
    :cond_0
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 3871
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/l/j;->j:I

    .line 3872
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 3874
    sget-object v2, Lcom/sleepycat/b/l/r;->a:Lcom/sleepycat/b/l/t;

    iput-object v2, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 3875
    new-instance v2, Lcom/sleepycat/b/l/m;

    invoke-direct {v2, v0}, Lcom/sleepycat/b/l/m;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 3876
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 3877
    const-wide/16 v2, -0x1

    .line 3878
    shl-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/sleepycat/b/l/j;->t:[B

    .line 3879
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sleepycat/b/l/j;->u:[J

    .line 3880
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    .line 3881
    const/4 v0, 0x0

    .line 3882
    const/4 v4, 0x1

    if-le p2, v4, :cond_9

    .line 3883
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->h(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 3884
    if-eqz v0, :cond_8

    .line 3885
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 3886
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    move v4, v0

    .line 3889
    :goto_2
    const/4 v0, 0x0

    move v5, v0

    :goto_3
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v5, v0, :cond_6

    .line 3890
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v6

    invoke-virtual {v0, v5, v6, p0}, Lcom/sleepycat/b/l/l;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/l;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    .line 3893
    if-eqz v4, :cond_5

    .line 3895
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 3896
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 3897
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 3898
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 3899
    const v7, 0xffffff

    if-ne v6, v7, :cond_4

    .line 3900
    const-wide/16 v6, -0x1

    .line 3909
    :goto_4
    invoke-virtual {p0, v5, v6, v7}, Lcom/sleepycat/b/l/j;->a(IJ)V

    .line 3911
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 3912
    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    .line 3913
    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    .line 3921
    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 3922
    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 3925
    :cond_1
    iget-object v6, p0, Lcom/sleepycat/b/l/j;->h:[B

    aput-byte v0, v6, v5

    .line 3889
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 3861
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 3865
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3902
    :cond_4
    int-to-long v8, v0

    add-long/2addr v8, v2

    invoke-static {v8, v9, v6}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v6

    goto :goto_4

    .line 3907
    :cond_5
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    goto :goto_4

    .line 3928
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50274
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3928
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50275
    iput-object v1, v0, Lcom/sleepycat/b/f/f;->a:Ljava/lang/String;

    .line 3931
    const/16 v0, 0x8

    if-ge p2, v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sleepycat/b/l/j;->w:Z

    .line 3932
    return-void

    .line 3931
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    move v4, v0

    goto/16 :goto_2

    :cond_9
    move v4, v0

    goto/16 :goto_2
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 641
    if-eqz p1, :cond_0

    .line 642
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1

    .prologue
    .line 709
    iput-object p1, p0, Lcom/sleepycat/b/l/j;->g:[B

    .line 710
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 711
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 4001
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/l/e;)Z
    .locals 2

    .prologue
    .line 2315
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/l/e;)I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/l/e;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2344
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 38372
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v1, v1

    .line 2344
    if-lt v0, v1, :cond_0

    .line 2345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39342
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 2345
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should have been split before calling insertEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 40094
    :cond_0
    iget-object v1, p1, Lcom/sleepycat/b/l/e;->c:[B

    .line 2356
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v10, v0}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v0

    .line 2358
    if-ltz v0, :cond_1

    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 2393
    :goto_0
    return v0

    .line 2368
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 2371
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v2, v0, :cond_2

    .line 2372
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v0

    .line 40809
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/sleepycat/b/l/j;->f:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v2, v3, v4}, Lcom/sleepycat/b/l/j;->a(III)V

    .line 40810
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/j;->a(I)V

    .line 40811
    invoke-virtual {p0, v10}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2376
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v3

    sub-int v0, v3, v0

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/b/l/j;->b(J)V

    .line 2378
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v3

    .line 2379
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 41187
    iget-object v4, p1, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 2379
    invoke-virtual {v0, v2, v4, p0}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    iput-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    .line 41213
    iget-wide v4, p1, Lcom/sleepycat/b/l/e;->b:J

    .line 2381
    invoke-virtual {p0, v2, v4, v5}, Lcom/sleepycat/b/l/j;->a(IJ)V

    .line 2382
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    .line 42180
    iget-byte v4, p1, Lcom/sleepycat/b/l/e;->d:B

    .line 2382
    aput-byte v4, v0, v2

    .line 2383
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 2384
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/b/l/j;->b(I[B)Z

    move-result v0

    .line 2385
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/j;->d(I)V

    .line 2386
    int-to-long v4, v3

    invoke-direct {p0, v2}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v6

    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2389
    invoke-virtual {p0, v10}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2390
    if-eqz v0, :cond_3

    .line 2391
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2393
    :cond_3
    const/high16 v0, 0x20000

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1323
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1324
    return-void
.end method

.method final b(IJ)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 1561
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v0

    .line 29590
    cmp-long v2, v0, p2

    if-nez v2, :cond_1

    .line 29591
    const/4 v0, 0x0

    .line 1561
    :goto_0
    if-eqz v0, :cond_0

    .line 1562
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->d(IJ)V

    .line 1564
    :cond_0
    return-void

    .line 29594
    :cond_1
    cmp-long v2, p2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30330
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->g:Z

    .line 29594
    if-nez v2, :cond_4

    .line 29599
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29600
    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->c(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29601
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeferredWrite LSN update not allowed oldLsn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newLsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 29607
    :cond_3
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->c(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29608
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LSN update not allowed oldLsn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newLsn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 29614
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(IZ)V
    .locals 2

    .prologue
    .line 1024
    if-eqz p2, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1029
    :goto_0
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    goto :goto_0
.end method

.method final b(J)V
    .locals 7

    .prologue
    .line 2087
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2090
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->k:J

    .line 2098
    iget-boolean v0, p0, Lcom/sleepycat/b/l/j;->l:Z

    if-eqz v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 35133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2108
    sget-boolean v1, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->n()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inMemorySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " computed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36006
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->M()J

    .line 36007
    const/4 v2, 0x1

    .line 2108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2113
    :cond_2
    iget v1, p0, Lcom/sleepycat/b/l/j;->n:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Lcom/sleepycat/b/l/j;->n:I

    .line 2114
    iget v1, p0, Lcom/sleepycat/b/l/j;->n:I

    sget v2, Lcom/sleepycat/b/l/j;->o:I

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/sleepycat/b/l/j;->n:I

    sget v2, Lcom/sleepycat/b/l/j;->o:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 36492
    :cond_3
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 2116
    iget v2, p0, Lcom/sleepycat/b/l/j;->n:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;J)V

    .line 36508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 2117
    iget v1, p0, Lcom/sleepycat/b/l/j;->n:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->c(J)V

    .line 2118
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/j;->n:I

    goto/16 :goto_0
.end method

.method public final b(Lcom/sleepycat/b/a;)V
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->d(Lcom/sleepycat/b/a;)V

    .line 497
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 498
    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/i;J)V
    .locals 0

    .prologue
    .line 429
    .line 12724
    iput-object p1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 430
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/b/l/j;->a(J)V

    .line 431
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->d()V

    .line 432
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sleepycat/b/l/j;->a:I

    goto :goto_0
.end method

.method public final b([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2160
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 2182
    :cond_0
    :goto_0
    return v0

    .line 36799
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 37097
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 2169
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v2

    .line 2170
    invoke-static {p1, v2, v1}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v2

    .line 2171
    if-ltz v2, :cond_0

    .line 2176
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v2

    .line 2177
    invoke-static {p1, v2, v1}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v1

    .line 2178
    if-gtz v1, :cond_0

    .line 2182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()J
    .locals 6

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->n()J

    move-result-wide v0

    .line 1938
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1940
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1942
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge v0, v1, :cond_0

    .line 1943
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 1950
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    if-eqz v0, :cond_2

    .line 1951
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->v:Lcom/sleepycat/b/a/v;

    .line 34035
    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/a/a/m;)I

    move-result v0

    .line 1951
    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 1954
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/r;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 1955
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/l;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1957
    return-wide v0
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1331
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1332
    return-void
.end method

.method public final c(IJ)V
    .locals 2

    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 1795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 1796
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->e(Z)V

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 671
    return-void
.end method

.method public final c(Lcom/sleepycat/b/a;)Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->d(Lcom/sleepycat/b/a;)V

    .line 509
    const/4 v0, 0x1

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 124
    check-cast p1, Lcom/sleepycat/b/l/j;

    .line 50305
    iget-wide v0, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 50306
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 50299
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 50300
    const/4 v0, -0x1

    .line 50302
    :goto_0
    return v0

    .line 50301
    :cond_0
    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 50302
    const/4 v0, 0x1

    goto :goto_0

    .line 50304
    :cond_1
    const/4 v0, 0x0

    .line 124
    goto :goto_0
.end method

.method d(I)V
    .locals 0

    .prologue
    .line 2793
    return-void
.end method

.method public final d(Lcom/sleepycat/b/a;)V
    .locals 2

    .prologue
    .line 582
    sget-object v0, Lcom/sleepycat/b/l/j$1;->a:[I

    invoke-virtual {p1}, Lcom/sleepycat/b/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown cacheMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 585
    :pswitch_0
    invoke-static {}, Lcom/sleepycat/b/l/i;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->e:J

    .line 602
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 590
    :pswitch_2
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->e:J

    goto :goto_0

    .line 594
    :pswitch_3
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->e:J

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 2128
    if-nez p1, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/b/l/r;->a(ZLcom/sleepycat/b/l/j;)V

    .line 2131
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/b/l/l;->a(ZLcom/sleepycat/b/l/j;)V

    .line 2134
    :cond_0
    iput-boolean p1, p0, Lcom/sleepycat/b/l/j;->l:Z

    .line 2136
    if-eqz p1, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/b/l/r;->a(ZLcom/sleepycat/b/l/j;)V

    .line 2139
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1, p0}, Lcom/sleepycat/b/l/l;->a(ZLcom/sleepycat/b/l/j;)V

    .line 2141
    :cond_1
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 352
    instance-of v1, p1, Lcom/sleepycat/b/l/j;

    if-nez v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    check-cast p1, Lcom/sleepycat/b/l/j;

    .line 9342
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 10342
    iget-wide v4, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 356
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method f(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2497
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    if-lt p1, v1, :cond_1

    .line 2505
    :cond_0
    :goto_0
    return v0

    .line 2504
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    .line 2505
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sleepycat/b/l/ac;->t()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 453
    .line 13468
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 453
    return-wide v0
.end method

.method public g(I)Lcom/sleepycat/b/l/ac;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1401
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 27133
    iget-object v7, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1402
    const/4 v4, 0x0

    .line 1404
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v2, p1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1406
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v8

    .line 1407
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_0

    .line 1408
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1409
    const-string v2, "NULL_LSN without KnownDeleted"

    iget-object v3, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v3, v3, p1

    invoke-static {v2, p0, v8, v9, v3}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 27569
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v2

    .line 1420
    if-nez v2, :cond_1

    .line 1421
    sget-object v2, Lcom/sleepycat/b/p/ae;->a:Lcom/sleepycat/b/p/ae;

    throw v2

    .line 28371
    :cond_1
    :try_start_0
    iget-object v2, v7, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1425
    invoke-virtual {v2, v8, v9}, Lcom/sleepycat/b/g/am;->b(J)Lcom/sleepycat/b/g/a/m;

    move-result-object v3

    .line 1430
    instance-of v2, v3, Lcom/sleepycat/b/g/a/k;

    if-eqz v2, :cond_4

    .line 1431
    move-object v0, v3

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    move-object v2, v0

    .line 1432
    iget-object v5, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 1433
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v2

    move-object v5, v2

    .line 1435
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-interface {v3, v2}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/ac;

    .line 1436
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2, v3, v8, v9}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/i;J)V

    .line 1437
    invoke-virtual {p0, p1, v2, v5}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;[B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1438
    const/4 v2, 0x1

    move v3, v2

    .line 1472
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v2, p1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/ac;

    .line 1473
    if-eqz v2, :cond_2

    .line 1474
    invoke-virtual {v2, v7, v3}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/ad;Z)V

    .line 1476
    :cond_2
    return-object v2

    .line 1439
    :catch_0
    move-exception v2

    .line 1440
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->l(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1442
    new-instance v3, Lcom/sleepycat/b/aa;

    sget-object v4, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    iget-object v5, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v5, v5, p1

    invoke-static {v6, p0, v8, v9, v5}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    move v3, v4

    .line 1469
    goto :goto_1

    .line 1458
    :catch_1
    move-exception v2

    .line 1459
    iget-object v3, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v3, v3, p1

    invoke-static {v6, p0, v8, v9, v3}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;)V

    .line 1461
    throw v2

    .line 1462
    :catch_2
    move-exception v2

    .line 1463
    new-instance v3, Lcom/sleepycat/b/aa;

    sget-object v4, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v6, v6, p1

    invoke-static {v5, p0, v8, v9, v6}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    move-object v5, v6

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public h()J
    .locals 2

    .prologue
    .line 476
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h(I)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->r:[B

    array-length v4, v0

    .line 783
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 784
    if-nez v4, :cond_0

    .line 798
    :goto_0
    return-object v0

    .line 787
    :cond_0
    if-nez v0, :cond_3

    move v1, v2

    .line 788
    :goto_1
    add-int v3, v4, v1

    new-array v3, v3, [B

    .line 789
    iget-object v5, p0, Lcom/sleepycat/b/l/j;->r:[B

    if-eqz v5, :cond_1

    .line 790
    iget-object v5, p0, Lcom/sleepycat/b/l/j;->r:[B

    invoke-static {v5, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 793
    :cond_1
    if-eqz v0, :cond_2

    .line 794
    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v3

    .line 796
    goto :goto_0

    .line 787
    :cond_3
    array-length v1, v0

    goto :goto_1

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->q:Lcom/sleepycat/b/l/l;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 370
    .line 11342
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 370
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 2474
    return-void
.end method

.method public final i(I)Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(I)Lcom/sleepycat/b/l/ac;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->b:Lcom/sleepycat/b/l/r;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/r;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ac;

    return-object v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3287
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3296
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3312
    :cond_0
    :goto_0
    return v0

    .line 3306
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 50218
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 3307
    sget-object v2, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3312
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k(I)J
    .locals 6

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    if-nez v0, :cond_1

    .line 1063
    shl-int/lit8 v0, p1, 0x2

    .line 1064
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/j;->t(I)I

    move-result v1

    .line 1065
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1066
    const-wide/16 v0, -0x1

    .line 1073
    :goto_0
    return-wide v0

    .line 1068
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->s:J

    .line 19258
    iget-object v4, p0, Lcom/sleepycat/b/l/j;->t:[B

    aget-byte v0, v4, v0

    .line 1068
    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v0

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->u:[J

    aget-wide v0, v0, p1

    goto :goto_0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 3326
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->R()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 3339
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final l(I)Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m(I)V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1299
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1300
    return-void
.end method

.method m()Z
    .locals 1

    .prologue
    .line 2523
    const/4 v0, 0x1

    return v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 2020
    sget v0, Lcom/sleepycat/b/c/ao;->G:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final n(I)V
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1307
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 1308
    return-void
.end method

.method public o()J
    .locals 2

    .prologue
    .line 1878
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o(I)Z
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final p(I)Z
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q(I)Lcom/sleepycat/b/l/ac;
    .locals 1

    .prologue
    .line 1383
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->g(I)Lcom/sleepycat/b/l/ac;
    :try_end_0
    .catch Lcom/sleepycat/b/p/ae; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1385
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final r(I)V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/l/j;->d(IJ)V

    .line 1627
    :cond_0
    return-void
.end method

.method public final s(I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2439
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    if-nez v2, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return v0

    .line 2444
    :cond_1
    sget-boolean v2, Lcom/sleepycat/b/l/j;->p:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/j;->f(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2448
    :cond_2
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ge p1, v2, :cond_0

    .line 2449
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/j;->u(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2450
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v0

    .line 2452
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/sleepycat/b/l/j;->f:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Lcom/sleepycat/b/l/j;->a(III)V

    .line 2453
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/j;->a(I)V

    .line 2454
    int-to-long v2, v0

    invoke-direct {p0}, Lcom/sleepycat/b/l/j;->p()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 2455
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 2456
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 2457
    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->i()V

    .line 2463
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 42190
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 43133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 43515
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 42191
    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42193
    const-string v4, "Delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42194
    const-string v4, " in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 44342
    iget-wide v6, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 42194
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42195
    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42197
    iget-object v4, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 45133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 42197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v0, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 2464
    goto :goto_0
.end method

.method t()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3029
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    if-le v2, v1, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return v0

    .line 3031
    :cond_1
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    if-ne v2, v1, :cond_2

    .line 3032
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    .line 3033
    if-eqz v1, :cond_0

    .line 3037
    sget-object v0, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/ac;->b(Lcom/sleepycat/b/a;)V

    .line 3038
    invoke-virtual {v1}, Lcom/sleepycat/b/l/ac;->t()Z

    move-result v0

    .line 3039
    invoke-virtual {v1}, Lcom/sleepycat/b/l/ac;->C()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3042
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4134
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/j;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 2

    .prologue
    .line 3365
    .line 50220
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3365
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 3366
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4012
    const-string v0, "<in>"

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4016
    const-string v0, "</in>"

    return-object v0
.end method

.method public x()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 3408
    .line 50222
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 50223
    iget-object v8, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    move v7, v0

    .line 50224
    :goto_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 3411
    if-ge v7, v0, :cond_2

    .line 3413
    invoke-virtual {p0, v7}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 3414
    if-eqz v0, :cond_1

    .line 3415
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 3417
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3419
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->x()V

    .line 50225
    iget-object v1, v8, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 3420
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZZZLcom/sleepycat/b/l/j;)J

    move-result-wide v2

    .line 3427
    invoke-virtual {p0, v7, v2, v3}, Lcom/sleepycat/b/l/j;->c(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50226
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3411
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 3430
    :catchall_0
    move-exception v1

    .line 50226
    iget-object v0, v0, Lcom/sleepycat/b/l/j;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 3430
    throw v1

    .line 3434
    :cond_2
    return-void
.end method

.method public y()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 3749
    sget-object v0, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4138
    const-string v0, "IN"

    return-object v0
.end method
