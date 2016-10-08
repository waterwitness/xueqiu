.class public Lcom/sleepycat/b/l/a;
.super Lcom/sleepycat/b/l/j;
.source "BIN.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:J

.field private final q:Lcom/sleepycat/b/p/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ar",
            "<",
            "Lcom/sleepycat/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:Lcom/sleepycat/b/l/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;-><init>()V

    .line 51
    new-instance v0, Lcom/sleepycat/b/p/ar;

    invoke-direct {v0}, Lcom/sleepycat/b/p/ar;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    .line 64
    sget-object v0, Lcom/sleepycat/b/l/an;->a:Lcom/sleepycat/b/l/an;

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 67
    iput v2, p0, Lcom/sleepycat/b/l/a;->r:I

    .line 68
    iput-boolean v2, p0, Lcom/sleepycat/b/l/a;->s:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;[BII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/l/j;-><init>(Lcom/sleepycat/b/c/i;[BII)V

    .line 51
    new-instance v0, Lcom/sleepycat/b/p/ar;

    invoke-direct {v0}, Lcom/sleepycat/b/p/ar;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    .line 64
    sget-object v0, Lcom/sleepycat/b/l/an;->a:Lcom/sleepycat/b/l/an;

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 77
    iput v2, p0, Lcom/sleepycat/b/l/a;->r:I

    .line 78
    iput-boolean v2, p0, Lcom/sleepycat/b/l/a;->s:Z

    .line 79
    return-void
.end method

.method private a(ILcom/sleepycat/b/a/c;)J
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 901
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    .line 903
    instance-of v0, v1, Lcom/sleepycat/b/l/y;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 904
    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 905
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v2

    .line 912
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/l/y;->c(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p0, p1, v4}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/l/a;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    invoke-direct {p0, p1, v0, v4}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/y;Z)V

    .line 919
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;)V

    .line 920
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->o()V

    .line 922
    invoke-virtual {v1}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v0

    .line 925
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private a(ILcom/sleepycat/b/l/y;Z)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 934
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    .line 935
    if-eqz p3, :cond_1

    .line 31717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 935
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 938
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/b/l/y;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32717
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 33133
    iget-object v1, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 943
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 935
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 950
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v3

    sget-object v7, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/g/av;)J

    move-result-wide v6

    .line 953
    invoke-virtual {p0, p1, v6, v7}, Lcom/sleepycat/b/l/a;->c(IJ)V

    .line 955
    const/4 v8, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;JJLcom/sleepycat/b/n/q;)V

    .line 969
    :cond_3
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1213
    .line 45717
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 1216
    iget-boolean v2, p0, Lcom/sleepycat/b/l/a;->s:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46468
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 1216
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sleepycat/b/l/a;->r:I

    .line 46714
    iget v3, v1, Lcom/sleepycat/b/c/i;->r:I

    .line 1216
    if-lt v2, v3, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return v0

    .line 1224
    :cond_1
    invoke-static {p0}, Lcom/sleepycat/b/l/c;->a(Lcom/sleepycat/b/l/a;)I

    move-result v2

    .line 1227
    if-lez v2, :cond_0

    .line 47345
    iget v3, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 47710
    iget v1, v1, Lcom/sleepycat/b/c/i;->q:I

    .line 1232
    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    .line 1234
    if-gt v2, v1, :cond_0

    .line 1238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a([BII)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/sleepycat/b/l/a;

    .line 4717
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 206
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sleepycat/b/l/a;-><init>(Lcom/sleepycat/b/c/i;[BII)V

    return-object v0
.end method

.method final a(I)V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/j;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 167
    invoke-virtual {v0, p1, v2, v3, p0}, Lcom/sleepycat/b/l/an;->a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 168
    return-void
.end method

.method final a(III)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->a(III)V

    .line 158
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/l/an;->a(III)Lcom/sleepycat/b/l/an;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 159
    return-void
.end method

.method final a(ILcom/sleepycat/b/l/ac;)V
    .locals 3

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/sleepycat/b/l/y;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/sleepycat/b/l/y;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->m()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/sleepycat/b/l/an;->a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;)V

    .line 140
    return-void
.end method

.method final a(ILcom/sleepycat/b/l/j;I)V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/j;I)V

    .line 148
    check-cast p2, Lcom/sleepycat/b/l/a;

    iget-object v0, p2, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    invoke-virtual {v0, p3}, Lcom/sleepycat/b/l/an;->a(I)J

    move-result-wide v0

    .line 149
    iget-object v2, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    invoke-virtual {v2, p1, v0, v1, p0}, Lcom/sleepycat/b/l/an;->a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    .line 150
    return-void
