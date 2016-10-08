.class public Lcom/sleepycat/b/e;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Lcom/sleepycat/b/al;


# static fields
.field static final e:Lcom/sleepycat/b/m;

.field static final synthetic f:Z

.field private static final q:Lcom/sleepycat/b/m;


# instance fields
.field public a:Lcom/sleepycat/b/c/c;

.field b:Lcom/sleepycat/b/g;

.field c:Lcom/sleepycat/b/c/i;

.field d:Z

.field private g:Z

.field private h:Lcom/sleepycat/b/i;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/logging/Logger;

.field private l:Lcom/sleepycat/b/a;

.field private m:Z

.field private n:Lcom/sleepycat/b/c/au;

.field private o:Lcom/sleepycat/b/bp;

.field private p:Lcom/sleepycat/b/p/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    const-class v0, Lcom/sleepycat/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/e;->f:Z

    .line 3235
    new-instance v0, Lcom/sleepycat/b/m;

    new-array v3, v2, [B

    invoke-direct {v0, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    sput-object v0, Lcom/sleepycat/b/e;->q:Lcom/sleepycat/b/m;

    .line 3237
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 3239
    sput-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    invoke-virtual {v0, v2, v2, v1}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 3240
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    .locals 6

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->d:Z

    .line 282
    if-nez p3, :cond_1

    .line 283
    sget-object v4, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    const-string v1, "Can\'t access Database:"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 291
    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;Z)V

    .line 293
    return-void

    :cond_1
    move-object v4, p3

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/e;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean v2, p0, Lcom/sleepycat/b/e;->d:Z

    .line 348
    iget-boolean v0, p1, Lcom/sleepycat/b/e;->i:Z

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->i:Z

    .line 349
    iget-boolean v0, p1, Lcom/sleepycat/b/e;->j:Z

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->j:Z

    .line 350
    iget-boolean v0, p1, Lcom/sleepycat/b/e;->g:Z

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->g:Z

    .line 352
    iget-object v0, p1, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 18735
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 18737
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 19290
    invoke-virtual {v0, p2, v1, v3}, Lcom/sleepycat/b/c/c;->a(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v0

    .line 18739
    if-nez p2, :cond_1

    .line 18740
    iput-object v3, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 18741
    const/4 v1, -0x1

    iput v1, v0, Lcom/sleepycat/b/c/c;->b:I

    .line 18742
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/sleepycat/b/c/c;->g:B

    .line 352
    :cond_1
    iput-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 353
    iget-object v0, p1, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    iput-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 354
    iget-object v0, p1, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    iput-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    .line 355
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->e()V

    .line 358
    :cond_2
    iget-object v0, p1, Lcom/sleepycat/b/e;->b:Lcom/sleepycat/b/g;

    iput-object v0, p0, Lcom/sleepycat/b/e;->b:Lcom/sleepycat/b/g;

    .line 359
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 20133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 20515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 359
    iput-object v0, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    .line 360
    iget-object v0, p1, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    iput-object v0, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    .line 361
    iget-boolean v0, p1, Lcom/sleepycat/b/e;->m:Z

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->m:Z

    .line 362
    iget-object v0, p1, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    iput-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    .line 363
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean v5, p0, Lcom/sleepycat/b/e;->d:Z

    .line 200
    if-nez p3, :cond_1

    .line 201
    sget-object v4, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 205
    :goto_0
    if-eqz p1, :cond_0

    .line 206
    const-string v0, "Can\'t access Database:"

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 4998
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 5982
    iget-object v1, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 6511
    iget-boolean v1, v1, Lcom/sleepycat/b/c/i;->d:Z

    .line 7127
    iget-boolean v2, v4, Lcom/sleepycat/b/g;->e:Z

    .line 210
    invoke-static {v0, p2, v1, v2}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;

    move-result-object v3

    .line 8089
    iget-object v2, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    move-object v0, p0

    move-object v1, p1

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;Z)V

    .line 218
    return-void

    :cond_1
    move-object v4, p3

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;)V
    .locals 6

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->d:Z

    .line 262
    sget-object v4, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 266
    if-eqz p1, :cond_0

    .line 267
    const-string v0, "Can\'t access Database:"

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 13089
    :cond_0
    iget-object v2, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 270
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;Z)V

    .line 272
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean v5, p0, Lcom/sleepycat/b/e;->d:Z

    .line 229
    if-nez p3, :cond_4

    .line 230
    sget-object v4, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 234
    :goto_0
    if-eqz p1, :cond_0

    .line 235
    const-string v0, "Can\'t access Database:"

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 8998
    :cond_0
    iget-object v1, p1, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 9127
    iget-boolean v0, v4, Lcom/sleepycat/b/g;->e:Z

    .line 11089
    iget-object v2, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 11511
    iget-boolean v2, v2, Lcom/sleepycat/b/c/i;->d:Z

    .line 9165
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Transaction cannot be used because the database was opened non-transactionally"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9174
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9175
    const/4 p2, 0x0

    .line 9183
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sleepycat/b/n/q;->j_()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9184
    const/4 v0, 0x1

    .line 9187
    :cond_3
    invoke-static {v1, p2, v0}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Z)Lcom/sleepycat/b/n/q;

    move-result-object v3

    .line 12089
    iget-object v2, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    move-object v0, p0

    move-object v1, p1

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;Z)V

    .line 246
    return-void

    :cond_4
    move-object v4, p3

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/ao;",
            "Lcom/sleepycat/b/c/e;",
            "Ljava/util/Comparator",
            "<[B>;)",
            "Lcom/sleepycat/b/av;"
        }
    .end annotation

    .prologue
    .line 2584
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/ao;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2585
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v3

    .line 2586
    iget-object v7, p0, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;

    move-result-object v0

    .line 2589
    iget-object v0, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2645
    :goto_0
    return-object v0

    .line 2647
    :catch_0
    move-exception v0

    .line 2598
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v3

    .line 2602
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v4

    .line 2606
    invoke-static {p1}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 2607
    invoke-static {p2}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v2

    .line 47131
    iget-boolean v0, p4, Lcom/sleepycat/b/c/e;->e:Z

    .line 2610
    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v5, p4

    move-object v6, p5

    .line 2615
    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/f;

    move-result-object v0

    .line 2640
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v3, v4, :cond_2

    .line 2641
    invoke-static {v1, p1}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 2642
    invoke-static {v2, p2}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 2645
    :cond_2
    iget-object v0, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 2620
    :cond_3
    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;

    move-result-object v0

    .line 2626
    iget-object v3, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v4, :cond_4

    .line 2627
    iget-object v3, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v4, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 2631
    :cond_4
    iget-object v3, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2633
    sget-object v3, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    iput-object v3, v0, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catch Lcom/sleepycat/b/c/av; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2650
    :catch_1
    move-exception v0

    .line 2651
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 47133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2651
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2652
    throw v0
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3070
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50480
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/sleepycat/b/e;->a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v0

    .line 3079
    :try_start_0
    sget-object v1, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    if-ne p4, v1, :cond_3

    .line 3080
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3094
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-static {p4, v2, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/c/c;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3095
    invoke-direct {p0, v0, v8}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 3075
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3082
    :cond_3
    :try_start_1
    sget-object v1, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    if-ne p4, v1, :cond_4

    .line 3083
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v1

    goto :goto_0

    .line 3086
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown GetMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0

    .line 3089
    :catch_0
    move-exception v1

    .line 3090
    invoke-direct {p0, v0, v8}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 3091
    throw v1

    .line 3098
    :cond_5
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v2, :cond_6

    move v2, v7

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 3099
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    move v2, v8

    .line 3098
    goto :goto_1

    .line 3103
    :cond_7
    return-object v1
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/av;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2500
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2502
    :cond_1
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 46014
    invoke-direct {p0, v9, v1}, Lcom/sleepycat/b/e;->a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v0

    .line 2511
    :try_start_0
    invoke-virtual {v0, p4}, Lcom/sleepycat/b/c/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2513
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 2515
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    :catchall_0
    move-exception v1

    :goto_0
    iget-object v3, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->c()V

    .line 2536
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_5

    move v2, v8

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 2535
    throw v1

    .line 2519
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eq v1, v8, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2521
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 2522
    :try_start_2
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v7, v1, :cond_7

    .line 2524
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 2535
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->c()V

    .line 2536
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v1, :cond_6

    :goto_3
    invoke-direct {p0, v0, v8}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 2538
    return-object v2

    :cond_5
    move v2, v9

    .line 2536
    goto :goto_1

    :cond_6
    move v8, v9

    goto :goto_3

    .line 2535
    :catchall_1
    move-exception v1

    move-object v2, v7

    goto :goto_0

    :cond_7
    move-object v2, v7

    goto :goto_2
.end method

.method private a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    .locals 4

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3993
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/a;)V

    .line 3994
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->a()V

    .line 3995
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4010
    :cond_0
    :goto_0
    return-object v0

    .line 3997
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/b/e;->d:Z

    if-eqz v0, :cond_4

    .line 3998
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/a;)V

    .line 3999
    if-eqz p1, :cond_3

    .line 4000
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50538
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v2, Lcom/sleepycat/b/a;->e:Lcom/sleepycat/b/a;

    if-ne v1, v2, :cond_2

    .line 50543
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v1, :cond_2

    .line 50548
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->f()V

    .line 4001
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->a()V

    .line 4005
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    goto :goto_0

    .line 4003
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->e()V

    goto :goto_1

    .line 4007
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    invoke-virtual {v0, p1, v1, p2}, Lcom/sleepycat/b/c/c;->a(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v0

    .line 4009
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50550
    iget-boolean v2, v0, Lcom/sleepycat/b/c/c;->f:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    iget-object v3, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    if-eq v2, v3, :cond_0

    .line 50551
    iget-object v2, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    iget-object v1, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50554
    iput-object v1, v2, Lcom/sleepycat/b/n/q;->s:Lcom/sleepycat/b/n/q;

    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/e;)Lcom/sleepycat/b/c/i;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/c;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/c/e;",
            "Ljava/util/Comparator",
            "<[B>;",
            "Lcom/sleepycat/b/c/au;",
            ")",
            "Lcom/sleepycat/b/f;"
        }
    .end annotation

    .prologue
    .line 2802
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2805
    :cond_1
    sget-object v0, Lcom/sleepycat/b/e$3;->a:[I

    invoke-virtual {p6}, Lcom/sleepycat/b/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, p6

    .line 2816
    :goto_0
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_2

    if-eqz p8, :cond_2

    sget-object v1, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2807
    :pswitch_0
    sget-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    goto :goto_0

    .line 2810
    :pswitch_1
    sget-object v0, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    goto :goto_0

    .line 2817
    :cond_2
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 2818
    const/4 v2, 0x0

    .line 2822
    :try_start_0
    invoke-virtual {p1, p2, v0, p4, p7}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;Ljava/util/Comparator;)I

    move-result v4

    .line 2824
    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_f

    .line 2844
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v5, v3

    .line 2846
    :goto_1
    and-int/lit8 v3, v4, 0x4

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v4, v3

    .line 2853
    :goto_2
    sget-object v3, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    if-ne v0, v3, :cond_7

    if-nez v5, :cond_7

    const/4 v5, 0x1

    .line 2860
    :goto_3
    sget-object v3, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    if-ne p6, v3, :cond_8

    const/4 v3, 0x0

    .line 2872
    :goto_4
    if-nez v5, :cond_3

    invoke-virtual {p1, v3, p3, p4}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v1

    sget-object v3, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v1, v3, :cond_f

    :cond_3
    move-object v7, v1

    .line 2877
    if-eqz v4, :cond_9

    .line 2879
    :try_start_1
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 2912
    :goto_5
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 2913
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    if-eq p1, v2, :cond_4

    .line 2914
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    .line 2918
    :cond_4
    new-instance v2, Lcom/sleepycat/b/f;

    invoke-direct {v2, v1, v0}, Lcom/sleepycat/b/f;-><init>(Lcom/sleepycat/b/av;Z)V

    return-object v2

    .line 2844
    :cond_5
    const/4 v3, 0x0

    move v5, v3

    goto :goto_1

    .line 2846
    :cond_6
    const/4 v3, 0x0

    move v4, v3

    goto :goto_2

    .line 2853
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    move-object v3, p2

    .line 2860
    goto :goto_4

    .line 2880
    :cond_9
    :try_start_2
    sget-object v1, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    if-ne v0, v1, :cond_c

    .line 2888
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    if-eq v7, v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2912
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_6
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 2913
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    if-eq p1, v1, :cond_a

    .line 2914
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    .line 2912
    :cond_a
    throw v0

    .line 2889
    :cond_b
    :try_start_3
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    move v0, v2

    goto :goto_5

    .line 2891
    :cond_c
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_d

    sget-object v1, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2898
    :cond_d
    const/4 v4, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 2901
    :try_start_4
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 2912
    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_f
    move v0, v2

    goto :goto_5

    .line 2805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/c/e;",
            "Ljava/util/Comparator",
            "<[B>;)",
            "Lcom/sleepycat/b/f;"
        }
    .end annotation

    .prologue
    .line 2671
    const/4 v10, 0x0

    .line 2672
    new-instance v11, Lcom/sleepycat/b/m;

    .line 47197
    iget-object v1, p2, Lcom/sleepycat/b/m;->a:[B

    .line 47382
    iget v2, p2, Lcom/sleepycat/b/m;->d:I

    .line 47410
    iget v3, p2, Lcom/sleepycat/b/m;->e:I

    .line 2672
    invoke-direct {v11, v1, v2, v3}, Lcom/sleepycat/b/m;-><init>([BII)V

    .line 48014
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/b/e;->a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v2

    .line 2684
    :try_start_0
    sget-object v7, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2690
    :try_start_1
    iget-boolean v1, v3, Lcom/sleepycat/b/f;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v4, :cond_0

    .line 2691
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    iput-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    .line 2694
    :cond_0
    move-object/from16 v0, p5

    invoke-static {v0, v11, p2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2695
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    iput-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2698
    :cond_1
    if-eqz v3, :cond_4

    iget-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 2706
    iget-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v1, v2, :cond_2

    iget-boolean v1, v3, Lcom/sleepycat/b/f;->b:Z

    if-nez v1, :cond_2

    .line 2707
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v2, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 2710
    :cond_2
    return-object v3

    .line 2698
    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    throw v1

    :catchall_0
    move-exception v1

    move-object v3, v10

    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/n/o;",
            "Lcom/sleepycat/b/c/e;",
            "Ljava/util/Comparator",
            "<[B>;",
            "Lcom/sleepycat/b/c/au;",
            ")",
            "Lcom/sleepycat/b/f;"
        }
    .end annotation

    .prologue
    .line 2724
    sget-object v10, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 2725
    new-instance v11, Lcom/sleepycat/b/m;

    .line 48197
    iget-object v1, p2, Lcom/sleepycat/b/m;->a:[B

    .line 48382
    iget v2, p2, Lcom/sleepycat/b/m;->d:I

    .line 48410
    iget v3, p2, Lcom/sleepycat/b/m;->e:I

    .line 2725
    invoke-direct {v11, v1, v2, v3}, Lcom/sleepycat/b/m;-><init>([BII)V

    .line 49014
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/b/e;->a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2732
    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;

    move-result-object v3

    .line 2737
    move-object/from16 v0, p5

    invoke-static {v0, v11, p2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2738
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    iput-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;

    .line 2740
    :cond_0
    iget-object v1, v3, Lcom/sleepycat/b/f;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 2742
    return-object v3

    .line 2744
    :catchall_0
    move-exception v1

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v10, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    .locals 3

    .prologue
    .line 4098
    invoke-direct {p0, p1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4099
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    .line 4110
    :goto_0
    return-object v0

    .line 4100
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    if-ne p1, v0, :cond_3

    .line 4101
    :cond_1
    if-eqz p2, :cond_2

    sget-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    goto :goto_0

    .line 4102
    :cond_3
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    if-ne p1, v0, :cond_5

    .line 4103
    if-eqz p2, :cond_4

    sget-object v0, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    goto :goto_0

    .line 4104
    :cond_5
    sget-object v0, Lcom/sleepycat/b/ao;->c:Lcom/sleepycat/b/ao;

    if-ne p1, v0, :cond_6

    .line 4105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sleepycat/b/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed with Cursor methods, use CursorConfig.setReadCommitted instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4109
    :cond_6
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4110
    :cond_7
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/l/y;",
            "Lcom/sleepycat/b/c/at;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/c/c;",
            "Lcom/sleepycat/b/g/av;",
            ")",
            "Lcom/sleepycat/b/p/ab",
            "<",
            "Lcom/sleepycat/b/av;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2388
    sget-object v9, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 2394
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/e;->a(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v1

    .line 43795
    :try_start_0
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2404
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v9, v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    throw v2

    .line 43796
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 43797
    :cond_1
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 43798
    :cond_2
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_3

    if-nez p4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 43799
    :cond_3
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 43800
    :cond_4
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 43804
    :cond_5
    sget-object v2, Lcom/sleepycat/b/c/c$1;->b:[I

    invoke-virtual {p4}, Lcom/sleepycat/b/c/at;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 43812
    invoke-virtual {p4}, Lcom/sleepycat/b/c/at;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 43806
    :pswitch_0
    const/4 v4, 0x0

    .line 43816
    :goto_1
    invoke-static {p1}, Lcom/sleepycat/b/l/w;->a(Lcom/sleepycat/b/m;)[B

    move-result-object v3

    move-object v2, p3

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/y;[BZLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;

    move-result-object v3

    .line 44024
    iget-object v2, v3, Lcom/sleepycat/b/p/ab;->a:Ljava/lang/Object;

    .line 2400
    check-cast v2, Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2404
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/c;Z)V

    .line 2402
    return-object v3

    .line 43809
    :pswitch_1
    const/4 v4, 0x1

    .line 43810
    goto :goto_1

    .line 2404
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 43804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/l/y;",
            "Lcom/sleepycat/b/c/at;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/g/av;",
            ")",
            "Lcom/sleepycat/b/p/ab",
            "<",
            "Lcom/sleepycat/b/av;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2330
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2331
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2332
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2333
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    if-ne p4, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2335
    :cond_3
    const/4 v1, 0x0

    .line 2336
    const/4 v7, 0x0

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 39489
    iget-object v2, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 2340
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 40133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 40496
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 41326
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sleepycat/b/n/q;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 41330
    :goto_0
    iget-object v3, v3, Lcom/sleepycat/b/n/aj;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int v0, v3, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    .line 2340
    :goto_1
    if-eqz v0, :cond_e

    .line 2343
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 42133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2343
    invoke-static {v0, v2}, Lcom/sleepycat/b/n/b;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    .line 2345
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-direct {v0, v1, v8}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 42263
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lcom/sleepycat/b/c/c;->i:Z

    .line 42337
    new-instance v1, Lcom/sleepycat/b/m;

    .line 43197
    iget-object v2, p1, Lcom/sleepycat/b/m;->a:[B

    .line 43382
    iget v3, p1, Lcom/sleepycat/b/m;->d:I

    .line 43410
    iget v4, p1, Lcom/sleepycat/b/m;->e:I

    .line 42337
    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/b/m;-><init>([BII)V

    .line 42339
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/b/m;->a(IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42340
    const/4 v7, 0x0

    .line 42341
    const/4 v2, 0x1

    .line 42344
    :try_start_3
    sget-object v3, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    sget-object v4, Lcom/sleepycat/b/n/o;->e:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v1, v3, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v3

    .line 42346
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_d

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_d

    .line 42357
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 42358
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 42359
    sget-object v3, Lcom/sleepycat/b/n/o;->e:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v1

    .line 42362
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v2, :cond_c

    .line 42363
    const/4 v1, 0x1

    .line 42365
    :goto_2
    const/4 v2, 0x0

    move v7, v1

    move v1, v2

    .line 42368
    :goto_3
    if-eqz v1, :cond_4

    .line 42369
    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 42374
    :cond_4
    if-nez v7, :cond_5

    .line 42375
    sget-object v1, Lcom/sleepycat/b/n/o;->e:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object v7, v0

    move-object v9, v8

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    .line 2352
    :try_start_5
    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v0

    .line 2357
    if-eqz v7, :cond_6

    .line 43580
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 2360
    :cond_6
    if-eqz v9, :cond_7

    .line 43654
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 2352
    :cond_7
    return-object v0

    .line 41326
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 41330
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 42368
    :catchall_0
    move-exception v1

    .line 42369
    :try_start_6
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2357
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v8

    :goto_5
    if-eqz v7, :cond_a

    .line 43580
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 2360
    :cond_a
    if-eqz v1, :cond_b

    .line 43654
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 2357
    :cond_b
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v8

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v9

    goto :goto_5

    :cond_c
    move v1, v7

    goto :goto_2

    :cond_d
    move v1, v2

    goto :goto_3

    :cond_e
    move-object v9, v1

    goto :goto_4
.end method

.method private a(Lcom/sleepycat/b/c/c;Z)V
    .locals 2

    .prologue
    .line 4031
    .line 50556
    iget-object v0, p1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50558
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sleepycat/b/n/q;->s:Lcom/sleepycat/b/n/q;

    .line 4032
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    if-ne p1, v0, :cond_2

    .line 4033
    if-eqz p2, :cond_1

    .line 4034
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->a()V

    .line 4061
    :cond_0
    :goto_0
    return-void

    .line 4036
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->e()V

    goto :goto_0

    .line 4045
    :cond_2
    if-eqz p2, :cond_3

    .line 4046
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 4047
    iput-object p1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4057
    :goto_1
    iget-boolean v0, p0, Lcom/sleepycat/b/e;->m:Z

    if-nez v0, :cond_0

    .line 4058
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->r()Lcom/sleepycat/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    goto :goto_0

    .line 4049
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    goto :goto_1
.end method

.method private a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 3952
    new-instance v0, Lcom/sleepycat/b/e$2;

    invoke-direct {v0, p0, p2}, Lcom/sleepycat/b/e$2;-><init>(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V

    .line 50536
    iput-object v0, p1, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    .line 3959
    return-void
.end method

.method private a(Lcom/sleepycat/b/e;[B)V
    .locals 1

    .prologue
    .line 3942
    new-instance v0, Lcom/sleepycat/b/e$1;

    invoke-direct {v0, p0, p2}, Lcom/sleepycat/b/e$1;-><init>(Lcom/sleepycat/b/e;[B)V

    .line 50534
    iput-object v0, p1, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    .line 3948
    return-void
.end method

.method private a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 300
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :cond_0
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/c/i;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    new-instance v0, Lcom/sleepycat/b/c/c;

    invoke-direct {v0, p2, p3, p5}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Z)V

    iput-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 315
    invoke-virtual {p3}, Lcom/sleepycat/b/n/q;->p_()Lcom/sleepycat/b/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    .line 317
    invoke-virtual {p2}, Lcom/sleepycat/b/c/i;->r()Lcom/sleepycat/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    .line 320
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 14263
    iput-boolean v2, v0, Lcom/sleepycat/b/c/c;->i:Z

    .line 15087
    iget-boolean v0, p4, Lcom/sleepycat/b/g;->d:Z

    .line 322
    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/sleepycat/b/n/q;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/e;->i:Z

    .line 326
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 15489
    iget-object v0, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 326
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/e;->j:Z

    .line 15511
    iget-boolean v0, p2, Lcom/sleepycat/b/c/i;->d:Z

    .line 329
    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_6

    .line 16082
    iget-boolean v0, p1, Lcom/sleepycat/b/i;->e:Z

    .line 329
    if-nez v0, :cond_6

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/sleepycat/b/e;->g:Z

    .line 333
    iput-object p2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 334
    if-eqz p1, :cond_4

    .line 335
    iput-object p1, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    .line 336
    invoke-virtual {p1}, Lcom/sleepycat/b/i;->e()V

    .line 16998
    iget-object v0, p1, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 17206
    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 18064
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->ad:Lcom/sleepycat/b/p/ap;

    .line 337
    iput-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    .line 340
    :cond_4
    iput-object p4, p0, Lcom/sleepycat/b/e;->b:Lcom/sleepycat/b/g;

    .line 18133
    iget-object v0, p2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 18515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 341
    iput-object v0, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    .line 342
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 13654
    invoke-virtual {p3, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 310
    throw v0

    :cond_5
    move v0, v1

    .line 322
    goto :goto_0

    :cond_6
    move v2, v1

    .line 329
    goto :goto_1
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 4263
    const-string v0, " locker="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50566
    iget-object v1, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50567
    iget-wide v2, v1, Lcom/sleepycat/b/n/q;->k:J

    .line 4263
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4264
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50568
    iget-object v0, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 4264
    if-eqz v0, :cond_0

    .line 4265
    const-string v0, " bin="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50569
    iget-object v1, v1, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 50570
    iget-wide v2, v1, Lcom/sleepycat/b/l/j;->c:J

    .line 4265
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4267
    :cond_0
    const-string v0, " idx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50571
    iget v1, v1, Lcom/sleepycat/b/c/c;->b:I

    .line 4267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4268
    return-void
.end method

.method private a(Lcom/sleepycat/b/ao;)Z
    .locals 1

    .prologue
    .line 4121
    sget-object v0, Lcom/sleepycat/b/ao;->b:Lcom/sleepycat/b/ao;

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/e;->i:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/c/c;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3161
    .line 50491
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ak;->g:Z

    .line 50492
    iget-object v3, p1, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 50493
    iget-object v4, p2, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 3163
    if-eq v3, v4, :cond_4

    .line 3175
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    move-result-object v4

    .line 3178
    if-eqz v0, :cond_2

    .line 50494
    :try_start_0
    iget v0, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 3179
    add-int/lit8 v0, v0, -0x1

    .line 50495
    iget v3, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 3179
    if-le v0, v3, :cond_5

    .line 50496
    iget v0, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 3186
    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 50497
    :goto_0
    iget v0, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 3187
    if-ge v3, v0, :cond_1

    .line 3189
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3190
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 3191
    if-eqz v0, :cond_0

    .line 3192
    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 3194
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 3225
    :goto_1
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    .line 3229
    :goto_2
    return v0

    .line 3188
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 50498
    :cond_2
    :try_start_1
    iget v0, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 3203
    if-lez v0, :cond_5

    move v3, v1

    .line 50499
    :goto_3
    iget v0, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 3209
    if-ge v3, v0, :cond_5

    .line 3210
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3211
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 3212
    if-eqz v0, :cond_3

    .line 3213
    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 3215
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->i()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 3217
    goto :goto_1

    .line 3209
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 3225
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    :cond_4
    move v0, v1

    .line 3229
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2755
    .line 49139
    iget-boolean v0, p0, Lcom/sleepycat/b/c/e;->f:Z

    .line 2755
    if-nez v0, :cond_0

    move v0, v6

    .line 2763
    :goto_0
    return v0

    .line 49410
    :cond_0
    iget v2, p1, Lcom/sleepycat/b/m;->e:I

    .line 50410
    iget v5, p2, Lcom/sleepycat/b/m;->e:I

    .line 2760
    if-eq v2, v5, :cond_1

    move v0, v7

    .line 2761
    goto :goto_0

    .line 50411
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    .line 50412
    iget v1, p1, Lcom/sleepycat/b/m;->d:I

    .line 50413
    iget-object v3, p2, Lcom/sleepycat/b/m;->a:[B

    .line 50414
    iget v4, p2, Lcom/sleepycat/b/m;->d:I

    .line 2763
    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/l/w;->a([BII[BII)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    .locals 12

    .prologue
    .line 2942
    sget-object v0, Lcom/sleepycat/b/e$3;->b:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/b/c/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v4, p4

    .line 2956
    :goto_0
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/ao;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2957
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v3

    iget-object v5, p0, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 3005
    :cond_0
    :goto_1
    return-object v0

    .line 2945
    :pswitch_0
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    goto :goto_1

    .line 2947
    :pswitch_1
    sget-object v4, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    goto :goto_0

    .line 2950
    :pswitch_2
    sget-object v4, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    goto :goto_0

    .line 3007
    :catch_0
    move-exception v0

    .line 50437
    :cond_1
    :try_start_1
    iget-boolean v0, v4, Lcom/sleepycat/b/c/ak;->g:Z

    .line 2968
    if-nez v0, :cond_5

    .line 50438
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 50439
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-direct {v7}, Lcom/sleepycat/b/m;-><init>()V

    .line 50440
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v1, v2}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 50441
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v1, v2}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 50444
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    .line 50475
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/sleepycat/b/c/c;->a(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    :try_end_1
    .catch Lcom/sleepycat/b/c/av; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 50446
    :try_start_2
    sget-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v5, v6, v7, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50448
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_4

    .line 50450
    :goto_2
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50468
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v5, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    throw v0
    :try_end_3
    .catch Lcom/sleepycat/b/c/av; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    .line 3010
    :catch_1
    move-exception v0

    .line 3011
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 50479
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 3011
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 3012
    throw v0

    .line 50452
    :cond_2
    :try_start_4
    sget-object v8, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50456
    sget-object v1, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-static {v1, v2, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/c/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50457
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v5, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 50458
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    .line 50476
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/sleepycat/b/c/c;->a(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;

    move-result-object v5

    goto :goto_2

    .line 50462
    :cond_3
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 50468
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v5, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 50471
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_5

    .line 50472
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v1, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 50477
    :cond_5
    iget-boolean v0, v4, Lcom/sleepycat/b/c/ak;->g:Z

    .line 2972
    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v3

    .line 2976
    invoke-static {p1}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 2977
    invoke-static {p2}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v2

    .line 2981
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50478
    iget-boolean v3, v4, Lcom/sleepycat/b/c/ak;->g:Z

    .line 2985
    if-eqz v3, :cond_6

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v3, :cond_6

    .line 2988
    iget-object v3, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v5, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v5}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 2992
    :cond_6
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_7

    invoke-direct {p0, v1}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2994
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 3000
    :cond_7
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_0

    .line 3001
    invoke-static {v1, p1}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3002
    invoke-static {v2, p2}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    :try_end_5
    .catch Lcom/sleepycat/b/c/av; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 2942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 2453
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/ao;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2454
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2482
    :cond_0
    :goto_0
    return-object v0

    .line 2484
    :catch_0
    move-exception v0

    .line 2464
    :cond_1
    if-nez p4, :cond_2

    .line 2465
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v1, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 2469
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v0

    .line 2472
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 2478
    if-eqz p4, :cond_0

    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v2, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V
    :try_end_1
    .catch Lcom/sleepycat/b/c/av; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2487
    :catch_1
    move-exception v0

    .line 2488
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 45133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2488
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2489
    throw v0
.end method

.method private b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 2146
    sget-object v0, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    if-ne p3, v0, :cond_0

    const/4 v3, 0x0

    .line 2149
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 32133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2146
    invoke-static {v0, p2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/l/y;

    move-result-object v3

    goto :goto_0
.end method

.method private b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 19

    .prologue
    .line 2180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v15, v1

    .line 2181
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/i;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move/from16 v18, v1

    .line 2184
    :goto_1
    if-eqz v18, :cond_0

    .line 2185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 33133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 33688
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 2185
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->c()V

    .line 2194
    :cond_0
    :try_start_0
    sget-object v1, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_8

    if-eqz p1, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/sleepycat/b/l/w;->a(Lcom/sleepycat/b/m;)[B

    move-result-object v2

    .line 2205
    :goto_2
    if-nez p1, :cond_1a

    .line 2206
    sget-object v1, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 2207
    if-nez v18, :cond_1

    if-eqz v15, :cond_1a

    .line 2208
    :cond_1
    new-instance p1, Lcom/sleepycat/b/m;

    invoke-direct/range {p1 .. p1}, Lcom/sleepycat/b/m;-><init>()V

    .line 2209
    if-eqz v18, :cond_2

    .line 2210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->g()[B

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/m;->a([B)V

    .line 34197
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sleepycat/b/m;->a:[B

    .line 2211
    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Lcom/sleepycat/b/aa;->a(Z)V

    :cond_2
    move-object/from16 v4, p1

    .line 2222
    :goto_5
    if-eqz v18, :cond_c

    .line 2223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    iget-object v1, v1, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    invoke-interface {v1}, Lcom/sleepycat/b/be;->c()Ljava/util/Collection;

    move-result-object v3

    .line 2224
    if-nez v15, :cond_3

    invoke-static {v3}, Lcom/sleepycat/b/bi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_3
    const/4 v1, 0x1

    :goto_6
    move-object/from16 v17, v3

    .line 2232
    :goto_7
    if-eqz v1, :cond_d

    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 34355
    :goto_8
    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/sleepycat/b/m;->f:Z

    .line 2241
    if-eqz v1, :cond_e

    if-nez v18, :cond_4

    if-eqz v15, :cond_e

    .line 2242
    :cond_4
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    move-object/from16 v16, v1

    move-object v6, v1

    .line 2252
    :goto_9
    sget-object v1, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_12

    .line 2253
    if-nez p3, :cond_f

    const/4 v1, 0x1

    :goto_a
    invoke-static {v1}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 34419
    sget-boolean v1, Lcom/sleepycat/b/e;->f:Z

    if-nez v1, :cond_10

    if-nez p2, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    :catch_0
    move-exception v1

    .line 2295
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 37133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2295
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2296
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2298
    :catchall_0
    move-exception v1

    if-eqz v18, :cond_5

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 38133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 38688
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 2299
    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 2298
    :cond_5
    throw v1

    .line 2180
    :cond_6
    const/4 v1, 0x0

    move v15, v1

    goto/16 :goto_0

    .line 2181
    :cond_7
    const/4 v1, 0x0

    move/from16 v18, v1

    goto/16 :goto_1

    .line 2194
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2206
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2211
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 2224
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 2227
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v17, v1

    move v1, v15

    .line 2228
    goto :goto_7

    .line 2232
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 2245
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v16, p2

    .line 2246
    goto :goto_9

    .line 2253
    :cond_f
    const/4 v1, 0x0

    goto :goto_a

    .line 34420
    :cond_10
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/b/e;->c()V

    .line 34421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    move-object/from16 v3, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 35079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->a()V

    .line 2257
    const/4 v1, 0x0

    move v7, v1

    move-object v1, v2

    .line 2266
    :goto_b
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, v2, :cond_14

    .line 2298
    if-eqz v18, :cond_11

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 38133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 38688
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 2299
    :goto_c
    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 2293
    :cond_11
    return-object v1

    .line 2259
    :cond_12
    if-eqz p3, :cond_13

    const/4 v1, 0x1

    :goto_d
    :try_start_3
    invoke-static {v1}, Lcom/sleepycat/b/aa;->a(Z)V

    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v14, p5

    .line 2260
    invoke-direct/range {v7 .. v14}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;

    move-result-object v2

    .line 36024
    iget-object v1, v2, Lcom/sleepycat/b/p/ab;->a:Ljava/lang/Object;

    .line 2263
    check-cast v1, Lcom/sleepycat/b/av;

    .line 36028
    iget-object v2, v2, Lcom/sleepycat/b/p/ab;->b:Ljava/lang/Object;

    .line 2264
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v7, v2

    goto :goto_b

    .line 2259
    :cond_13
    const/4 v1, 0x0

    goto :goto_d

    .line 2271
    :cond_14
    if-eqz v5, :cond_15

    .line 36197
    iget-object v1, v5, Lcom/sleepycat/b/m;->a:[B

    .line 2271
    if-nez v1, :cond_15

    .line 2272
    const/4 v5, 0x0

    .line 2279
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 36489
    iget-object v2, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 2280
    if-eqz v17, :cond_18

    .line 2281
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/bi;

    .line 2282
    if-nez v7, :cond_17

    invoke-virtual {v1}, Lcom/sleepycat/b/bi;->h()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2283
    :cond_17
    const/4 v3, 0x0

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    goto :goto_e

    .line 2288
    :cond_18
    if-eqz v15, :cond_19

    .line 2289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, v16

    invoke-static {v2, v1, v4, v5, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 2293
    :cond_19
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2298
    if-eqz v18, :cond_11

    .line 2299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 38133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 38688
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    goto :goto_c

    :cond_1a
    move-object/from16 v4, p1

    goto/16 :goto_5
.end method

.method private b(Lcom/sleepycat/b/e;)V
    .locals 2

    .prologue
    .line 4086
    iget-object v0, p1, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4087
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iput-object v1, p1, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4088
    iput-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 4089
    return-void
.end method

.method private b(Lcom/sleepycat/b/ao;)Z
    .locals 1

    .prologue
    .line 4128
    iget-boolean v0, p0, Lcom/sleepycat/b/e;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 5

    .prologue
    .line 3390
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 3391
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 3392
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v2

    .line 50500
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v2, Lcom/sleepycat/b/e;->d:Z

    .line 3397
    invoke-static {p1, v0}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3398
    sget-object v3, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-direct {v2, v0, v1, v3}, Lcom/sleepycat/b/e;->m(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 3400
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/m;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3402
    sget-object v0, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3426
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 3424
    return-object v0

    .line 3404
    :cond_1
    :try_start_1
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v4, :cond_2

    .line 3406
    iget-object v3, v2, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    sget-object v4, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/c;->c(Lcom/sleepycat/b/n/o;)V

    .line 3410
    :cond_2
    invoke-static {p1, v0}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3411
    sget-object v3, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-direct {v2, v0, v1, v3}, Lcom/sleepycat/b/e;->l(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 3412
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v1, :cond_3

    .line 3413
    sget-object v0, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 3417
    :cond_3
    invoke-direct {v2, p1, p2}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 3418
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v1, :cond_0

    .line 3423
    invoke-direct {p0, v2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3424
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3426
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    throw v0
.end method

.method private c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3569
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->g()[B

    move-result-object v0

    .line 3570
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 50502
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lcom/sleepycat/b/e;->d:Z

    .line 3573
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;[B)V

    .line 3574
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 3575
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    invoke-direct {v1, v2, v0, p3, p4}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 3577
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_0

    .line 3584
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 3582
    return-object v0

    .line 3580
    :cond_0
    :try_start_1
    invoke-static {v2, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3581
    invoke-direct {p0, v1}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3582
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3584
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    iget-object v1, p0, Lcom/sleepycat/b/e;->l:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/a;)V

    .line 4072
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->a()V

    .line 4073
    return-void
.end method

.method private c(Lcom/sleepycat/b/m;)Z
    .locals 2

    .prologue
    .line 477
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_0

    .line 21382
    iget v0, p1, Lcom/sleepycat/b/m;->d:I

    .line 477
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 478
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_1

    .line 22197
    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    .line 478
    array-length v0, v0

    .line 22410
    iget v1, p1, Lcom/sleepycat/b/m;->e:I

    .line 478
    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    if-nez v0, :cond_2

    .line 481
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    .line 23197
    iget-object v1, p1, Lcom/sleepycat/b/m;->a:[B

    .line 484
    invoke-interface {v0, v1}, Lcom/sleepycat/b/c/au;->a([B)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 3435
    invoke-static {p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v0

    .line 3436
    sget-object v1, Lcom/sleepycat/b/e;->q:Lcom/sleepycat/b/m;

    sget-object v2, Lcom/sleepycat/b/c/at;->c:Lcom/sleepycat/b/c/at;

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    .locals 1

    .prologue
    .line 4274
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 4275
    invoke-static {p0, v0}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 4276
    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50560
    iget-object v0, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 50562
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50560
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 4182
    return-void
.end method

.method private e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4203
    iget-object v0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    :cond_0
    return-object p0
.end method

.method private static e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4151
    const-string v0, "key"

    invoke-static {p0, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 4152
    const-string v0, "data"

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 4153
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 4207
    iget-object v0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    if-nez v0, :cond_0

    .line 4212
    :goto_0
    return-void

    .line 4210
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    invoke-virtual {v0}, Lcom/sleepycat/b/bp;->c()V

    .line 4211
    iget-object v0, p0, Lcom/sleepycat/b/e;->o:Lcom/sleepycat/b/bp;

    .line 50563
    iget-object v0, v0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 4211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n/z;->b_(Z)V

    goto :goto_0
.end method

.method private static f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 3

    .prologue
    .line 4283
    .line 50572
    iget v0, p0, Lcom/sleepycat/b/m;->c:I

    .line 50573
    iget v1, p0, Lcom/sleepycat/b/m;->b:I

    .line 50574
    iget-boolean v2, p0, Lcom/sleepycat/b/m;->f:Z

    .line 4283
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 50575
    iget-object v0, p0, Lcom/sleepycat/b/m;->a:[B

    .line 50576
    iget v1, p0, Lcom/sleepycat/b/m;->d:I

    .line 50577
    iget v2, p0, Lcom/sleepycat/b/m;->e:I

    .line 4285
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/b/m;->a([BII)V

    .line 4286
    return-void
.end method

.method private i(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 3135
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;

    move-result-object v0

    .line 3137
    invoke-direct {p0}, Lcom/sleepycat/b/e;->c()V

    .line 3138
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50489
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->a()V

    .line 3141
    return-object v0
.end method

.method private j(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->g()[B

    move-result-object v0

    .line 3599
    invoke-static {v0}, Lcom/sleepycat/b/c/y;->a([B)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 3600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 50504
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/sleepycat/b/e;->d:Z

    .line 3603
    new-instance v5, Lcom/sleepycat/b/c/z;

    iget-object v2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 50506
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 3603
    invoke-direct {v5, v2}, Lcom/sleepycat/b/c/z;-><init>(Ljava/util/Comparator;)V

    .line 3606
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 3609
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    .line 3616
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v2

    .line 3614
    :goto_0
    return-object v0

    .line 3612
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3613
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3614
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3616
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3614
    goto :goto_0

    .line 3616
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    throw v1
.end method

.method private k(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3632
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->g()[B

    move-result-object v8

    .line 3633
    invoke-static {v8}, Lcom/sleepycat/b/c/y;->a([B)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 3634
    invoke-virtual {p0, v7}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 50507
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/sleepycat/b/e;->d:Z

    .line 3637
    invoke-direct {p0, v0, v8}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;[B)V

    .line 3638
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    const/4 v5, 0x0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 3641
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_1

    .line 50509
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sleepycat/b/e;->n:Lcom/sleepycat/b/c/au;

    .line 3643
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v3, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 3645
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    .line 3653
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v2

    .line 3667
    :goto_0
    return-object v0

    .line 3648
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3649
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3650
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3653
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3650
    goto :goto_0

    .line 3653
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    .line 3655
    invoke-virtual {p0, v6}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v2

    .line 50511
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v2, Lcom/sleepycat/b/e;->d:Z

    .line 3659
    :cond_2
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v3, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    invoke-direct {v2, v1, v0, p3, v3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 3661
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v0, v3, :cond_3

    .line 3671
    :goto_1
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    goto :goto_0

    .line 50513
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_4

    .line 50517
    iget v0, v1, Lcom/sleepycat/b/m;->d:I

    .line 50513
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3671
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    throw v0

    .line 50514
    :cond_4
    :try_start_4
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_5

    .line 50518
    iget-object v0, v1, Lcom/sleepycat/b/m;->a:[B

    .line 50514
    array-length v0, v0

    .line 50519
    iget v3, v1, Lcom/sleepycat/b/m;->e:I

    .line 50514
    if-eq v0, v3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50520
    :cond_5
    iget-object v0, v1, Lcom/sleepycat/b/m;->a:[B

    .line 50516
    iget-object v3, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 50521
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 50516
    invoke-static {v0, v8, v3}, Lcom/sleepycat/b/c/y;->a([B[BLjava/util/Comparator;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    .line 3664
    :goto_2
    if-nez v0, :cond_2

    .line 3665
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3666
    invoke-direct {p0, v2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3667
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_6
    move v0, v7

    .line 50516
    goto :goto_2
.end method

.method private l(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 3707
    new-instance v1, Lcom/sleepycat/b/m;

    .line 50522
    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    .line 50523
    iget v2, p1, Lcom/sleepycat/b/m;->e:I

    .line 3707
    invoke-static {v0, v2}, Lcom/sleepycat/b/c/y;->a([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 3710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 50524
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/sleepycat/b/e;->d:Z

    .line 3713
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V

    .line 3714
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    const/4 v5, 0x0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 3717
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v2, v3, :cond_0

    .line 3718
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3724
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3722
    :goto_0
    return-object v0

    .line 3720
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3721
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3722
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3724
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3722
    goto :goto_0

    .line 3724
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    throw v1
.end method

.method private m(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 3736
    new-instance v1, Lcom/sleepycat/b/m;

    .line 50526
    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    .line 50527
    iget v2, p1, Lcom/sleepycat/b/m;->e:I

    .line 3736
    invoke-static {v0, v2}, Lcom/sleepycat/b/c/y;->a([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 3739
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 3742
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_0

    .line 3746
    :goto_0
    return-object v0

    .line 3745
    :cond_0
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3746
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_0
.end method

.method private n(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 3778
    invoke-static {p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 3780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Z)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 50528
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/sleepycat/b/e;->d:Z

    .line 3783
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;)V

    .line 3784
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    const/4 v5, 0x0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 3787
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v2, v3, :cond_0

    .line 3788
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3794
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3792
    :goto_0
    return-object v0

    .line 3790
    :cond_0
    :try_start_1
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 3791
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/e;)V

    .line 3792
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3794
    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    move-object v0, v1

    .line 3792
    goto :goto_0

    .line 3794
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/e;->close()V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1978
    iget-object v2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    move v6, v0

    .line 1979
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/i;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    move v7, v0

    .line 1982
    :goto_1
    if-eqz v7, :cond_0

    .line 1983
    iget-object v2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 27133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 27688
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1983
    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->c()V

    .line 1990
    :cond_0
    if-nez v7, :cond_1

    if-eqz v6, :cond_a

    .line 1991
    :cond_1
    :try_start_0
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 1992
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->g()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/m;->a([B)V

    .line 28197
    iget-object v2, v3, Lcom/sleepycat/b/m;->a:[B

    .line 1993
    if-eqz v2, :cond_9

    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/sleepycat/b/aa;->a(Z)V

    .line 2005
    :goto_3
    if-eqz v7, :cond_b

    .line 2006
    iget-object v2, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    iget-object v2, v2, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    invoke-interface {v2}, Lcom/sleepycat/b/be;->c()Ljava/util/Collection;

    move-result-object v5

    .line 2007
    iget-object v2, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    iget-object v2, v2, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    .line 2008
    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/sleepycat/b/bi;->b(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move-object v0, v2

    move-object v2, v5

    .line 2023
    :goto_4
    if-eqz v1, :cond_4

    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 2025
    :cond_4
    if-nez v1, :cond_5

    if-eqz v7, :cond_c

    .line 2026
    :cond_5
    sget-object v1, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {p0, v3, v4, v1}, Lcom/sleepycat/b/e;->h(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    .line 2028
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v1, v5, :cond_c

    .line 2029
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    if-eqz v7, :cond_6

    .line 2075
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30688
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 2075
    :goto_5
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 2069
    :cond_6
    return-object v0

    :cond_7
    move v6, v1

    .line 1978
    goto :goto_0

    :cond_8
    move v7, v1

    .line 1979
    goto :goto_1

    :cond_9
    move v2, v1

    .line 1993
    goto :goto_2

    :cond_a
    move-object v3, v4

    .line 1995
    goto :goto_3

    :cond_b
    move v1, v6

    move-object v0, v4

    move-object v2, v4

    .line 2013
    goto :goto_4

    .line 2038
    :cond_c
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 28489
    iget-object v1, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 2039
    if-eqz v0, :cond_e

    .line 2040
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bi;

    .line 2041
    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/bi;->b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 2070
    :catch_0
    move-exception v0

    .line 2071
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 29133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2071
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2072
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2074
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_d

    .line 2075
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30688
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 2075
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 2074
    :cond_d
    throw v0

    .line 2050
    :cond_e
    if-eqz v2, :cond_f

    .line 2051
    :try_start_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bi;

    .line 2052
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    goto :goto_7

    .line 2059
    :cond_f
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 2060
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v0, v2, :cond_10

    .line 2074
    if-eqz v7, :cond_6

    .line 2075
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30688
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    goto :goto_5

    .line 2065
    :cond_10
    if-eqz v6, :cond_11

    .line 2066
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-static {v1, v0, v3, v4}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 2069
    :cond_11
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2074
    if-eqz v7, :cond_6

    .line 2075
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30688
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    goto :goto_5
.end method

.method final a(Lcom/sleepycat/b/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    .line 3832
    const/4 v0, 0x0

    .line 3833
    invoke-direct {p0, p5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/ao;)Z

    move-result v1

    .line 3834
    if-eqz v1, :cond_6

    .line 50530
    iget-boolean v2, p4, Lcom/sleepycat/b/m;->f:Z

    .line 3834
    if-eqz v2, :cond_6

    .line 50531
    iget v0, p4, Lcom/sleepycat/b/m;->b:I

    .line 3835
    if-nez v0, :cond_0

    .line 3837
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    invoke-virtual {p4, v0}, Lcom/sleepycat/b/m;->a([B)V

    .line 3838
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    .line 3902
    :goto_0
    return-object v0

    .line 3842
    :cond_0
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 3851
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 50532
    iget-object v2, v2, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 3852
    new-instance v3, Lcom/sleepycat/b/e;

    invoke-direct {v3, p1, v2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;)V

    .line 3860
    if-eqz v1, :cond_1

    :try_start_0
    sget-object p5, Lcom/sleepycat/b/ao;->b:Lcom/sleepycat/b/ao;

    .line 3862
    :cond_1
    sget-object v4, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v3, p3, v0, p5, v4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v4

    .line 3864
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v4, v5, :cond_3

    .line 3873
    if-eqz v1, :cond_2

    .line 3874
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3904
    :goto_2
    invoke-virtual {v3}, Lcom/sleepycat/b/e;->close()V

    goto :goto_0

    .line 3882
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    invoke-virtual {v0, v2, p2, p3}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3904
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/sleepycat/b/e;->close()V

    throw v0

    .line 3891
    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3892
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    goto :goto_2

    .line 3899
    :cond_4
    if-eqz p4, :cond_5

    .line 50533
    iget-object v0, v0, Lcom/sleepycat/b/m;->a:[B

    .line 3900
    invoke-static {p4, v0}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 3902
    :cond_5
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    move-object v6, v0

    move-object v0, p4

    move-object p4, v6

    goto :goto_1
.end method

.method public a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 913
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/e;->b(Z)V

    .line 914
    const-string v0, "data"

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 915
    const-string v0, "putCurrent"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Ljava/lang/String;)V

    .line 916
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.putCurrent: "

    move-object v0, p0

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 917
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 920
    :cond_0
    sget-object v0, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    invoke-virtual {p0, v3, p1, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 739
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 740
    const-string v0, "key"

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 741
    const-string v0, "data"

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 742
    invoke-static {p1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;)V

    .line 743
    const-string v0, "put"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Ljava/lang/String;)V

    .line 744
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.put: "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 745
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 748
    :cond_0
    sget-object v0, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1026
    invoke-static {p1, p2}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1027
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.getFirst: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 1028
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 1031
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50415
    sget-object v0, Lcom/sleepycat/b/e$3;->b:[I

    invoke-virtual {p4}, Lcom/sleepycat/b/c/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50428
    invoke-virtual {p4}, Lcom/sleepycat/b/c/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 50429
    :pswitch_0
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 50430
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50432
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_0

    .line 50433
    :goto_0
    return-object v0

    .line 50435
    :cond_0
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 50436
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 50420
    :pswitch_1
    sget-object v0, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 50422
    :pswitch_2
    sget-object v0, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 50424
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->j(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 50426
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->k(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 2931
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 50415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    .line 2548
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2549
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2550
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46682
    sget-object v0, Lcom/sleepycat/b/e$3;->a:[I

    invoke-virtual {p4}, Lcom/sleepycat/b/c/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46692
    invoke-virtual {p4}, Lcom/sleepycat/b/c/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2555
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46684
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->l(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 2551
    :cond_0
    :goto_0
    monitor-exit v6

    .line 2553
    :goto_1
    return-object v0

    .line 46686
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->m(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 46757
    :pswitch_2
    invoke-static {p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v1

    .line 46758
    sget-object v2, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/c/e;->b:Lcom/sleepycat/b/c/e;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 46761
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v2, :cond_0

    .line 46764
    invoke-static {v1, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 46765
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 46690
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->n(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 2553
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;
    .locals 4

    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2437
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2438
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44507
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 44508
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    invoke-direct {p0, v2, v0, p3, p4}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 44510
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v3, :cond_0

    .line 2439
    :goto_0
    monitor-exit v1

    .line 2441
    :goto_1
    return-object v0

    .line 44513
    :cond_0
    invoke-static {v2, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 44514
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 2441
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 2442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;
    .locals 4

    .prologue
    .line 2108
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2109
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2110
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31345
    sget-object v0, Lcom/sleepycat/b/e$3;->c:[I

    invoke-virtual {p3}, Lcom/sleepycat/b/c/at;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 31355
    invoke-virtual {p3}, Lcom/sleepycat/b/c/at;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31365
    :pswitch_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v0

    .line 31366
    sget-object v2, Lcom/sleepycat/b/e;->q:Lcom/sleepycat/b/m;

    sget-object v3, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 2111
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2117
    :goto_1
    return-object v0

    .line 31349
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 31351
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 31449
    :pswitch_3
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 31450
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    sget-object v3, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-direct {p0, v2, v0, v3}, Lcom/sleepycat/b/e;->i(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 31452
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_0

    .line 31456
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 31457
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 31459
    invoke-static {v0, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;

    move-result-object v0

    .line 31460
    sget-object v2, Lcom/sleepycat/b/e;->q:Lcom/sleepycat/b/m;

    sget-object v3, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    invoke-direct {p0, v0, v2, v3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 2113
    :cond_1
    sget-object v0, Lcom/sleepycat/b/c/at;->b:Lcom/sleepycat/b/c/at;

    if-ne p3, v0, :cond_2

    .line 2114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Database is not configured for duplicate data."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2117
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 31345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 2131
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2132
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2133
    sget-boolean v0, Lcom/sleepycat/b/e;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/c/at;->a:Lcom/sleepycat/b/c/at;

    if-ne p4, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2134
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a(Z)Lcom/sleepycat/b/e;
    .locals 2

    .prologue
    .line 646
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 647
    new-instance v0, Lcom/sleepycat/b/e;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/e;Z)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 25133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 649
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 650
    throw v0
.end method

.method public a()Lcom/sleepycat/b/i;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4139
    iget-boolean v0, p0, Lcom/sleepycat/b/e;->g:Z

    if-eqz v0, :cond_0

    .line 4140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A transaction was not supplied when opening this cursor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4144
    :cond_0
    return-void
.end method

.method final a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V
    .locals 3

    .prologue
    .line 4250
    iget-object v0, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4252
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4253
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->a(Ljava/lang/StringBuilder;)V

    .line 4254
    if-eqz p3, :cond_0

    .line 4255
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4257
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 50565
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4260
    :cond_1
    return-void
.end method

.method final a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    .locals 3

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4226
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    invoke-direct {p0, v0}, Lcom/sleepycat/b/e;->a(Ljava/lang/StringBuilder;)V

    .line 4228
    if-eqz p3, :cond_0

    .line 4229
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sleepycat/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4231
    :cond_0
    if-eqz p4, :cond_1

    .line 4232
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    :cond_1
    if-eqz p5, :cond_2

    .line 4235
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4237
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/e;->k:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 50564
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 4240
    :cond_3
    return-void
.end method

.method public b()Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 691
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Ljava/lang/String;)V

    .line 692
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.delete: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 693
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method final b(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 2087
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2088
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2094
    invoke-direct {p0}, Lcom/sleepycat/b/e;->c()V

    .line 2095
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 31079
    iget-object v2, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->a()V

    .line 2097
    monitor-exit v1

    return-object v0

    .line 2098
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    .line 966
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 967
    invoke-static {p1, p2}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 968
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.getCurrent: "

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 969
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 972
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/e;->h(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 973
    :catch_0
    move-exception v0

    .line 974
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 26133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 974
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 975
    throw v0
.end method

.method public b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1080
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1081
    invoke-static {p1, p2}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1082
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.getLast: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 1083
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 1086
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    .line 2566
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2567
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 2568
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 2570
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b(Z)V
    .locals 2

    .prologue
    .line 4169
    invoke-direct {p0}, Lcom/sleepycat/b/e;->d()V

    .line 4170
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 4171
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    const-string v1, "Can\'t call Cursor method:"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 4173
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/c;->c(Z)V

    .line 4174
    return-void
.end method

.method b(Lcom/sleepycat/b/m;)Z
    .locals 1

    .prologue
    .line 3920
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 1139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1140
    invoke-static {p1, p2}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1141
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.getNext: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 1142
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1148
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 23539
    iget-byte v0, v0, Lcom/sleepycat/b/c/c;->g:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 509
    :goto_0
    if-eqz v0, :cond_2

    .line 526
    :cond_0
    :goto_1
    return-void

    .line 23539
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/b/e;->d()V

    .line 518
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 23580
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 519
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;

    .line 24110
    iget-object v1, v0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    sget-object v2, Lcom/sleepycat/b/j;->d:Lcom/sleepycat/b/j;

    if-eq v1, v2, :cond_3

    .line 24111
    const-string v1, "Database was closed while still in use:"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 24113
    :cond_3
    iget-object v0, v0, Lcom/sleepycat/b/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/e;->h:Lcom/sleepycat/b/i;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    iget-object v1, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    .line 24133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 524
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 525
    throw v0
.end method

.method public d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1322
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1323
    invoke-static {p1, p2}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1324
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Cursor.getPrev: "

    invoke-virtual {p0, v0, v1, p3}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/ao;)V

    .line 1325
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/sleepycat/b/e;->p:Lcom/sleepycat/b/p/ap;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ap;->a(I)V

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1331
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1693
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1694
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1695
    const-string v0, "data"

    invoke-static {p2, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1696
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.getSearchKey: "

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1698
    sget-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1752
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/e;->b(Z)V

    .line 1753
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1754
    const-string v0, "data"

    invoke-static {p2, v0, v2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1755
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.getSearchKeyRange: "

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1757
    sget-object v0, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1803
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/e;->b(Z)V

    .line 26161
    const-string v0, "key"

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 26162
    const-string v0, "data"

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1805
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Cursor.getSearchBoth: "

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/e;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1807
    sget-object v0, Lcom/sleepycat/b/c/e;->b:Lcom/sleepycat/b/c/e;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method final h(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 4

    .prologue
    .line 3113
    invoke-direct {p0}, Lcom/sleepycat/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3114
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/e;->f()V

    .line 3115
    iget-object v0, p0, Lcom/sleepycat/b/e;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50481
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 50482
    sget-object v0, Lcom/sleepycat/b/e;->e:Lcom/sleepycat/b/m;

    invoke-direct {p0, v2, v0, p3}, Lcom/sleepycat/b/e;->i(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 50484
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v3, :cond_0

    .line 3116
    :goto_0
    monitor-exit v1

    .line 3118
    :goto_1
    return-object v0

    .line 50487
    :cond_0
    invoke-static {v2, p1, p2}, Lcom/sleepycat/b/c/y;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 50488
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 3118
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/e;->i(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 3119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
