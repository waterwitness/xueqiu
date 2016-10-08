.class public Lcom/sleepycat/b/i/e/d;
.super Ljava/lang/Object;
.source "FeederReplicaSyncup.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/i/c/b/h;

.field private final c:Lcom/sleepycat/b/i/c/b/aa;

.field private final d:Lcom/sleepycat/b/i/h/o;

.field private final e:Lcom/sleepycat/b/i/e/t;

.field private final f:Lcom/sleepycat/b/i/i/f;

.field private final g:Ljava/util/logging/Logger;

.field private h:Lcom/sleepycat/b/i/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sleepycat/b/i/e/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/t;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 3262
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 56
    iput-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    .line 58
    iput-object p2, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    .line 59
    iput-object p3, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    .line 60
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 3532
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 60
    iput-object v0, p0, Lcom/sleepycat/b/i/e/d;->f:Lcom/sleepycat/b/i/i/f;

    .line 61
    return-void
.end method

.method private a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/g;
    .locals 10

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 16392
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 174
    sget-object v1, Lcom/sleepycat/b/b/d;->L:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v6

    .line 17375
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 17474
    iget-wide v4, v0, Lcom/sleepycat/b/g/m;->q:J

    .line 183
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->m()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v8

    .line 184
    new-instance v1, Lcom/sleepycat/b/i/e/g;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/d;->f:Lcom/sleepycat/b/i/i/f;

    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 18454
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    move-object v7, p1

    .line 184
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/i/e/g;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;JILcom/sleepycat/b/p/au;J)V

    return-object v1
.end method

.method private a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/i/e/aa;Z)Lcom/sleepycat/b/i/h/d;
    .locals 5

    .prologue
    .line 198
    invoke-virtual {p2}, Lcom/sleepycat/b/i/e/aa;->c()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 18933
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 19073
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 209
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19110
    iget-object v2, p1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 210
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    new-instance v0, Lcom/sleepycat/b/i/e/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/z;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 292
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-lez v2, :cond_1

    .line 222
    new-instance v0, Lcom/sleepycat/b/i/e/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/z;-><init>(Lcom/sleepycat/b/i/e/t;)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 20110
    iget-object v2, p1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 230
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-lez v2, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " precedes globalCBVLSN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 20114
    :cond_2
    iget-object v2, p1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 236
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-gez v2, :cond_7

    .line 253
    sget-boolean v1, Lcom/sleepycat/b/i/e/d;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Replica request for vlsn > feeder range should only happen on the first exchange."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 20118
    :cond_3
    iget-object v1, p1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 255
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    new-instance v0, Lcom/sleepycat/b/i/e/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/z;-><init>(Lcom/sleepycat/b/i/e/t;)V

    goto :goto_0

    .line 263
    :cond_4
    if-eqz p3, :cond_6

    .line 21118
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 264
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/e/d;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    .line 265
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    .line 22118
    iget-object v1, p1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 265
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/g;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/s;

    move-result-object v1

    .line 268
    sget-boolean v0, Lcom/sleepycat/b/i/e/d;->a:Z

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Look for alternative, range="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 269
    :cond_5
    new-instance v0, Lcom/sleepycat/b/i/e/v;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/i/e/v;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V

    goto/16 :goto_0

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 22520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestMatchpoint="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " range="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "should only happen on first response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    if-nez v2, :cond_8

    .line 280
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/e/d;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/g;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    .line 283
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/i/e/d;->h:Lcom/sleepycat/b/i/e/g;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/e/g;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/s;

    move-result-object v2

    .line 285
    if-nez v2, :cond_9

    .line 286
    iget-object v2, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 23520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t find matchpoint "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in log. VLSN range="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " globalCBVLSN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 292
    :cond_9
    new-instance v0, Lcom/sleepycat/b/i/e/y;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/e/y;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/c/b/r;)Lcom/sleepycat/b/p/au;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 4520
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 77
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Feeder-replica "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 5266
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 6087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " syncup started. Feeder range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 6532
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 6807
    iget-object v5, v5, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 7775
    iget-object v5, v5, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 7946
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/o;->a()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->f:Lcom/sleepycat/b/i/i/f;

    .line 8775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v4

    .line 98
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/aa;

    .line 100
    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/sleepycat/b/i/e/d;->a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/i/e/aa;Z)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 104
    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v5, v0, v6}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 121
    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replica "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 9266
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " message op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 127
    :cond_0
    instance-of v5, v0, Lcom/sleepycat/b/i/e/au;

    if-eqz v5, :cond_1

    .line 128
    check-cast v0, Lcom/sleepycat/b/i/e/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/au;->c()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 145
    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Feeder-replica "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 11266
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 12087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " start stream at VLSN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 13954
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/o;->b()V

    .line 160
    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Feeder-replica "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 14266
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " syncup ended. Elapsed time: %,dms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 150
    return-object v0

    .line 130
    :cond_1
    :try_start_1
    instance-of v5, v0, Lcom/sleepycat/b/i/e/aa;

    if-eqz v5, :cond_2

    .line 131
    check-cast v0, Lcom/sleepycat/b/i/e/aa;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v0, v5}, Lcom/sleepycat/b/i/e/d;->a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/i/e/aa;Z)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 133
    iget-object v5, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v5, v0, v6}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V
    :try_end_1
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 156
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 12933
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 13073
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 13142
    const-string v5, "vlsn"

    invoke-virtual {p1, v4, v5}, Lcom/sleepycat/b/i/c/b/r;->a(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V

    .line 157
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 13954
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/o;->b()V

    .line 160
    iget-object v4, p0, Lcom/sleepycat/b/i/e/d;->g:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Feeder-replica "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 14266
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " syncup ended. Elapsed time: %,dms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 159
    throw v0

    .line 134
    :cond_2
    :try_start_3
    instance-of v5, v0, Lcom/sleepycat/b/i/e/ao;

    if-eqz v5, :cond_3

    .line 135
    check-cast v0, Lcom/sleepycat/b/i/e/ao;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/ao;->c()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 9299
    new-instance v5, Lcom/sleepycat/b/i/e/ap;

    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 9933
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 10073
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 9299
    iget-object v8, p0, Lcom/sleepycat/b/i/e/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v8}, Lcom/sleepycat/b/i/c/b/aa;->e()[Lcom/sleepycat/b/i/c/am;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/b/i/e/ap;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;[Lcom/sleepycat/b/i/c/am;)V

    .line 9302
    iget-object v6, p0, Lcom/sleepycat/b/i/e/d;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v7, p0, Lcom/sleepycat/b/i/e/d;->d:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v6, v5, v7}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 9304
    new-instance v5, Lcom/sleepycat/b/i/e/e;

    .line 10110
    iget-object v6, v4, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 10114
    iget-object v4, v4, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 9304
    iget-object v7, p0, Lcom/sleepycat/b/i/e/d;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 10266
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 9304
    invoke-direct {v5, v0, v6, v4, v7}, Lcom/sleepycat/b/i/e/e;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/c/b/x;)V

    .line 135
    throw v5

    .line 138
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected StartStream or EntryRequest but got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