.end method

.method final a(J)V
    .locals 5

    .prologue
    .line 232
    .line 5468
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 232
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6460
    iput-wide p1, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-wide p1, p0, Lcom/sleepycat/b/l/a;->a:J

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Z)V
    .locals 2

    .prologue
    .line 1068
    .line 37692
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 38050
    iget-object v1, v0, Lcom/sleepycat/b/d/b;->h:Lcom/sleepycat/b/p/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/d;->g()V

    .line 38051
    if-eqz p2, :cond_0

    .line 38052
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->k:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1069
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 443
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/ar;->b(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public final a(Lcom/sleepycat/b/d/e;)V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->i:Lcom/sleepycat/b/c/i;

    .line 36133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 36692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 37032
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->p:[Lcom/sleepycat/b/p/d;

    invoke-virtual {p1}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1061
    return-void
.end method

.method final a(Lcom/sleepycat/b/l/j;II)V
    .locals 6

    .prologue
    .line 513
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 514
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 515
    :cond_1
    sub-int v2, p3, p2

    .line 516
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/ar;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 517
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 518
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/c;

    .line 13399
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    .line 519
    if-eq v1, p0, :cond_2

    .line 14374
    iget v4, v0, Lcom/sleepycat/b/c/c;->b:I

    .line 14382
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 530
    sget-boolean v5, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v5, :cond_3

    if-eq v1, p0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nodeId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15342
    iget-wide v4, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 530
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 532
    :cond_3
    sget-boolean v1, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/sleepycat/b/l/a;

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move-object v1, p1

    .line 587
    check-cast v1, Lcom/sleepycat/b/l/a;

    .line 588
    if-nez p2, :cond_6

    .line 589
    if-ge v4, p3, :cond_5

    .line 591
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 15395
    iput-object v1, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 593
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/c/c;)V

    goto :goto_0

    .line 596
    :cond_5
    sub-int v1, v4, v2

    .line 16378
    iput v1, v0, Lcom/sleepycat/b/c/c;->b:I

    goto :goto_0

    .line 599
    :cond_6
    if-lt v4, p2, :cond_2

    .line 601
    sub-int/2addr v4, p2

    .line 17378
    iput v4, v0, Lcom/sleepycat/b/c/c;->b:I

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 17395
    iput-object v1, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 604
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/c/c;)V

    goto :goto_0

    .line 608
    :cond_7
    return-void
.end method

