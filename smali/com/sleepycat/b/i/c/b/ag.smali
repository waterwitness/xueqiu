.class public Lcom/sleepycat/b/i/c/b/ag;
.super Ljava/lang/Object;
.source "Replica.java"


# static fields
.field private static p:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field public final b:Lcom/sleepycat/b/i/c/b/ac;

.field c:Lcom/sleepycat/b/i/h/p;

.field public final d:Lcom/sleepycat/b/i/c/b/ai;

.field public e:Lcom/sleepycat/b/i/e/t;

.field public final f:Lcom/sleepycat/b/p/ai;

.field g:Lcom/sleepycat/b/i/c/b/aj;

.field public h:Lcom/sleepycat/b/i/e/ay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/e/ay",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/sleepycat/b/i/c/b/c;

.field private final j:Lcom/sleepycat/b/i/c/aj;

.field private k:Ljava/lang/Exception;

.field private l:Lcom/sleepycat/b/p/au;

.field private m:I

.field private n:Z

.field private final o:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/logging/Logger;

.field private final r:Lcom/sleepycat/b/p/z;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 98
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    .line 114
    iput v1, p0, Lcom/sleepycat/b/i/c/b/ag;->m:I

    .line 117
    iput-boolean v1, p0, Lcom/sleepycat/b/i/c/b/ag;->n:Z

    .line 137
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 181
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 182
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 2528
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 184
    new-instance v1, Lcom/sleepycat/b/i/c/b/c;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 4379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 184
    sget-object v3, Lcom/sleepycat/b/i/c/an;->P:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    sget-object v4, Lcom/sleepycat/b/i/c/an;->Q:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/i/c/b/c;-><init>(Lcom/sleepycat/b/c/p;II)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->i:Lcom/sleepycat/b/i/c/b/c;

    .line 190
    new-instance v0, Lcom/sleepycat/b/i/c/b/ai;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/ai;-><init>(Lcom/sleepycat/b/i/c/b/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 191
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/ag;->b:Lcom/sleepycat/b/i/c/b/ac;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 193
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "BinaryProtocol"

    const-string v2, "Network traffic due to the replication stream."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    .line 5327
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/ac;->x:Lcom/sleepycat/b/p/z;

    .line 196
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->r:Lcom/sleepycat/b/p/z;

    .line 5528
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 6392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 197
    sget-object v1, Lcom/sleepycat/b/i/c/an;->D:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/ag;->m:I

    .line 199
    sget-object v0, Lcom/sleepycat/b/i/c/b/ag;->p:Lcom/sleepycat/b/p/ao;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->o:Lcom/sleepycat/b/p/ao;

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/i/e/as;)Lcom/sleepycat/b/i/d;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/e/as;)Lcom/sleepycat/b/i/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/i/e/as;)Lcom/sleepycat/b/i/d;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 527
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/at;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/i/e/at;-><init>(Lcom/sleepycat/b/i/e/t;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/p;->a(I)V

    .line 547
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50166
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 547
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->v()V

    .line 552
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Checkpoint initiated."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 553
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 50169
    iput-boolean v3, v0, Lcom/sleepycat/b/c;->b:Z

    .line 50173
    iput-boolean v3, v0, Lcom/sleepycat/b/c;->e:Z

    .line 556
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50175
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 556
    const-string v2, "Group Shutdown"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z

    .line 558
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50176
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 558
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->w()V

    .line 559
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Checkpoint completed."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 561
    new-instance v0, Lcom/sleepycat/b/i/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50177
    iget-wide v4, p1, Lcom/sleepycat/b/i/e/as;->a:J

    .line 561
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sleepycat/b/i/d;-><init>(Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/b/aa;J)V

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ag;->l:Lcom/sleepycat/b/p/au;

    return-object p1
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/ae;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/ae;)V

    return-void
.end method

.method private a(Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/ae;)V
    .locals 5

    .prologue
    .line 644
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/af;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50178
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 50179
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    .line 644
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->l:Lcom/sleepycat/b/p/au;

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/b/i/e/af;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 648
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    invoke-virtual {v0, p2}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/e/ae;)V

    .line 649
    return-void
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/ag;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/h/p;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    return-object v0
.end method

