.class public final Lcom/snowballfinance/message/io/c/h;
.super Ljava/lang/Object;
.source "MessageClient.java"


# instance fields
.field final a:Lcom/snowballfinance/message/io/logger/Logger;

.field public b:Lcom/snowballfinance/message/io/c/e;

.field c:J

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field final h:Lrx/h;

.field public final i:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Lcom/snowballfinance/messageplatform/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final k:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Lcom/snowballfinance/message/io/c/j;",
            ">;"
        }
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field o:I

.field p:Lrx/j;

.field final q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lrx/i/a",
            "<",
            "Lcom/snowballfinance/messageplatform/a/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile r:I

.field private s:Lcom/snowballfinance/message/io/c/b;

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private final u:I


# direct methods
.method public constructor <init>([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    .line 69
    iput v1, p0, Lcom/snowballfinance/message/io/c/h;->r:I

    .line 89
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->i:Lrx/i/c;

    .line 91
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->j:Lrx/i/c;

    .line 93
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    .line 95
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    .line 97
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->m:Lrx/i/c;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 103
    const/16 v0, 0x200

    iput v0, p0, Lcom/snowballfinance/message/io/c/h;->u:I

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    new-instance v0, Lcom/snowballfinance/message/io/c/b;

    invoke-direct {v0, p1}, Lcom/snowballfinance/message/io/c/b;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->s:Lcom/snowballfinance/message/io/c/b;

    .line 111
    iput-wide p2, p0, Lcom/snowballfinance/message/io/c/h;->c:J

    .line 112
    iput-object p4, p0, Lcom/snowballfinance/message/io/c/h;->d:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/snowballfinance/message/io/c/h;->e:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/snowballfinance/message/io/c/h;->f:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lcom/snowballfinance/message/io/c/h;->g:Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->t:Ljava/util/concurrent/ExecutorService;

    .line 117
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->t:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lrx/h/p;->a(Ljava/util/concurrent/Executor;)Lrx/g;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/h;->h:Lrx/h;

    .line 118
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    new-instance v1, Lcom/snowballfinance/message/io/c/h$1;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$1;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1}, Lrx/i/c;->c(Lrx/c/b;)Lrx/j;

    .line 175
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    new-instance v1, Lcom/snowballfinance/message/io/c/h$4;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$4;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1}, Lrx/i/c;->c(Lrx/c/b;)Lrx/j;

    .line 183
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    new-instance v1, Lcom/snowballfinance/message/io/c/h$5;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$5;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1}, Lrx/i/c;->c(Lrx/c/b;)Lrx/j;

    .line 219
    return-void
.end method

