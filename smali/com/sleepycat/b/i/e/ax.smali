.class public Lcom/sleepycat/b/i/e/ax;
.super Ljava/lang/Object;
.source "ReplicaFeederSyncup.java"


# static fields
.field static final synthetic l:Z


# instance fields
.field public final a:Ljava/util/logging/Logger;

.field public final b:Lcom/sleepycat/b/i/h/o;

.field public final c:Lcom/sleepycat/b/i/e/t;

.field public final d:Lcom/sleepycat/b/i/c/b/aa;

.field public final e:Lcom/sleepycat/b/i/i/f;

.field public final f:Lcom/sleepycat/b/i/c/b/ac;

.field public final g:Lcom/sleepycat/b/i/c/aj;

.field public h:Lcom/sleepycat/b/p/au;

.field public i:Ljava/lang/Long;

.field public final j:Z

.field public final k:Lcom/sleepycat/b/i/e/q;

.field private m:Lcom/sleepycat/b/i/e/az;

.field private final n:Lcom/sleepycat/b/i/e/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/e/ay",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sleepycat/b/i/e/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/ax;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/t;Z)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    .line 70
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->i:Ljava/lang/Long;

    .line 91
    iput-object p2, p0, Lcom/sleepycat/b/i/e/ax;->f:Lcom/sleepycat/b/i/c/b/ac;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    .line 93
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 2532
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 94
    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->e:Lcom/sleepycat/b/i/i/f;

    .line 95
    iput-object p3, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    .line 96
    iput-object p4, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    .line 3520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 97
    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    .line 98
    iput-boolean p5, p0, Lcom/sleepycat/b/i/e/ax;->j:Z

    .line 99
    new-instance v0, Lcom/sleepycat/b/i/e/q;

    .line 4520
    iget-object v1, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 99
    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/q;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 5398
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 5586
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->h:Lcom/sleepycat/b/i/e/ay;

    .line 100
    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->n:Lcom/sleepycat/b/i/e/ay;

    .line 101
    return-void
.end method

.method private a(Lcom/sleepycat/b/p/au;J)Lcom/sleepycat/b/i/e/az;
    .locals 12

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 19520
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 20392
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 464
    sget-object v1, Lcom/sleepycat/b/b/d;->L:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v6

    .line 467
    new-instance v1, Lcom/sleepycat/b/i/e/az;

    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 20532
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 20807
    iget-object v3, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 467
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 21454
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 467
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->m()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-static {v4, v5, v0}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v8

    iget-object v10, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    move-wide v4, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/sleepycat/b/i/e/az;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;JILcom/sleepycat/b/p/au;JLcom/sleepycat/b/i/e/q;)V

    return-object v1
.end method