.method static synthetic e(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/e/t;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    return-object v0
.end method

.method static synthetic f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->b:Lcom/sleepycat/b/i/c/b/ac;

    return-object v0
.end method

.method static synthetic g(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/c;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->i:Lcom/sleepycat/b/i/c/b/c;

    return-object v0
.end method

.method static synthetic h(Lcom/sleepycat/b/i/c/b/ag;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/b/ag;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ai;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    return-object v0
.end method

.method static synthetic j(Lcom/sleepycat/b/i/c/b/ag;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sleepycat/b/i/c/b/ag;->m:I

    return v0
.end method


# virtual methods
.method final a()V
    .locals 14

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 327
    const/4 v0, 0x0

    move v9, v0

    move-object v10, v1

    .line 7386
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 7387
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replica loop started with master: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 7462
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 7387
    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7390
    iget v0, p0, Lcom/sleepycat/b/i/c/b/ag;->m:I

    if-lez v0, :cond_0

    .line 7391
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Test delay of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/b/ag;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms. after each message sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7889
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 7891
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 8528
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 9392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 7892
    sget-object v2, Lcom/sleepycat/b/i/c/an;->Y:Lcom/sleepycat/b/b/c;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v2

    .line 7895
    new-instance v3, Lcom/sleepycat/b/i/h/p;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v3, v4, v0, v2}, Lcom/sleepycat/b/i/h/p;-><init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/nio/channels/SocketChannel;I)V

    iput-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    .line 7898
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 7900
    sget-object v3, Lcom/sleepycat/b/i/c/an;->d:Lcom/sleepycat/b/b/e;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    .line 7903
    if-lez v3, :cond_1

    .line 7904
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 7911
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 7917
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7920
    :try_start_2
    sget-object v3, Lcom/sleepycat/b/i/c/an;->F:Lcom/sleepycat/b/b/c;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    .line 7922
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 9462
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 7922
    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->g()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 7924
    const-string v1, "Feeder"

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sleepycat/b/i/h/ae; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sleepycat/b/i/y; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7583
    :try_start_3
    new-instance v11, Lcom/sleepycat/b/i/e/aw;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-direct {v11, v0, v1}, Lcom/sleepycat/b/i/e/aw;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/h/o;)V

    .line 10180
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 10520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 10180
    const-string v2, "Replica-feeder handshake start"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 11128
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-static {v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/c/b/aa;)Lcom/sleepycat/b/i/e/t;

    move-result-object v1

    .line 11130
    new-instance v0, Lcom/sleepycat/b/i/e/an;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/an;-><init>(Lcom/sleepycat/b/i/e/t;)V

    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 11137
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 11138
    instance-of v2, v0, Lcom/sleepycat/b/i/e/x;

    if-eqz v2, :cond_c

    .line 11139
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 11520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11139
    sget-object v2, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A replica with the name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already active with the Feeder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/sleepycat/b/i/y; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7398
    :catch_0
    move-exception v0

    .line 7399
    :try_start_4
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 7400
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7450
    :catchall_0
    move-exception v0

    .line 50115
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v1, :cond_28

    .line 50116
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v1, :cond_29

    .line 50117
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrying connection to feeder. Message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v1, :cond_2

    .line 50139
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50149
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v3, v1, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Replica stats - Lag waits: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lag wait time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms.  VLSN waits: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Lag wait time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v1, :cond_3

    .line 50144
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v3, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 7450
    throw v0
    :try_end_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 335
    :catch_1
    move-exception v0

    .line 336
    :try_start_6
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50162
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 336
    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/n;->c()Z

    move-result v1

    if-nez v1, :cond_25

    .line 337
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Retry terminated, out of sync."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 373
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    if-nez v0, :cond_5

    .line 374
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 376
    :cond_5
    return-void

    .line 7926
    :catch_2
    move-exception v0

    .line 7932
    :try_start_7
    new-instance v1, Lcom/sleepycat/b/i/c/b/ah;

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/i/c/b/ah;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_7
    .catch Lcom/sleepycat/b/i/y; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7401
    :catch_3
    move-exception v0

    .line 7402
    :try_start_8
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50114
    iget-object v1, v1, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 7402
    if-eqz v1, :cond_24

    .line 7403
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Replica loop interrupted for shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 50115
    :try_start_9
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_2b

    .line 50116
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v0, :cond_2c

    .line 50117
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_3
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v0, :cond_6

    .line 50139
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50149
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica stats - Lag waits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_7

    .line 50144
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;
    :try_end_9
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    .line 373
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    if-nez v1, :cond_8

    .line 374
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 373
    :cond_8
    throw v0

    .line 7935
    :catch_4
    move-exception v0

    .line 9954
    :try_start_a
    iget-object v1, v0, Lcom/sleepycat/b/i/h/ae;->a:Lcom/sleepycat/b/i/h/ac;

    .line 7942
    sget-object v2, Lcom/sleepycat/b/i/h/ac;->d:Lcom/sleepycat/b/i/h/ac;

    if-ne v1, v2, :cond_b

    .line 7943
    new-instance v1, Lcom/sleepycat/b/i/c/b/ah;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/i/c/b/ah;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_a
    .catch Lcom/sleepycat/b/i/y; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_a .. :try_end_a} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 7411
    :catch_5
    move-exception v0

    .line 7418
    :try_start_b
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica IO exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 50115
    :try_start_c
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_2e

    .line 50116
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v0, :cond_2f

    .line 50117
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v0, :cond_9

    .line 50139
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50149
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica stats - Lag waits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_a

    .line 50144
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;
    :try_end_c
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    .line 7947
    :cond_b
    :try_start_d
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_d
    .catch Lcom/sleepycat/b/i/y; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_d .. :try_end_d} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_d .. :try_end_d} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 7423
    :catch_6
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 11146
    :cond_c
    :try_start_f
    check-cast v0, Lcom/sleepycat/b/i/e/ac;

    .line 12339
    iget-object v2, v0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 11148
    iput-object v2, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 11149
    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 13330
    iget v3, v0, Lcom/sleepycat/b/i/e/al;->c:I

    .line 11149
    invoke-static {v2, v3}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/c/b/aa;I)Lcom/sleepycat/b/i/e/t;

    move-result-object v2

    .line 11151
    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 13520
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Feeder id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14339
    iget-object v6, v0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 11151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Response message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 15330
    iget v6, v0, Lcom/sleepycat/b/i/e/al;->c:I

    .line 11151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 11154
    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 16040
    iput-object v4, v3, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 11155
    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 16520
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11155
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Channel Mapping: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v6}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 11159
    if-nez v2, :cond_d

    .line 11160
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 17520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11160
    sget-object v4, Lcom/sleepycat/b/c/ac;->t:Lcom/sleepycat/b/c/ac;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incompatible protocol versions. Version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18330
    iget v0, v0, Lcom/sleepycat/b/i/e/al;->c:I

    .line 11160
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " requested by the Feeder: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " is not supported by this Replica: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v11, Lcom/sleepycat/b/i/e/aw;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", which is at version: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19222
    iget v1, v1, Lcom/sleepycat/b/i/h/a;->B:I

    .line 11160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Lcom/sleepycat/b/i/y; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_f .. :try_end_f} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 7424
    :catch_7
    move-exception v0

    .line 7425
    :try_start_10
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 7426
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 10184
    :cond_d
    :try_start_11
    iput-object v2, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    .line 20209
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/am;

    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/sleepycat/b/am;->a:Lcom/sleepycat/b/am;

    invoke-static {}, Lcom/sleepycat/b/i/e/aw;->a()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sleepycat/b/i/e/am;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/am;I)V

    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 20213
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 20214
    instance-of v1, v0, Lcom/sleepycat/b/i/e/ah;

    if-eqz v1, :cond_e

    .line 20216
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 20520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 20216
    sget-object v3, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Feeder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Lcom/sleepycat/b/i/e/ah;

    .line 20888
    iget-object v0, v0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    .line 20216
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catch Lcom/sleepycat/b/i/y; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 7427
    :catch_8
    move-exception v0

    .line 7428
    :try_start_12
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 7429
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica unexpected exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7432
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 20226
    :cond_e
    :try_start_13
    check-cast v0, Lcom/sleepycat/b/i/e/ab;

    iput-object v0, v11, Lcom/sleepycat/b/i/e/aw;->f:Lcom/sleepycat/b/i/e/ab;

    .line 20228
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->f:Lcom/sleepycat/b/i/e/ab;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/ab;->c()B

    move-result v0

    invoke-static {}, Lcom/sleepycat/b/i/e/aw;->a()I

    move-result v1

    if-le v0, v1, :cond_11

    .line 20229
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 21520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 20229
    sget-object v2, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Feeder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Feeder log version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->f:Lcom/sleepycat/b/i/e/ab;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/e/ab;->c()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not known to the replica, whose current log version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sleepycat/b/i/e/aw;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catch Lcom/sleepycat/b/i/y; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_13 .. :try_end_13} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 7433
    :catch_9
    move-exception v0

    .line 7435
    :try_start_14
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 50115
    :try_start_15
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_31

    .line 50116
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v0, :cond_32

    .line 50117
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_5
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v0, :cond_f

    .line 50139
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 50149
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica stats - Lag waits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_10

    .line 50144
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;
    :try_end_15
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    .line 22245
    :cond_11
    :try_start_16
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 22520
    iget-object v12, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 23392
    iget-object v0, v12, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 22247
    sget-object v1, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v2

    .line 22248
    sget-object v1, Lcom/sleepycat/b/i/c/an;->q:Lcom/sleepycat/b/i/c/f;

    sget-object v3, Lcom/sleepycat/b/i/c/an;->q:Lcom/sleepycat/b/i/c/f;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 24037
    iget-object v1, v1, Lcom/sleepycat/b/i/c/f;->f:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    .line 22248
    check-cast v7, Lcom/sleepycat/b/i/o;

    .line 22251
    new-instance v0, Lcom/sleepycat/b/i/e/ai;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 24421
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 25304
    iget-object v3, v3, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 22251
    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v12}, Lcom/sleepycat/b/i/c/aj;->ab()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/sleepycat/b/i/c/aj;->ac()I

    move-result v6

    invoke-virtual {v12}, Lcom/sleepycat/b/i/c/aj;->ah()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/i/e/ai;-><init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/b/i/c/b/x;Ljava/lang/String;ILcom/sleepycat/b/i/o;Z)V

    .line 22259
    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v2, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 22261
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 22263
    instance-of v1, v0, Lcom/sleepycat/b/i/e/ak;

    if-eqz v1, :cond_14

    .line 22264
    check-cast v0, Lcom/sleepycat/b/i/e/ak;

    .line 22265
    new-instance v1, Lcom/sleepycat/b/aa;

    sget-object v2, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Feeder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25888
    iget-object v0, v0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    .line 22265
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v2, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catch Lcom/sleepycat/b/i/y; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_16 .. :try_end_16} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_16 .. :try_end_16} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_16 .. :try_end_16} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 7436
    :catch_a
    move-exception v0

    .line 7441
    :try_start_17
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    .line 7442
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aj;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 50115
    :try_start_18
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_34

    .line 50116
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v0, :cond_35

    .line 50117
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_6
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v0, :cond_12

    .line 50139
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 50149
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica stats - Lag waits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_12
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_13

    .line 50144
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;
    :try_end_18
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_2

    .line 22272
    :cond_14
    :try_start_19
    instance-of v1, v0, Lcom/sleepycat/b/i/e/aj;

    if-nez v1, :cond_15

    .line 22273
    new-instance v1, Lcom/sleepycat/b/aa;

    sget-object v2, Lcom/sleepycat/b/c/ac;->d:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Feeder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Protcol error. Unexpected response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v12, v2, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Lcom/sleepycat/b/i/y; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_19 .. :try_end_19} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 7443
    :catch_b
    move-exception v0

    .line 7444
    :try_start_1a
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    .line 7445
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica unexpected exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7448
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 22278
    :cond_15
    :try_start_1b
    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 26421
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 22278
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->a()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 22280
    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 27421
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 22280
    check-cast v0, Lcom/sleepycat/b/i/e/aj;

    .line 27728
    iget-object v0, v0, Lcom/sleepycat/b/i/e/aj;->a:Ljava/util/UUID;

    .line 28164
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->a()Z

    move-result v2

    if-nez v2, :cond_16

    .line 28165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected placeholder UUID, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 28168
    :cond_16
    iput-object v0, v1, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 10195
    :cond_17
    invoke-virtual {v11}, Lcom/sleepycat/b/i/e/aw;->b()V

    .line 10197
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->g:Ljava/util/logging/Logger;

    iget-object v1, v11, Lcom/sleepycat/b/i/e/aw;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 28520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 10197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replica-feeder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/sleepycat/b/i/e/aw;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 29087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 10197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handshake completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 10200
    iget-object v0, v11, Lcom/sleepycat/b/i/e/aw;->e:Lcom/sleepycat/b/i/e/t;

    .line 7585
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 7586
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 29571
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v2, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 7590
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    if-eqz v0, :cond_18

    .line 7591
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replica syncup after election to verify master:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    .line 30547
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aj;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 7591
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " elected master:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 31462
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 7591
    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7596
    const/4 v5, 0x0

    .line 7600
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    .line 7602
    new-instance v0, Lcom/sleepycat/b/i/e/ax;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->b:Lcom/sleepycat/b/i/c/b/ac;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/e/ax;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/t;Z)V

    .line 7605
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 32015
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 32124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32125
    iget-object v4, v0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    .line 33044
    iget-object v4, v4, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 33087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 32126
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Replica-feeder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " syncup started. Replica range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 33532
    iget-object v8, v8, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 33807
    iget-object v8, v8, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 34775
    iget-object v8, v8, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v8}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v8

    .line 32126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 32132
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 34946
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/b/o;->a()V
    :try_end_1b
    .catch Lcom/sleepycat/b/i/y; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 32141
    :try_start_1c
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->e:Lcom/sleepycat/b/i/i/f;

    .line 35775
    iget-object v5, v5, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v5

    .line 32142
    invoke-virtual {v0, v5}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/i/i/m;)V

    .line 36218
    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    sget v7, Lcom/sleepycat/b/i/ad;->b:I

    .line 36761
    invoke-virtual {v6}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 37122
    iget-object v6, v5, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    .line 38118
    iget-object v7, v5, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 36222
    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v11, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "verify rollback vlsn range="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " searchResults="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36229
    invoke-virtual {v6}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 39118
    iget-object v6, v5, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 36230
    invoke-virtual {v6}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v6

    if-nez v6, :cond_19

    .line 36231
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 39520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 36231
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Shouldn\'t be possible to find a matchpoint of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when the sync VLSN is null. Range="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 32173
    :catchall_2
    move-exception v1

    .line 32175
    :try_start_1d
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 47954
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/b/o;->b()V

    .line 32176
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Replica-feeder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " syncup ended. Elapsed time: %,dms"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v2, v12, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 32182
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    sget v2, Lcom/sleepycat/b/i/ad;->d:I

    .line 48761
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 32173
    throw v1
    :try_end_1d
    .catch Lcom/sleepycat/b/i/y; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_1d .. :try_end_1d} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 7598
    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 36238
    :cond_19
    :try_start_1e
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    const-string v7, "normal rollback, no txn end"

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 32150
    :goto_8
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->f:Lcom/sleepycat/b/i/c/b/ac;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 46142
    iget-wide v12, v7, Lcom/sleepycat/b/i/e/q;->a:J

    .line 32150
    invoke-virtual {v5, v6, v12, v13}, Lcom/sleepycat/b/i/c/b/ac;->a(Lcom/sleepycat/b/p/au;J)V

    .line 32153
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v5

    .line 32154
    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->e:Lcom/sleepycat/b/i/i/f;

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 47142
    iget-wide v12, v7, Lcom/sleepycat/b/i/e/q;->a:J

    .line 32154
    invoke-virtual {v6, v5, v12, v13}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;J)V

    .line 32157
    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    new-instance v7, Lcom/sleepycat/b/i/e/au;

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->c:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8, v5}, Lcom/sleepycat/b/i/e/au;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 32158
    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Replica-feeder "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " start stream at VLSN: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 32169
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    .line 47153
    iput-object v5, v1, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    .line 47154
    iput-object v5, v1, Lcom/sleepycat/b/i/c/b/q;->a:Lcom/sleepycat/b/p/au;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 32175
    :try_start_1f
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 47954
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/o;->b()V

    .line 32176
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replica-feeder "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " syncup ended. Elapsed time: %,dms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v2, v12, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 32182
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    sget v2, Lcom/sleepycat/b/i/ad;->d:I

    .line 48761
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/aj;->aj()V

    .line 49108
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    .line 7607
    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->l:Lcom/sleepycat/b/p/au;

    .line 50104
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ax;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 7609
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->l:Lcom/sleepycat/b/p/au;

    .line 50105
    iget-wide v4, v3, Lcom/sleepycat/b/p/au;->c:J

    .line 50106
    new-instance v3, Lcom/sleepycat/b/p/au;

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/b/p/au;-><init>(J)V

    iput-object v3, v2, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    .line 50107
    iput-wide v4, v2, Lcom/sleepycat/b/i/c/b/ai;->a:J

    .line 50108
    iput-wide v0, v2, Lcom/sleepycat/b/i/c/b/ai;->c:J

    .line 7611
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/p;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    const-class v2, Lcom/sleepycat/b/i/e/ae;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/ae;

    .line 7614
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/ae;)V

    .line 7615
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50110
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/ai;->d:J

    .line 7615
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/c/b/ai;)Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 50111
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 7615
    sub-long/2addr v0, v2

    .line 7617
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v4, "Replica initialization completed. Replica VLSN: %s  Heartbeat master commit VLSN: %,d VLSN delta: %,d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    invoke-static {v7}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/c/b/ai;)Lcom/sleepycat/b/p/au;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50112
    iget-wide v12, v7, Lcom/sleepycat/b/i/c/b/ai;->d:J

    .line 7617
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7629
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50113
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 7629
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/t;->countDown()V

    .line 7397
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->b()V
    :try_end_1f
    .catch Lcom/sleepycat/b/i/y; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Lcom/sleepycat/b/i/d; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Lcom/sleepycat/b/i/c/b/aj; {:try_start_1f .. :try_end_1f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 50115
    :try_start_20
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    if-eqz v0, :cond_37

    .line 50116
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/b/an;

    if-eqz v0, :cond_38

    .line 50117
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying connection to feeder. Message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50135
    :goto_9
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 50136
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 50138
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    if-eqz v0, :cond_1a

    .line 50139
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50148
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50159
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50148
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 50149
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50160
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    .line 50149
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    .line 50161
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replica stats - Lag waits: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms.  VLSN waits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Lag wait time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 50143
    :cond_1a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_1b

    .line 50144
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50146
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;
    :try_end_20
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto/16 :goto_2

    .line 36242
    :cond_1c
    :try_start_21
    invoke-virtual {v7}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 36243
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 40520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 36243
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Shouldn\'t be possible to have a null sync VLSN when the  lastTxnVLSN "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not null. Range="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1

    .line 36254
    :cond_1d
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 36261
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "This node had a txn end at vlsn = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "but no matchpoint found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36264
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v1

    throw v1

    .line 36271
    :cond_1e
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6, v5}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-gtz v5, :cond_1f

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 41146
    iget v5, v5, Lcom/sleepycat/b/i/e/q;->h:I

    .line 36271
    if-nez v5, :cond_1f

    .line 36273
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "txn end vlsn of "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "<= matchpointVLSN of "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", normal rollback"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 36281
    :cond_1f
    iget-boolean v1, v0, Lcom/sleepycat/b/i/e/ax;->j:Z

    if-eqz v1, :cond_20

    .line 36282
    new-instance v1, Lcom/sleepycat/b/i/c/b/aj;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 41462
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 36282
    invoke-virtual {v5}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v5

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-direct {v1, v5, v6, v7}, Lcom/sleepycat/b/i/c/b/aj;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    throw v1

    .line 36295
    :cond_20
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 42134
    iget-boolean v1, v1, Lcom/sleepycat/b/i/e/q;->b:Z

    .line 36295
    if-eqz v1, :cond_21

    .line 36296
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "matchpointVLSN of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " precedes a checkpoint end, needs network restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36299
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v1

    throw v1

    .line 36307
    :cond_21
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 42138
    iget-boolean v1, v1, Lcom/sleepycat/b/i/e/q;->c:Z

    .line 36307
    if-eqz v1, :cond_22

    .line 36308
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "matchpointVLSN of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was found in a replica log with gaps. Since we can\'t be sure if it preceeds a checkpoint end, do network restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36312
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/ax;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/f;

    move-result-object v1

    throw v1

    .line 36320
    :cond_22
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 42520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 43392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 36321
    sget-object v5, Lcom/sleepycat/b/i/c/an;->Z:Lcom/sleepycat/b/b/e;

    invoke-virtual {v1, v5}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    .line 36324
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 44146
    iget v5, v5, Lcom/sleepycat/b/i/e/q;->h:I

    .line 36324
    if-le v5, v1, :cond_23

    .line 36326
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Limited list of transactions that would  be truncated for hard recovery:\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-virtual {v8}, Lcom/sleepycat/b/i/e/q;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36331
    new-instance v5, Lcom/sleepycat/b/i/aa;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->d:Lcom/sleepycat/b/i/c/b/aa;

    .line 44520
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 36331
    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/sleepycat/b/i/aa;-><init>(Lcom/sleepycat/b/i/c/aj;ILcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/e/q;)V

    throw v5

    .line 44650
    :cond_23
    new-instance v1, Lcom/sleepycat/b/i/z;

    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->h:Lcom/sleepycat/b/p/au;

    iget-object v7, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-direct {v1, v5, v6, v7}, Lcom/sleepycat/b/i/z;-><init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/e/q;)V

    .line 44653
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->a:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Limited list of transactions truncated for hard recovery:\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    invoke-virtual {v8}, Lcom/sleepycat/b/i/e/q;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 44662
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->k:Lcom/sleepycat/b/i/e/q;

    .line 45142
    iget-wide v6, v5, Lcom/sleepycat/b/i/e/q;->a:J

    .line 44663
    iget-object v5, v0, Lcom/sleepycat/b/i/e/ax;->g:Lcom/sleepycat/b/i/c/aj;

    .line 45375
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 44663
    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v12

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v6

    invoke-virtual {v5, v12, v13, v6, v7}, Lcom/sleepycat/b/g/m;->c(JJ)V

    .line 36341
    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 7407
    :cond_24
    :try_start_22
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "Replica loop unexpected interrupt."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7409
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-virtual {v0}, Ljava/nio/channels/ClosedByInterruptException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 341
    :cond_25
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v10, :cond_26

    iget v1, v0, Lcom/sleepycat/b/i/c/b/an;->a:I

    if-nez v1, :cond_27

    .line 343
    :cond_26
    add-int/lit8 v1, v9, 0x1

    iget v2, v0, Lcom/sleepycat/b/i/c/b/an;->a:I

    if-lt v1, v2, :cond_3a

    .line 345
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to recover from exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/an;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", despite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sleepycat/b/i/c/b/an;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retries.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 354
    :cond_27
    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 357
    :goto_a
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Retry #: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sleepycat/b/i/c/b/an;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Will retry replica loop after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sleepycat/b/i/c/b/an;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 361
    iget v0, v0, Lcom/sleepycat/b/i/c/b/an;->b:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 362
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50163
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 362
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->c()Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    move v9, v1

    move-object v10, v2

    goto/16 :goto_0

    .line 50132
    :cond_28
    :try_start_24
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "Exiting inner Replica loop."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50120
    :cond_29
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/sleepycat/b/i/d;

    if-eqz v1, :cond_2a

    .line 50121
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50125
    :cond_2a
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exiting inner Replica loop with exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v4}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 50132
    :cond_2b
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 50120
    :cond_2c
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_2d

    .line 50121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 50125
    :cond_2d
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 50132
    :cond_2e
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 50120
    :cond_2f
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_30

    .line 50121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 50125
    :cond_30
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 50132
    :cond_31
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 50120
    :cond_32
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_33

    .line 50121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 50125
    :cond_33
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 50132
    :cond_34
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 50120
    :cond_35
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_36

    .line 50121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 50125
    :cond_36
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 50132
    :cond_37
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 50120
    :cond_38
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_39

    .line 50121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Exiting inner Replica loop. Master requested shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 50125
    :cond_39
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting inner Replica loop with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->k:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_24
    .catch Lcom/sleepycat/b/i/c/b/an; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_9

    :cond_3a
    move-object v2, v10

    goto/16 :goto_a
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 50164
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50165
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 457
    sget-object v1, Lcom/sleepycat/b/i/c/an;->O:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/h/p;->a(I)V

    .line 461
    new-instance v1, Lcom/sleepycat/b/i/c/b/am;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "ReplayThread"

    invoke-direct {v1, p0, v0, v2}, Lcom/sleepycat/b/i/c/b/am;-><init>(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->start()V

    .line 466
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 468
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->k()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_4

    .line 493
    :cond_1
    iget v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v2, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v0, v2, :cond_2

    .line 498
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 501
    :cond_2
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 503
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 481
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 472
    :cond_4
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->a(Lcom/sleepycat/b/i/c/b/am;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    const-wide/32 v4, 0x3b9aca00

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->isAlive()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 493
    iget v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v2, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v0, v2, :cond_5

    .line 498
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 501
    :cond_5
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 503
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 490
    :catch_0
    move-exception v0

    :try_start_2
    sget v0, Lcom/sleepycat/b/i/c/b/al;->b:I

    iput v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    iget v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v2, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v0, v2, :cond_6

    .line 498
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 501
    :cond_6
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 503
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 507
    :cond_7
    sget v2, Lcom/sleepycat/b/i/c/b/al;->a:I

    iput v2, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    .line 508
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 493
    throw v0

    .line 507
    :cond_8
    sget v0, Lcom/sleepycat/b/i/c/b/al;->a:I

    iput v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    .line 508
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 509
    return-void

    .line 493
    :catchall_0
    move-exception v0

    iget v2, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v3, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v2, v3, :cond_9

    .line 498
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/am;->join()V

    .line 501
    :cond_9
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 503
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/am;->b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 507
    :cond_a
    sget v0, Lcom/sleepycat/b/i/c/b/al;->a:I

    iput v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    goto :goto_0

    :cond_b
    sget v0, Lcom/sleepycat/b/i/c/b/al;->a:I

    iput v0, v1, Lcom/sleepycat/b/i/c/b/am;->a:I

    goto :goto_0
.end method

.method final c()V
    .locals 3

    .prologue
    .line 697
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ag;->i:Lcom/sleepycat/b/i/c/b/c;

    .line 50180
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/d;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/e;

    .line 50181
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/c;->a(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 50183
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/d;->clear()V

    .line 698
    return-void
.end method

.method final d()V
    .locals 8

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50185
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    .line 817
    sget-object v1, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    if-ne v0, v1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    const-string v1, "Should not be in MASTER state when converting from master to replica state"

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50197
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50186
    invoke-virtual {v0}, Lcom/sleepycat/b/n/aj;->b()Ljava/util/Set;

    move-result-object v0

    .line 50192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 50193
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/z;

    .line 50194
    check-cast v0, Lcom/sleepycat/b/i/f/b;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Transitioning node to replica state, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " txns to clean up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 834
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/b;

    .line 50198
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sleepycat/b/i/f/b;->g:Z

    goto :goto_1

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->Z()V

    .line 848
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/b;

    .line 854
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50200
    iget-object v3, v3, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    .line 854
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/f/b;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/f/e;

    move-result-object v2

    .line 858
    if-nez v2, :cond_3

    .line 859
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Master Txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50201
    iget-wide v6, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 859
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " has no locks, nothing to transfer"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2

    .line 863
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    .line 50202
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 863
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/n/aj;->a(Lcom/sleepycat/b/n/z;)V

    .line 864
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->q:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/ag;->j:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "state for replay transaction "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50203
    iget-wide v6, v2, Lcom/sleepycat/b/n/q;->k:J

    .line 864
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50204
    iget-object v2, v2, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 864
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->i()V

    .line 876
    return-void
.end method