.method final a(Lcom/sleepycat/b/l/j;II[BZLcom/sleepycat/b/a;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 480
    invoke-virtual {p0, p4, v4, v0}, Lcom/sleepycat/b/l/a;->a([BZZ)I

    move-result v1

    .line 13345
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 482
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v0, v4

    .line 483
    :cond_0
    const v3, -0x10001

    and-int/2addr v1, v3

    .line 484
    if-eqz p5, :cond_1

    if-gez v1, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V

    .line 496
    :goto_0
    return-void

    .line 488
    :cond_1
    if-nez p5, :cond_2

    if-nez v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    if-ne v1, v0, :cond_2

    .line 491
    add-int/lit8 v4, v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/j;IIILcom/sleepycat/b/a;)V

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/l/q;)V
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 1156
    iget-boolean v0, p1, Lcom/sleepycat/b/l/q;->l:Z

    if-eqz v0, :cond_1

    move-wide v2, v6

    :goto_0
    iget-wide v4, p0, Lcom/sleepycat/b/l/a;->a:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/q;JJ)V

    .line 1160
    iget-boolean v0, p1, Lcom/sleepycat/b/l/q;->l:Z

    if-eqz v0, :cond_2

    .line 1161
    iget-wide v0, p1, Lcom/sleepycat/b/l/q;->d:J

    iput-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    .line 1162
    iget v0, p0, Lcom/sleepycat/b/l/a;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/l/a;->r:I

    .line 1183
    :cond_0
    :goto_1
    iput-boolean v8, p0, Lcom/sleepycat/b/l/a;->s:Z

    .line 1184
    return-void

    .line 43468
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->m:J

    goto :goto_0

    .line 1164
    :cond_2
    iget-wide v0, p1, Lcom/sleepycat/b/l/q;->d:J

    .line 44460
    iput-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    .line 1165
    iput-wide v6, p0, Lcom/sleepycat/b/l/a;->a:J

    .line 1166
    iput v8, p0, Lcom/sleepycat/b/l/a;->r:I

    move v0, v8

    .line 45345
    :goto_2
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 1175
    if-ge v0, v1, :cond_0

    .line 1176
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->q()V

    goto :goto_1

    .line 1175
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;)V
    .locals 19

    .prologue
    .line 1092
    .line 38717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    move-object/from16 v17, v0

    .line 39133
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    move-object/from16 v18, v0

    .line 39504
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 1096
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sleepycat/b/l/p;->e:Z

    .line 40717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 40304
    const/4 v14, 0x0

    .line 40305
    const/4 v15, 0x0

    .line 41345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sleepycat/b/l/j;->f:I

    move/from16 v16, v0

    .line 40308
    const/4 v7, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 40310
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v8

    .line 40311
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v6, v4

    .line 40312
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    .line 40314
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-eqz v9, :cond_11

    .line 41378
    if-eqz v8, :cond_1

    .line 41385
    iget-object v9, v2, Lcom/sleepycat/b/a/c;->v:Lcom/sleepycat/b/p/z;

    invoke-virtual {v9}, Lcom/sleepycat/b/p/z;->f()V

    .line 41386
    const/4 v9, 0x1

    .line 40317
    :goto_2
    if-eqz v9, :cond_11

    .line 40320
    if-eqz v6, :cond_7

    .line 40321
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v13, "CleanMigrateLN:"

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v13}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/i;JLcom/sleepycat/b/l/a;IZZJZLjava/lang/String;)V

    move v4, v15

    .line 40308
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v15, v4

    goto :goto_0

    .line 40311
    :cond_0
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1

    .line 41389
    :cond_1
    iget-object v9, v2, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 41585
    iget-boolean v9, v9, Lcom/sleepycat/b/c/ad;->b:Z

    .line 41389
    if-nez v9, :cond_6

    .line 41400
    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 41402
    if-nez v6, :cond_2

    if-eqz v12, :cond_3

    iget-boolean v10, v2, Lcom/sleepycat/b/a/c;->S:Z

    if-eqz v10, :cond_4

    :cond_2
    iget-object v10, v2, Lcom/sleepycat/b/a/c;->X:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 41407
    iget-object v9, v2, Lcom/sleepycat/b/a/c;->w:Lcom/sleepycat/b/p/z;

    invoke-virtual {v9}, Lcom/sleepycat/b/p/z;->f()V

    .line 41408
    const/4 v9, 0x1

    goto :goto_2

    .line 41402
    :cond_3
    iget-boolean v10, v2, Lcom/sleepycat/b/a/c;->R:Z

    if-nez v10, :cond_2

    .line 41411
    :cond_4
    iget-boolean v10, v2, Lcom/sleepycat/b/a/c;->K:Z

    if-nez v10, :cond_5

    iget-boolean v10, v2, Lcom/sleepycat/b/a/c;->J:Z

    if-eqz v10, :cond_6

    if-eqz v6, :cond_6

    :cond_5
    iget-object v10, v2, Lcom/sleepycat/b/a/c;->Y:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 41414
    iget-object v9, v2, Lcom/sleepycat/b/a/c;->x:Lcom/sleepycat/b/p/z;

    invoke-virtual {v9}, Lcom/sleepycat/b/p/z;->f()V

    .line 41415
    const/4 v9, 0x1

    goto :goto_2

    .line 41418
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 40329
    :cond_7
    if-nez v14, :cond_10

    .line 40330
    move/from16 v0, v16

    new-array v4, v0, [Ljava/lang/Integer;

    .line 40332
    :goto_4
    add-int/lit8 v5, v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v15

    move-object v14, v4

    move v4, v5

    goto :goto_3

    .line 40339
    :cond_8
    if-eqz v14, :cond_9

    .line 40340
    const/4 v4, 0x0

    new-instance v5, Lcom/sleepycat/b/a/c$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v2, v0}, Lcom/sleepycat/b/a/c$1;-><init>(Lcom/sleepycat/b/a/c;Lcom/sleepycat/b/l/a;)V

    invoke-static {v14, v4, v15, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 40348
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_5
    move/from16 v0, v16

    if-ge v0, v15, :cond_9

    .line 40349
    aget-object v4, v14, v16

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 40350
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    .line 40351
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v8

    .line 40352
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v13, "CleanMigrateLN:"

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v13}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/i;JLcom/sleepycat/b/l/a;IZZJZLjava/lang/String;)V

    .line 40348
    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_5

    .line 1101
    :cond_9
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/l/p;->l:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/l/a;->A()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1102
    const/4 v3, 0x1

    .line 1103
    new-instance v2, Lcom/sleepycat/b/l/c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/l/c;-><init>(Lcom/sleepycat/b/l/a;)V

    move-object v10, v2

    move v11, v3

    .line 1110
    :goto_6
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/l/p;->m:Z

    if-eqz v2, :cond_a

    if-nez v11, :cond_a

    .line 1111
    invoke-virtual/range {v18 .. v19}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/l/j;)V

    .line 1118
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 42189
    const/4 v2, 0x0

    move v3, v2

    .line 42345
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 42189
    if-ge v3, v2, :cond_d

    .line 42190
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    .line 42191
    if-eqz v2, :cond_b

    instance-of v4, v2, Lcom/sleepycat/b/l/y;

    if-eqz v4, :cond_b

    .line 42192
    check-cast v2, Lcom/sleepycat/b/l/y;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/y;Z)V

    .line 42189
    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 1105
    :cond_c
    const/4 v3, 0x0

    .line 1106
    const/4 v2, 0x0

    move-object v10, v2

    move v11, v3

    goto :goto_6

    .line 1139
    :cond_d
    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/sleepycat/b/l/q;->l:Z

    .line 1140
    if-eqz v11, :cond_e

    const-wide/16 v6, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sleepycat/b/l/a;->a:J

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;JJ)V

    .line 1143
    if-eqz v11, :cond_f

    new-instance v2, Lcom/sleepycat/b/g/a/b;

    invoke-direct {v2, v10}, Lcom/sleepycat/b/g/a/b;-><init>(Lcom/sleepycat/b/l/c;)V

    :goto_9
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sleepycat/b/l/q;->a:Lcom/sleepycat/b/g/a/m;

    .line 1146
    return-void

    .line 42468
    :cond_e
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/l/j;->m:J

    goto :goto_8

    .line 1143
    :cond_f
    new-instance v2, Lcom/sleepycat/b/g/a/j;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/g/a/j;-><init>(Lcom/sleepycat/b/l/j;)V

    goto :goto_9

    :cond_10
    move-object v4, v14

    goto/16 :goto_4

    :cond_11
    move v4, v15

    goto/16 :goto_3