.method private a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/i/e/k;
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p2}, Lcom/sleepycat/b/i/e/aa;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 692
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 693
    instance-of v1, v0, Lcom/sleepycat/b/i/e/y;

    if-eqz v1, :cond_1

    .line 694
    check-cast v0, Lcom/sleepycat/b/i/e/y;

    .line 695
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/y;->d()Lcom/sleepycat/b/i/e/k;

    move-result-object v0

    .line 719
    :cond_0
    return-object v0

    .line 698
    :cond_1
    instance-of v1, v0, Lcom/sleepycat/b/i/e/z;

    if-eqz v1, :cond_2

    .line 699
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    .line 28044
    iget-object v3, v3, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 699
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but that node did not have that vlsn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v0

    throw v0

    .line 705
    :cond_2
    if-eqz p3, :cond_3

    instance-of v1, v0, Lcom/sleepycat/b/i/e/v;

    if-eqz v1, :cond_3

    .line 708
    check-cast v0, Lcom/sleepycat/b/i/e/v;

    .line 28242
    iget-object v0, v0, Lcom/sleepycat/b/i/e/v;->a:Lcom/sleepycat/b/i/e/k;

    .line 29068
    iget-object v1, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 29295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 30110
    iget-object v2, p1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 711
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-lez v2, :cond_0

    .line 717
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v0

    throw v0

    .line 722
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 30520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sent EntryRequest, got unexpected response of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private a()Lcom/sleepycat/b/i/e/s;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 558
    move v1, v2

    .line 569
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    .line 24145
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;

    .line 24146
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sleepycat/b/i/e/az;->a:Z

    .line 24148
    if-eqz v1, :cond_1

    .line 24150
    iget-object v1, v3, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v1

    iput-object v1, v3, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    .line 24157
    :goto_1
    iget-object v1, v3, Lcom/sleepycat/b/i/e/az;->d:Lcom/sleepycat/b/i/i/f;

    .line 24775
    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 24158
    iget-object v4, v3, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    .line 25110
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 24158
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-gez v1, :cond_2

    .line 24171
    :cond_0
    :goto_2
    return-object v0

    .line 24152
    :cond_1
    iget-object v1, v3, Lcom/sleepycat/b/i/e/az;->b:Ljava/util/logging/Logger;

    iget-object v4, v3, Lcom/sleepycat/b/i/e/az;->e:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Restart ReplicaSyncupReader at vlsn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/e/ba; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25393
    :catch_0
    move-exception v1

    iget-object v1, v1, Lcom/sleepycat/b/i/e/ba;->a:Lcom/sleepycat/b/p/au;

    .line 601
    iget-object v3, p0, Lcom/sleepycat/b/i/e/ax;->e:Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v3, v1}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;)J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;J)Lcom/sleepycat/b/i/e/az;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    .line 604
    const/4 v1, 0x0

    .line 605
    iget-object v3, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 26090
    iput-boolean v2, v3, Lcom/sleepycat/b/i/e/q;->c:Z

    goto :goto_0

    .line 24166
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/az;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24175
    sget-boolean v1, Lcom/sleepycat/b/i/e/az;->c:Z

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;

    .line 25125
    iget-object v1, v1, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 25279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 24175
    invoke-static {v1}, Lcom/sleepycat/b/g/af;->d(B)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected log type= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 24177
    :cond_3
    iget-object v0, v3, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;
    :try_end_1
    .catch Lcom/sleepycat/b/i/e/ba; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private b(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/s;
    .locals 3

    .prologue
    .line 489
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    .line 22120
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sleepycat/b/i/e/az;->a:Z

    .line 22121
    iget-object v1, v0, Lcom/sleepycat/b/i/e/az;->d:Lcom/sleepycat/b/i/i/f;

    .line 22775
    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 23110
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 22122
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 22130
    iput-object p1, v0, Lcom/sleepycat/b/i/e/az;->t:Lcom/sleepycat/b/p/au;

    .line 22132
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/az;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22133
    iget-object v0, v0, Lcom/sleepycat/b/i/e/az;->u:Lcom/sleepycat/b/i/e/s;

    .line 496
    :goto_1
    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Searching for candidate matchpoint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got null record back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/sleepycat/b/i/e/ba; {:try_start_0 .. :try_end_0} :catch_0

    .line 23393
    :catch_0
    move-exception v0

    iget-object v0, v0, Lcom/sleepycat/b/i/e/ba;->a:Lcom/sleepycat/b/p/au;

    .line 529
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-gez v1, :cond_1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gap reposition point of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should always be >= candidate matchpoint VLSN of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 22136
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->e:Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    .line 537
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;J)Lcom/sleepycat/b/i/e/az;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    .line 547
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 24090
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/i/e/q;->c:Z

    goto :goto_0

    .line 505
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;
    .locals 5

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/ao;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/b/i/e/ao;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 626
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/ap;

    .line 629
    new-instance v1, Lcom/sleepycat/b/i/f;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 26325
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ap;->a:Lcom/sleepycat/b/p/au;

    .line 629
    new-instance v4, Ljava/util/HashSet;

    .line 27321
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ap;->b:[Lcom/sleepycat/b/i/c/am;

    .line 629
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/b/i/f;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/p/au;Ljava/util/Set;)V

    return-object v1
.end method

