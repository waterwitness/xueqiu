.class public final Lcom/sleepycat/b/i/c/b/h;
.super Ljava/lang/Object;
.source "Feeder.java"


# static fields
.field private static u:J


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/b/aa;

.field final b:Lcom/sleepycat/b/i/c/b/k;

.field final c:Lcom/sleepycat/b/i/c/b/l;

.field d:Lcom/sleepycat/b/p/au;

.field volatile e:Lcom/sleepycat/b/p/au;

.field volatile f:Lcom/sleepycat/b/i/c/b/u;

.field volatile g:Z

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Lcom/sleepycat/b/i/c/b/x;

.field private j:I

.field private final k:Lcom/sleepycat/b/i/c/b/m;

.field private final l:Lcom/sleepycat/b/i/c/aj;

.field private final m:Lcom/sleepycat/b/i/h/p;

.field private final n:Lcom/sleepycat/b/i/e/f;

.field private o:I

.field private volatile p:J

.field private final q:Lcom/sleepycat/b/i/e/n;

.field private final r:Ljava/util/logging/Logger;

.field private final s:Lcom/sleepycat/b/i/c/b/x;

.field private volatile t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 596
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/b/i/c/b/h;->u:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/h;->p:J

    .line 128
    iput-boolean v3, p0, Lcom/sleepycat/b/i/c/b/h;->g:Z

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 156
    iput v3, p0, Lcom/sleepycat/b/i/c/b/h;->t:I

    .line 215
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->k:Lcom/sleepycat/b/i/c/b/m;

    .line 216
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 217
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    .line 218
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->q:Lcom/sleepycat/b/i/e/n;

    .line 219
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->n:Lcom/sleepycat/b/i/e/f;

    .line 220
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->m:Lcom/sleepycat/b/i/h/p;

    .line 221
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->s:Lcom/sleepycat/b/i/c/b/x;

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "TestFeeder"

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    .line 223
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    .line 224
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    .line 225
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/i/c/b/m;Ljava/nio/channels/SocketChannel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/h;->p:J

    .line 128
    iput-boolean v2, p0, Lcom/sleepycat/b/i/c/b/h;->g:Z

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 156
    iput v2, p0, Lcom/sleepycat/b/i/c/b/h;->t:I

    .line 190
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/h;->k:Lcom/sleepycat/b/i/c/b/m;

    .line 5201
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 191
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 192
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 192
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    .line 193
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 193
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->q:Lcom/sleepycat/b/i/e/n;

    .line 194
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 7454
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 194
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->s:Lcom/sleepycat/b/i/c/b/x;

    .line 195
    new-instance v0, Lcom/sleepycat/b/i/e/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 7520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 195
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 7532
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 7807
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 195
    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/e/m;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/i/f;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->n:Lcom/sleepycat/b/i/e/f;

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    .line 200
    invoke-direct {p0, p2}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/b/i/h/p;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->m:Lcom/sleepycat/b/i/h/p;

    .line 201
    new-instance v0, Lcom/sleepycat/b/i/c/b/k;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 8520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 201
    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/c/b/k;-><init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    .line 202
    new-instance v0, Lcom/sleepycat/b/i/c/b/l;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 9520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 202
    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/c/b/l;-><init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    .line 10201
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 203
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->d()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/h;->j:I

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/h;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/sleepycat/b/i/c/b/h;->o:I

    return p1
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/h;J)J
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/sleepycat/b/i/c/b/h;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/b/x;)Lcom/sleepycat/b/i/c/b/x;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    return-object p1
.end method

.method private a(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/b/i/h/p;
    .locals 5

    .prologue
    .line 169
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 170
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder accepted connection from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2528
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 172
    sget-object v1, Lcom/sleepycat/b/i/c/an;->Y:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3528
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 4392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 174
    sget-object v2, Lcom/sleepycat/b/i/c/an;->t:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    .line 177
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 178
    new-instance v1, Lcom/sleepycat/b/i/h/p;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v1, v2, p1, v0}, Lcom/sleepycat/b/i/h/p;-><init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/nio/channels/SocketChannel;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IO exception while configuring channel Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    return-object p1
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/h;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/sleepycat/b/i/c/b/h;->t:I

    return p1
.end method