.end method

.method public final a(Lcom/sleepycat/b/a/s;)Z
    .locals 19

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/a;->i:Lcom/sleepycat/b/c/i;

    .line 19133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 668
    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    const/4 v2, 0x0

    .line 801
    :goto_0
    return v2

    .line 672
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/l/a;->p()I

    move-result v2

    if-lez v2, :cond_1

    .line 673
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 676
    :cond_1
    const/4 v4, 0x0

    .line 677
    const/4 v3, 0x0

    .line 19717
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 20133
    iget-object v0, v8, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    move-object/from16 v18, v0

    .line 681
    const/4 v2, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v4

    .line 20345
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 681
    move/from16 v0, v16

    if-ge v0, v3, :cond_8

    .line 684
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 705
    :cond_2
    invoke-static/range {v18 .. v18}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;

    move-result-object v3

    .line 21279
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sleepycat/b/n/q;->r:Z

    .line 711
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    .line 712
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 713
    sget-object v6, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v6

    .line 22027
    iget-object v6, v6, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 715
    sget-object v7, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v7, :cond_3

    .line 716
    const/16 v17, 0x1

    .line 25654
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/n/q;->a_(Z)V

    move/from16 v3, v17

    move v4, v2

    .line 681
    :goto_2
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v4

    goto :goto_1

    .line 722
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v6

    .line 22685
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/l/j;->g:[B

    .line 22799
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 23097
    iget-object v9, v9, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 722
    invoke-static {v6, v7, v9}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v6

    if-nez v6, :cond_c

    .line 729
    const/4 v6, 0x1

    .line 739
    :goto_3
    invoke-virtual {v8}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 740
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    .line 741
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->k()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->b(J)Z

    move-result v7

    if-nez v7, :cond_4

    .line 744
    invoke-virtual {v8}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 756
    if-eqz p1, :cond_5

    .line 23657
    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v12

    .line 23723
    iget v2, v2, Lcom/sleepycat/b/l/y;->g:I

    const v7, 0x7fffffff

    and-int v13, v2, v7

    move-object/from16 v9, p1

    move-wide v10, v4

    move-object v14, v8

    .line 757
    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/a/s;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 779
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->s(I)Z

    move-result v2

    .line 780
    sget-boolean v4, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v4, :cond_7

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :catchall_0
    move-exception v2

    .line 25654
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 788
    throw v2

    .line 24371
    :cond_5
    :try_start_2
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 24657
    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v12

    .line 24723
    iget v2, v2, Lcom/sleepycat/b/l/y;->g:I

    const v7, 0x7fffffff

    and-int v13, v2, v7

    .line 761
    const/4 v15, 0x1

    move-wide v10, v4

    move-object v14, v8

    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;Z)V

    goto :goto_4

    .line 774
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/y;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 786
    :cond_7
    add-int/lit8 v16, v16, -0x1

    .line 25654
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    move/from16 v3, v17

    move v4, v6

    .line 789
    goto/16 :goto_2

    .line 26345
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 792
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    .line 793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/a;->a([B)V

    .line 27345
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 797
    if-nez v2, :cond_a

    .line 27605
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sleepycat/b/l/j;->e:J

    .line 801
    :cond_a
    if-nez v17, :cond_b

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    move v6, v2

    goto/16 :goto_3

    :cond_d
    move/from16 v3, v17

    move v4, v2

    goto/16 :goto_2
.end method

.method public final b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/j;->b(I)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 377
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/ac;Lcom/sleepycat/b/l/ac;)V

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->o()V

    .line 381
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 382
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;)V

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 384
    return-void
