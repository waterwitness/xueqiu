.class public final Lcom/sleepycat/b/bh;
.super Lcom/sleepycat/b/e;
.source "SecondaryCursor.java"


# instance fields
.field private final g:Lcom/sleepycat/b/bi;

.field private h:Lcom/sleepycat/b/p/ap;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/bh;Z)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/e;Z)V

    .line 102
    iget-object v0, p1, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    iput-object v0, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    .line 103
    iget-object v0, p1, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    iput-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/bi;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)V

    .line 76
    iput-object p1, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    .line 3998
    iget-object v0, p1, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 4206
    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 5064
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->ad:Lcom/sleepycat/b/p/ap;

    .line 77
    iput-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/bi;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V

    .line 91
    iput-object p1, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    .line 92
    return-void
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    invoke-virtual {v0}, Lcom/sleepycat/b/bi;->i()Lcom/sleepycat/b/i;

    move-result-object v1

    .line 1513
    if-nez v1, :cond_0

    .line 1515
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    .line 1517
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 1488
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1490
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_1

    .line 1495
    :goto_0
    return-object v0

    .line 1493
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1494
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 1461
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1462
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-object v0

    .line 1465
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1466
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_0

    .line 1470
    if-eqz p5, :cond_2

    sget-object v5, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    goto :goto_1
.end method

.method private static a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1574
    const-string v0, "key"

    invoke-static {p0, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1575
    const-string v0, "pKey"

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1576
    const-string v0, "data"

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1577
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/sleepycat/b/bi;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/sleepycat/b/bi;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 361
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 7416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 7417
    invoke-static {p1, v2, p2}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 7418
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryCursor.getFirst: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 7419
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 7420
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 7424
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 1423
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1424
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-object v0

    .line 1427
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1428
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_0

    .line 1432
    sget-object v0, Lcom/sleepycat/b/bh$1;->a:[I

    invoke-virtual {p5}, Lcom/sleepycat/b/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1444
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1435
    :pswitch_0
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 1439
    :pswitch_1
    sget-object v5, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 1442
    :pswitch_2
    sget-object v5, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 1432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic a(Z)Lcom/sleepycat/b/e;
    .locals 1

    .prologue
    .line 61
    .line 13150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 13151
    new-instance v0, Lcom/sleepycat/b/bh;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/bh;-><init>(Lcom/sleepycat/b/bh;Z)V

    .line 61
    return-object v0
.end method

.method public final bridge synthetic a()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 61
    .line 14113
    iget-object v0, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    .line 61
    return-object v0
.end method

.method public final b()Lcom/sleepycat/b/av;
    .locals 5

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 192
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->a(Ljava/lang/String;)V

    .line 193
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryCursor.delete: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 194
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 200
    :cond_0
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 201
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 202
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/b/bh;->h(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 205
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/sleepycat/b/bh;->a:Lcom/sleepycat/b/c/c;

    .line 5489
    iget-object v3, v3, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 207
    iget-object v4, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    invoke-virtual {v4}, Lcom/sleepycat/b/bi;->i()Lcom/sleepycat/b/i;

    move-result-object v4

    .line 208
    if-nez v4, :cond_2

    .line 6408
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 210
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/bh;->b(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 219
    :cond_1
    return-object v0

    .line 212
    :cond_2
    invoke-virtual {v4, v3, v2}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 213
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v4, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    invoke-virtual {v0, v3, v1, v2}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;

    move-result-object v0

    throw v0
.end method

.method public final b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 7333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 7334
    invoke-static {p1, v1, p2}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 7335
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryCursor.getCurrent: "

    invoke-virtual {p0, v0, v2, v3}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 7336
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 7337
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 7403
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/sleepycat/b/bh;->h(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 7404
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_1

    .line 7405
    :goto_0
    return-object v0

    .line 7407
    :cond_1
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 444
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 7499
    invoke-virtual {p0, v5}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 7500
    invoke-static {p1, v2, p2}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 7501
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryCursor.getLast: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 7502
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 7503
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 7507
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 444
    return-object v0
.end method

.method final b(Lcom/sleepycat/b/m;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1528
    iget-object v0, p0, Lcom/sleepycat/b/bh;->g:Lcom/sleepycat/b/bi;

    .line 8624
    iget-object v2, v0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 1529
    const/4 v0, 0x0

    .line 9511
    iget-boolean v3, v2, Lcom/sleepycat/b/bf;->G:Z

    .line 1536
    if-nez v3, :cond_1

    .line 10109
    iget-object v3, v2, Lcom/sleepycat/b/bf;->z:Lcom/sleepycat/b/bk;

    .line 1538
    if-eqz v3, :cond_2

    .line 1544
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 11109
    iget-object v2, v2, Lcom/sleepycat/b/bf;->z:Lcom/sleepycat/b/bk;

    .line 1545
    invoke-interface {v2}, Lcom/sleepycat/b/bk;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, p1}, Lcom/sleepycat/b/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 1564
    :cond_1
    :goto_0
    return v0

    .line 11158
    :cond_2
    iget-object v3, v2, Lcom/sleepycat/b/bf;->A:Lcom/sleepycat/b/bl;

    .line 1550
    if-eqz v3, :cond_1

    .line 1556
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 12158
    iget-object v2, v2, Lcom/sleepycat/b/bf;->A:Lcom/sleepycat/b/bl;

    .line 1559
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1560
    goto :goto_0
.end method

.method public final c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 527
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 7588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 7589
    invoke-static {p1, v2, p2}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 7590
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryCursor.getNext: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 7591
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 7592
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 7596
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bh;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7597
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7599
    :cond_1
    sget-object v5, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 802
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 7863
    invoke-virtual {p0, v5}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 7864
    invoke-static {p1, v2, p2}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 7865
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "SecondaryCursor.getPrev: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 7866
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 7867
    iget-object v0, p0, Lcom/sleepycat/b/bh;->h:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 7871
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bh;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 7872
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    :goto_0
    return-object v0

    .line 7874
    :cond_1
    sget-object v5, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public final e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1084
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 8139
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 8140
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8141
    const-string v0, "pKey"

    invoke-static {v6, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8142
    const-string v0, "data"

    invoke-static {p2, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8143
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryCursor.getSearchKey: "

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 8146
    sget-object v5, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1084
    return-object v0
.end method

.method public final f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1166
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 8226
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/bh;->b(Z)V

    .line 8227
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8228
    const-string v0, "pKey"

    invoke-static {v6, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8229
    const-string v0, "data"

    invoke-static {p2, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 8230
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryCursor.getSearchKeyRange: "

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 8233
    sget-object v5, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1166
    return-object v0
.end method

.method public final g(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 1246
    invoke-static {}, Lcom/sleepycat/b/bi;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