.method static synthetic b()J
    .locals 4

    .prologue
    .line 75
    sget-wide v0, Lcom/sleepycat/b/i/c/b/h;->u:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/sleepycat/b/i/c/b/h;->u:J

    return-wide v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->m:Lcom/sleepycat/b/i/h/p;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/h;->d:Lcom/sleepycat/b/p/au;

    return-object p1
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/h;J)V
    .locals 3

    .prologue
    .line 75
    .line 15980
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 16536
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 16811
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    .line 17100
    iget-object v1, v0, Lcom/sleepycat/b/i/e/i;->b:Lcom/sleepycat/b/i/c/aj;

    .line 17887
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 18206
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 17103
    iget-object v0, v0, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/j;

    .line 17104
    if-nez v0, :cond_2

    .line 17105
    const/4 v0, 0x0

    .line 15981
    :goto_0
    if-eqz v0, :cond_1

    .line 15982
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-lez v1, :cond_0

    .line 15983
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    .line 15985
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/h;->g:Z

    .line 15986
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/h;->a()V

    .line 75
    :cond_1
    return-void

    .line 19178
    :cond_2
    iget-object v1, v0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_3

    .line 19182
    iget-object v1, v0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20157
    :cond_3
    iget-object v0, v0, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    .line 21133
    iget-object v0, v0, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    goto :goto_0
.end method

.method static synthetic c()J
    .locals 4

    .prologue
    .line 75
    sget-wide v0, Lcom/sleepycat/b/i/c/b/h;->u:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sleepycat/b/i/c/b/h;->u:J

    return-wide v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    return-object v0
.end method

.method static synthetic e(Lcom/sleepycat/b/i/c/b/h;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/h;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->d:Lcom/sleepycat/b/p/au;

    return-object v0
.end method

.method static synthetic g(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/f;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->n:Lcom/sleepycat/b/i/e/f;

    return-object v0
.end method

.method static synthetic h(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/l;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    return-object v0
.end method

.method static synthetic i(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/n;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->q:Lcom/sleepycat/b/i/e/n;

    return-object v0
.end method

.method static synthetic j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->k:Lcom/sleepycat/b/i/c/b/m;

    return-object v0
.end method

.method static synthetic k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method static synthetic m(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic n(Lcom/sleepycat/b/i/c/b/h;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sleepycat/b/i/c/b/h;->o:I

    return v0
.end method

.method static synthetic o(Lcom/sleepycat/b/i/c/b/h;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sleepycat/b/i/c/b/h;->t:I

    return v0
.end method

.method static synthetic p(Lcom/sleepycat/b/i/c/b/h;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sleepycat/b/i/c/b/h;->j:I

    return v0
.end method

.method static synthetic q(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->s:Lcom/sleepycat/b/i/c/b/x;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->f:Lcom/sleepycat/b/i/c/b/u;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/sleepycat/b/i/c/b/v;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 11087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 255
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/i/c/b/v;-><init>(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/u;->a(Lcom/sleepycat/b/i/c/b/v;)V

    .line 259
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->f:Lcom/sleepycat/b/i/c/b/u;

    .line 291
    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 12087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 12141
    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/v;->a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/b/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/u;->a(Lcom/sleepycat/b/i/c/b/v;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->k:Lcom/sleepycat/b/i/c/b/m;

    .line 12310
    sget-boolean v1, Lcom/sleepycat/b/i/c/b/m;->k:Z

    if-nez v1, :cond_2

    .line 12345
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 12310
    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12311
    :cond_2
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    monitor-enter v1

    .line 12312
    :try_start_0
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12313
    :try_start_1
    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13266
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 14087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 12316
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/h/af;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12317
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12318
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    sget-object v1, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    sget-object v2, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->k:Lcom/sleepycat/b/i/c/b/m;

    .line 14185
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 305
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Shutting down feeder for replica "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 305
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_6

    const-string v1, ""

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/p/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15129
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 313
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 327
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/k;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 336
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/l;->a(Ljava/util/logging/Logger;)V

    .line 337
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/k;->a(Ljava/util/logging/Logger;)V

    .line 339
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->m:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->m:Lcom/sleepycat/b/i/h/p;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/h/p;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12317
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 12318
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 296
    :cond_5
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "BinaryProtocol"

    const-string v2, "Network traffic due to the replication stream."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 305
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " Reason: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 330
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/h;->r:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/h;->l:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupted while waiting to join thread:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_3
.end method