.method private b(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/message/io/b;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 392
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->e:Ljava/lang/String;

    .line 12133
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 393
    new-instance v1, Lcom/snowballfinance/messageplatform/a/a/b;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/a/b;-><init>()V

    .line 13030
    iget-object v4, v1, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    .line 13064
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/b;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 13065
    check-cast v0, Lcom/snowballfinance/messageplatform/a/b;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/b;Lcom/snowballfinance/messageplatform/a/a/e;)V

    .line 13031
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->b()I

    move-result v0

    iget-object v4, v1, Lcom/snowballfinance/messageplatform/a/a/b;->a:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-static {p1, v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/a;ILcom/snowballfinance/messageplatform/a/a/e;)V

    .line 13032
    iget-object v0, v1, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 13033
    iget-object v0, v1, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    iget-object v4, v1, Lcom/snowballfinance/messageplatform/a/a/b;->a:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/e;->writeTo(Ljava/io/OutputStream;)V

    .line 13035
    :cond_1
    iget-object v0, v1, Lcom/snowballfinance/messageplatform/a/a/b;->b:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->reset()V

    .line 395
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 14074
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 395
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v4

    .line 14296
    iget-object v0, v1, Lcom/snowballfinance/messageplatform/a/a/b;->a:Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->toByteArray()[B

    move-result-object v0

    .line 397
    array-length v1, v0

    const/16 v5, 0x100

    if-le v1, v5, :cond_2

    .line 15019
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15020
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15021
    invoke-virtual {v5, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 15022
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 15023
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 15094
    iput-boolean v3, v4, Lcom/snowballfinance/message/io/b;->e:Z

    :cond_2
    move-object v1, v0

    .line 401
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 16074
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 401
    const-string v5, "CONTEXT"

    invoke-virtual {v0, v5}, Lcom/snowballfinance/message/io/c/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/message/io/c/c;

    .line 17061
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/c;->f:[B

    .line 402
    invoke-static {v1, v0}, Lcom/snowballfinance/message/a/d;->a([B[B)[B

    move-result-object v0

    .line 17102
    iput-boolean v3, v4, Lcom/snowballfinance/message/io/b;->f:Z

    .line 17110
    iput-object v0, v4, Lcom/snowballfinance/message/io/b;->g:[B

    .line 17146
    invoke-static {p1}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/a/s;->O:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 17147
    check-cast p1, Lcom/snowballfinance/messageplatform/a/y;

    .line 18102
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->n:Lcom/snowballfinance/messageplatform/a/v;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/v;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/a/v;->o:Lcom/snowballfinance/messageplatform/a/v;

    .line 18103
    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/a/v;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_3
    move v0, v3

    .line 405
    :goto_1
    if-eqz v0, :cond_4

    .line 19085
    iput v3, v4, Lcom/snowballfinance/message/io/b;->d:I

    .line 408
    :cond_4
    return-object v4

    .line 13066
    :cond_5
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/g;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 13067
    check-cast v0, Lcom/snowballfinance/messageplatform/a/g;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/g;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13068
    :cond_6
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/c;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 13069
    check-cast v0, Lcom/snowballfinance/messageplatform/a/c;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/c;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13070
    :cond_7
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/r;

    if-nez v0, :cond_0

    .line 13072
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/t;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 13073
    check-cast v0, Lcom/snowballfinance/messageplatform/a/t;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/t;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13074
    :cond_8
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/q;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 13075
    check-cast v0, Lcom/snowballfinance/messageplatform/a/q;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/q;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13076
    :cond_9
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/e;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 13077
    check-cast v0, Lcom/snowballfinance/messageplatform/a/e;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/e;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13078
    :cond_a
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/f;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 13079
    check-cast v0, Lcom/snowballfinance/messageplatform/a/f;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/f;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13080
    :cond_b
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/l;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 13081
    check-cast v0, Lcom/snowballfinance/messageplatform/a/l;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/l;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13082
    :cond_c
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/d;

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 13083
    check-cast v0, Lcom/snowballfinance/messageplatform/a/d;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/d;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13084
    :cond_d
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/m;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 13085
    check-cast v0, Lcom/snowballfinance/messageplatform/a/m;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/m;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13086
    :cond_e
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/j;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 13087
    check-cast v0, Lcom/snowballfinance/messageplatform/a/j;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/j;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13088
    :cond_f
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/k;

    if-eqz v0, :cond_10

    move-object v0, p1

    .line 13089
    check-cast v0, Lcom/snowballfinance/messageplatform/a/k;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/k;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13090
    :cond_10
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/h;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 13091
    check-cast v0, Lcom/snowballfinance/messageplatform/a/h;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/h;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13092
    :cond_11
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/i;

    if-eqz v0, :cond_12

    move-object v0, p1

    .line 13093
    check-cast v0, Lcom/snowballfinance/messageplatform/a/i;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/i;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13094
    :cond_12
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/u;

    if-eqz v0, :cond_13

    move-object v0, p1

    .line 13095
    check-cast v0, Lcom/snowballfinance/messageplatform/a/u;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/u;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13096
    :cond_13
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/o;

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 13097
    check-cast v0, Lcom/snowballfinance/messageplatform/a/o;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/o;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13098
    :cond_14
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/n;

    if-eqz v0, :cond_15

    move-object v0, p1

    .line 13099
    check-cast v0, Lcom/snowballfinance/messageplatform/a/n;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/n;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13100
    :cond_15
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/y;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 13101
    check-cast v0, Lcom/snowballfinance/messageplatform/a/y;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/y;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13102
    :cond_16
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/z;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 13103
    check-cast v0, Lcom/snowballfinance/messageplatform/a/z;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/z;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13104
    :cond_17
    instance-of v0, p1, Lcom/snowballfinance/messageplatform/a/w;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 13105
    check-cast v0, Lcom/snowballfinance/messageplatform/a/w;

    invoke-static {v0, v4}, Lcom/snowballfinance/messageplatform/a/a/b;->a(Lcom/snowballfinance/messageplatform/a/w;Lcom/snowballfinance/messageplatform/a/a/e;)V

    goto/16 :goto_0

    .line 13107
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_19
    move v0, v2

    .line 17147
    goto/16 :goto_1

    .line 17149
    :cond_1a
    invoke-static {p1}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/a/s;->Y:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/a/s;->Z:Lcom/snowballfinance/messageplatform/a/s;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/a/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    move v0, v3

    goto/16 :goto_1

    :cond_1c
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lcom/snowballfinance/messageplatform/a/a;)Lrx/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowballfinance/messageplatform/a/a;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 299
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 303
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snowballfinance/message/io/c/h;->b(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "send [UDM:%s] to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 305
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 2074
    iget-object v5, v5, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 305
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 306
    sget-object v1, Lcom/snowballfinance/message/io/c/k;->a:Lcom/snowballfinance/message/io/c/k;

    .line 2091
    invoke-static {p1}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/s;->name()Ljava/lang/String;

    move-result-object v2

    .line 2106
    iget-object v3, v0, Lcom/snowballfinance/message/io/b;->g:[B

    .line 306
    array-length v3, v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p0, v1, v2, v3}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 3074
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 308
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowballfinance/messageplatform/a/y;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/snowballfinance/messageplatform/a/z;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 336
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "not connected."

    invoke-static {p1, v0}, Lcom/snowballfinance/messageplatform/a/z;->a(Lcom/snowballfinance/messageplatform/a/y;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 3329
    :cond_0
    iget v0, p0, Lcom/snowballfinance/message/io/c/h;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowballfinance/message/io/c/h;->r:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_1

    .line 3330
    iput v2, p0, Lcom/snowballfinance/message/io/c/h;->r:I

    .line 3332
    :cond_1
    iget v0, p0, Lcom/snowballfinance/message/io/c/h;->r:I

    .line 339
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4125
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 4428
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->e:Ljava/lang/String;

    .line 5133
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 5424
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->d:Ljava/lang/String;

    .line 6074
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->e:Ljava/lang/String;

    .line 6420
    iget-wide v0, p0, Lcom/snowballfinance/message/io/c/h;->c:J

    .line 342
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7082
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->f:Ljava/lang/Long;

    .line 7086
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 344
    if-eqz v0, :cond_3

    .line 345
    new-instance v0, Ljava/lang/String;

    .line 8086
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 345
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 349
    :goto_1
    const-string v1, "version"

    .line 8432
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h;->f:Ljava/lang/String;

    .line 349
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 9090
    iput-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->h:[B

    .line 352
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snowballfinance/message/io/c/h;->b(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "send [UDM:%s] to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 354
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 10074
    iget-object v5, v5, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 354
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 355
    sget-object v1, Lcom/snowballfinance/message/io/c/k;->a:Lcom/snowballfinance/message/io/c/k;

    .line 11062
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    .line 11106
    iget-object v3, v0, Lcom/snowballfinance/message/io/b;->g:[B

    .line 355
    array-length v3, v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p0, v1, v2, v3}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 12074
    iget-object v1, v1, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 357
    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/h$2;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$2;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/h$11;

    invoke-direct {v1, p0, p1}, Lcom/snowballfinance/message/io/c/h$11;-><init>(Lcom/snowballfinance/message/io/c/h;Lcom/snowballfinance/messageplatform/a/y;)V

    .line 363
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 347
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 386
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12121
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 387
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x190

    const-string v2, "send request error."

    invoke-static {v0, v1, v2}, Lcom/snowballfinance/messageplatform/a/z;->a(IILjava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->p:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/message/io/c/h;->o:I

    .line 230
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->k:Lrx/i/c;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->h:Lrx/h;

    new-instance v1, Lcom/snowballfinance/message/io/c/h$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snowballfinance/message/io/c/h$10;-><init>(Lcom/snowballfinance/message/io/c/h;Lcom/snowballfinance/message/io/c/k;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 326
    return-void
.end method

.method public final declared-synchronized b()Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const/4 v1, 0x0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->s:Lcom/snowballfinance/message/io/c/b;

    .line 1039
    iget-object v2, v0, Lcom/snowballfinance/message/io/c/b;->b:[Ljava/lang/String;

    iget v3, v0, Lcom/snowballfinance/message/io/c/b;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/snowballfinance/message/io/c/b;->a:I

    iget-object v4, v0, Lcom/snowballfinance/message/io/c/b;->b:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 1040
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1041
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1049
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 1041
    if-eqz v0, :cond_2

    .line 1042
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 1053
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1054
    array-length v5, v4

    if-eq v5, v6, :cond_1

    .line 1055
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "invalid ip address "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    :try_start_2
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get address failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/h;->s:Lcom/snowballfinance/message/io/c/b;

    invoke-virtual {v4}, Lcom/snowballfinance/message/io/c/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/c/e;->c()V

    .line 244
    :cond_0
    new-instance v1, Lcom/snowballfinance/message/io/c/e;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/snowballfinance/message/io/c/e;-><init>(Ljava/lang/String;Ljava/net/InetSocketAddress;)V

    iput-object v1, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 245
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    .line 1155
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/e;->b:Lrx/i/c;

    new-instance v2, Lcom/snowballfinance/message/io/c/e$6;

    invoke-direct {v2, v0}, Lcom/snowballfinance/message/io/c/e$6;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    invoke-virtual {v1, v2}, Lrx/i/c;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/snowballfinance/message/io/c/h$6;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$6;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    new-instance v2, Lcom/snowballfinance/message/io/c/h$7;

    invoke-direct {v2, p0}, Lcom/snowballfinance/message/io/c/h$7;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 259
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->a()Lrx/a;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/h$8;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/h$8;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    new-instance v2, Lcom/snowballfinance/message/io/c/h$9;

    invoke-direct {v2, p0}, Lcom/snowballfinance/message/io/c/h$9;-><init>(Lcom/snowballfinance/message/io/c/h;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 279
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->l:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->c()Lrx/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 282
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1057
    :cond_1
    const/4 v3, 0x3

    :try_start_3
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1058
    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1059
    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1060
    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1066
    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 1071
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    .line 1042
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1044
    :cond_2
    :try_start_4
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v3, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 281
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->a:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "%s is already connecting"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto/16 :goto_1
.end method

.method final c()V
    .locals 6

    .prologue
    .line 412
    iget-object v2, p0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/i/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x198

    const-string v5, "connection reset"

    invoke-static {v0, v4, v5}, Lcom/snowballfinance/messageplatform/a/z;->a(IILjava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/i/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/snowballfinance/message/io/c/h;->c()V

    .line 441
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->h:Lrx/h;

    invoke-virtual {v0}, Lrx/h;->b()V

    .line 442
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->t:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 443
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->c()V

    .line 446
    :cond_0
    return-void
.end method