.method public final a(Lcom/sleepycat/b/i/i/m;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    sget v1, Lcom/sleepycat/b/i/ad;->a:I

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 6118
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 363
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    sget-object v0, Lcom/sleepycat/b/p/au;->b:Lcom/sleepycat/b/p/au;

    invoke-direct {p0, p1, v0, v3}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/i/e/k;

    .line 458
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-direct {p0, p1, v0, v5}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/i/e/k;

    move-result-object v1

    .line 7068
    iget-object v0, v1, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 7295
    iget-object v2, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 393
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "first candidate matchpoint: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 7520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 8375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 8474
    iget-wide v6, v0, Lcom/sleepycat/b/g/m;->q:J

    .line 406
    invoke-direct {p0, v2, v6, v7}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;J)Lcom/sleepycat/b/i/e/az;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    .line 409
    invoke-direct {p0, v2}, Lcom/sleepycat/b/i/e/ax;->b(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/e/s;

    move-result-object v0

    .line 9147
    :goto_1
    iget-object v4, v0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    iget-object v6, v1, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 10295
    iget-object v7, v4, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 11295
    iget-object v8, v6, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 9568
    invoke-virtual {v7, v8}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11299
    iget-boolean v7, v4, Lcom/sleepycat/b/g/ae;->h:Z

    .line 12299
    iget-boolean v8, v6, Lcom/sleepycat/b/g/ae;->h:Z

    .line 9568
    if-ne v7, v8, :cond_2

    .line 12307
    iget-boolean v7, v4, Lcom/sleepycat/b/g/ae;->i:Z

    .line 13307
    iget-boolean v8, v6, Lcom/sleepycat/b/g/ae;->i:Z

    .line 9568
    if-ne v7, v8, :cond_2

    .line 14283
    iget v7, v4, Lcom/sleepycat/b/g/ae;->f:I

    .line 15279
    iget-byte v4, v4, Lcom/sleepycat/b/g/ae;->b:B

    .line 15283
    iget v8, v6, Lcom/sleepycat/b/g/ae;->f:I

    .line 16279
    iget-byte v6, v6, Lcom/sleepycat/b/g/ae;->b:B

    .line 9568
    invoke-static {v7, v4, v8, v6}, Lcom/sleepycat/b/g/af;->a(IBIB)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 9147
    :goto_2
    if-nez v4, :cond_3

    move v1, v3

    .line 411
    :goto_3
    if-nez v1, :cond_6

    .line 412
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    sget v1, Lcom/sleepycat/b/i/ad;->a:I

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 419
    invoke-direct {p0}, Lcom/sleepycat/b/i/e/ax;->a()Lcom/sleepycat/b/i/e/s;

    move-result-object v0

    .line 421
    if-nez v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Looking at candidate matchpoint vlsn "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but this node went past its available contiguous VLSN range, need network restore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v0

    throw v0

    :cond_2
    move v4, v3

    .line 9568
    goto :goto_2

    .line 9151
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v4

    .line 17076
    iget-object v1, v1, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    .line 9152
    invoke-interface {v4, v1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/g/a/m;)Z

    move-result v1

    goto :goto_3

    .line 17175
    :cond_4
    iget-object v1, v0, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 17295
    iget-object v2, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 442
    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 443
    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Next candidate matchpoint: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 447
    :cond_5
    invoke-direct {p0, p1, v2, v3}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/p/au;Z)Lcom/sleepycat/b/i/e/k;

    move-result-object v1

    goto/16 :goto_1

    .line 18288
    :cond_6
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/s;->a()Lcom/sleepycat/b/g/a/p;

    move-result-object v0

    .line 18289
    instance-of v1, v0, Lcom/sleepycat/b/n/ai;

    if-eqz v1, :cond_9

    .line 18290
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ai;->e()Lcom/sleepycat/b/p/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v0

    .line 452
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/ax;->i:Ljava/lang/Long;

    .line 453
    iput-object v2, p0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    .line 454
    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->m:Lcom/sleepycat/b/i/e/az;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/az;->c()J

    move-result-wide v2

    .line 19099
    iput-wide v2, v1, Lcom/sleepycat/b/i/e/q;->a:J

    .line 19100
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    iget-wide v4, v0, Lcom/sleepycat/b/i/e/r;->d:J

    iget-wide v6, v1, Lcom/sleepycat/b/i/e/q;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 19102
    iget v0, v1, Lcom/sleepycat/b/i/e/q;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/sleepycat/b/i/e/q;->h:I

    .line 19104
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 19105
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 19106
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/r;

    iget-wide v6, v0, Lcom/sleepycat/b/i/e/r;->d:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_7

    .line 19107
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19109
    :cond_7
    iget-object v0, v1, Lcom/sleepycat/b/i/e/q;->g:Lcom/sleepycat/b/i/e/r;

    iput-object v0, v1, Lcom/sleepycat/b/i/e/q;->f:Lcom/sleepycat/b/i/e/r;

    .line 455
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after setting  matchpoint, searchResults="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18292
    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_4
.end method