.end method

.method public final b(Lcom/sleepycat/b/c/c;)V
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/ar;->a(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v0

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/b/l/a;->t:Lcom/sleepycat/b/l/an;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/an;->a()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/j;->c(I)V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 399
    return-void
.end method

.method public final d()Lcom/sleepycat/b/l/d;
    .locals 5

    .prologue
    .line 194
    new-instance v0, Lcom/sleepycat/b/l/d;

    .line 3342
    iget-wide v2, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 3717
    iget-object v1, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 4496
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 4685
    iget-object v4, p0, Lcom/sleepycat/b/l/j;->g:[B

    .line 194
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sleepycat/b/l/d;-><init>(JLcom/sleepycat/b/c/h;[B)V

    return-object v0
.end method

.method final d(I)V
    .locals 3

    .prologue
    .line 632
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/ar;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/c;

    .line 17399
    iget-object v2, v0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    .line 637
    if-eq v2, p0, :cond_1

    .line 18374
    iget v2, v0, Lcom/sleepycat/b/c/c;->b:I

    .line 639
    if-gt p1, v2, :cond_1

    .line 640
    add-int/lit8 v2, v2, 0x1

    .line 18378
    iput v2, v0, Lcom/sleepycat/b/c/c;->b:I

    goto :goto_0

    .line 645
    :cond_2
    return-void
.end method

.method public final e(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 880
    .line 30717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 31133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 31504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 881
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/a/c;)J

    move-result-wide v0

    .line 882
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/l/a;->a(JJ)V

    .line 885
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 886
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->N()V

    .line 888
    :cond_0
    return-void
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method final f(I)Z
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x1

    return v0
.end method

.method public final g()J
    .locals 4

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    :goto_0
    return-wide v0

    .line 6468
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->m:J

    goto :goto_0
.end method

.method public final g(I)Lcom/sleepycat/b/l/ac;
    .locals 1

    .prologue
    .line 1250
    :try_start_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/j;->g(I)Lcom/sleepycat/b/l/ac;
    :try_end_0
    .catch Lcom/sleepycat/b/p/ae; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1252
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/sleepycat/b/l/a;->a:J

    return-wide v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/l/a;->s:Z

    .line 264
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->p()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 2

    .prologue
    .line 284
    .line 6717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 7496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 291
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->R()Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 311
    .line 7717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 8133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 8504
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    move v1, v2

    .line 9345
    :goto_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 313
    if-ge v1, v0, :cond_3

    .line 314
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_2

    .line 316
    instance-of v4, v0, Lcom/sleepycat/b/l/y;

    if-eqz v4, :cond_0

    .line 317
    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 328
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_1
    return v2

    .line 336
    :cond_1
    invoke-virtual {v3, p0, v1, v2}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/l/a;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const/4 v2, 0x1

    goto :goto_1

    .line 313
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 344
    :cond_3
    const/4 v2, 0x2

    goto :goto_1
.end method

.method final m()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 403
    sget v0, Lcom/sleepycat/b/c/ao;->w:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final o()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 414
    .line 9717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 10496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 414
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const/4 v0, 0x0

    move v1, v0

    .line 11372
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->h:[B

    array-length v0, v0

    .line 416
    if-ge v1, v0, :cond_1

    .line 417
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 12143
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 420
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->t()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 416
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 425
    :cond_1
    return-wide v2
.end method

.method public final p()I
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sleepycat/b/l/a;->q:Lcom/sleepycat/b/p/ar;

    .line 13057
    iget-object v1, v0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 13058
    const/4 v0, 0x2

    .line 13064
    :goto_0
    return v0

    .line 13060
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/b/p/ar;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sleepycat/b/p/ar;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 13061
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 13063
    :cond_2
    iget-object v1, v0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 13064
    iget-object v0, v0, Lcom/sleepycat/b/p/ar;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 13066
    :cond_3
    const/4 v0, 0x0

    .line 462
    goto :goto_0
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 27717
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 28133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 28332
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v1, :cond_0

    .line 28333
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/a;)V

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    return v0
.end method

.method public final s()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 847
    sget-boolean v0, Lcom/sleepycat/b/l/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "BIN must be latched before evicting LNs"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 28717
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 29133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 29504
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 859
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->p()I

    move-result v0

    if-nez v0, :cond_3

    .line 860
    const/4 v0, 0x0

    move-wide v2, v4

    .line 30345
    :goto_0
    iget v6, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 860
    if-ge v0, v6, :cond_1

    .line 861
    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/a/c;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    :cond_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sleepycat/b/l/a;->a(JJ)V

    .line 867
    :goto_1
    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 868
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->N()V

    .line 871
    :cond_2
    return-wide v2

    :cond_3
    move-wide v2, v4

    goto :goto_1
.end method

.method final t()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 988
    .line 989
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 991
    :goto_0
    if-eqz v0, :cond_0

    .line 992
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->B()V

    :cond_0
    move v4, v2

    move v3, v2

    .line 33345
    :goto_1
    iget v5, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 994
    if-ge v4, v5, :cond_3

    .line 995
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/l/a;->o(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 996
    add-int/lit8 v3, v3, 0x1

    .line 994
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 989
    goto :goto_0

    .line 1001
    :cond_3
    if-lez v3, :cond_5

    .line 1009
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1011
    :goto_2
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->C()V

    .line 1007
    :cond_4
    :goto_3
    return v2

    .line 1004
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->p()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_6

    .line 1009
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1011
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->C()V

    :cond_7
    move v2, v1

    .line 1007
    goto :goto_3

    .line 1009
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1011
    invoke-virtual {p0}, Lcom/sleepycat/b/l/a;->C()V

    .line 1009
    :cond_8
    throw v1
.end method

.method final u()V
    .locals 2

    .prologue
    .line 1021
    .line 34342
    iget-wide v0, p0, Lcom/sleepycat/b/l/j;->c:J

    .line 1021
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1022
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    const-string v0, "<bin>"

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    const-string v0, "</bin>"

    return-object v0
.end method

.method public final x()V
    .locals 3

    .prologue
    .line 1046
    .line 34717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 35133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1047
    const/4 v0, 0x0

    move v1, v0

    .line 35345
    :goto_0
    iget v0, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 1047
    if-ge v1, v0, :cond_1

    .line 1048
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    .line 1050
    check-cast v0, Lcom/sleepycat/b/l/y;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/y;Z)V

    .line 1047
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1053
    :cond_1
    return-void
.end method

.method public y()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 1076
    sget-object v0, Lcom/sleepycat/b/g/af;->m:Lcom/sleepycat/b/g/af;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    const-string v0, "BIN"

    return-object v0
.end method
