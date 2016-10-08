.class public Lcom/sleepycat/b/i;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic l:Z


# instance fields
.field volatile a:Lcom/sleepycat/b/j;

.field public b:Lcom/sleepycat/b/x;

.field public c:Lcom/sleepycat/b/c/i;

.field d:Lcom/sleepycat/b/l;

.field e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field g:Lcom/sleepycat/b/n/d;

.field h:Lcom/sleepycat/b/be;

.field i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/bi;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/bi;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/logging/Logger;

.field private m:Lcom/sleepycat/b/au;

.field private n:Lcom/sleepycat/b/p/d;

.field private o:Lcom/sleepycat/b/p/d;

.field private p:Lcom/sleepycat/b/p/d;

.field private q:Lcom/sleepycat/b/p/d;

.field private r:Lcom/sleepycat/b/p/d;

.field private s:Lcom/sleepycat/b/p/d;

.field private t:Lcom/sleepycat/b/p/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/sleepycat/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/x;)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    iput-object p1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    .line 132
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 3206
    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 3515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 132
    iput-object v0, p0, Lcom/sleepycat/b/i;->k:Ljava/util/logging/Logger;

    .line 133
    return-void
.end method

.method private a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1564
    .line 1566
    :try_start_0
    sget-object v4, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 44533
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v1

    .line 44982
    iget-object v3, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 45511
    iget-boolean v3, v3, Lcom/sleepycat/b/c/i;->d:Z

    .line 1568
    iget-object v5, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 45677
    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v5

    .line 1568
    invoke-static {v0, p1, v1, v3, v5}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1574
    :try_start_2
    new-instance v1, Lcom/sleepycat/b/e;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v3, v0}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46384
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/sleepycat/b/e;->d:Z

    .line 1576
    invoke-virtual {v1, p2, p3, p4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 1580
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1582
    if-eqz v3, :cond_0

    .line 1583
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_0
    return-object v0

    .line 1579
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 1580
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1582
    :cond_1
    if-eqz v2, :cond_2

    .line 1583
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_2
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 47206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 1587
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1588
    throw v0

    .line 1579
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method static a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/ao;)V
    .locals 3

    .prologue
    .line 2164
    if-nez p0, :cond_0

    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is meaningless and can not be specified when a null (autocommit) transaction is used. There will never be a follow on operation which will promote the lock to WRITE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_0
    return-void
.end method

.method private a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/l;)V
    .locals 2

    .prologue
    .line 180
    sget-boolean v0, Lcom/sleepycat/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 21338
    invoke-virtual {p2}, Lcom/sleepycat/b/l;->a()Lcom/sleepycat/b/l;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/sleepycat/b/i;->d:Lcom/sleepycat/b/l;

    .line 183
    iget-object v0, p0, Lcom/sleepycat/b/i;->d:Lcom/sleepycat/b/l;

    .line 21396
    iget-boolean v0, v0, Lcom/sleepycat/b/l;->e:Z

    .line 183
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/i;->e:Z

    .line 22206
    iget-object v0, p1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 23190
    sget-object v1, Lcom/sleepycat/b/c/x;->i:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->n:Lcom/sleepycat/b/p/d;

    .line 23191
    sget-object v1, Lcom/sleepycat/b/c/x;->j:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->o:Lcom/sleepycat/b/p/d;

    .line 23192
    sget-object v1, Lcom/sleepycat/b/c/x;->k:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->p:Lcom/sleepycat/b/p/d;

    .line 23194
    sget-object v1, Lcom/sleepycat/b/c/x;->l:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->q:Lcom/sleepycat/b/p/d;

    .line 23195
    sget-object v1, Lcom/sleepycat/b/c/x;->m:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->r:Lcom/sleepycat/b/p/d;

    .line 23197
    sget-object v1, Lcom/sleepycat/b/c/x;->n:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i;->s:Lcom/sleepycat/b/p/d;

    .line 23199
    sget-object v1, Lcom/sleepycat/b/c/x;->o:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i;->t:Lcom/sleepycat/b/p/d;

    .line 185
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->a()Lcom/sleepycat/b/be;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    .line 186
    sget-object v0, Lcom/sleepycat/b/j;->a:Lcom/sleepycat/b/j;

    iput-object v0, p0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    .line 187
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 382
    if-eq p2, p1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You can\'t open a Database with a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " configuration of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " if the underlying database was created with a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    return-void
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/sleepycat/b/i;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2217
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    if-eqz p3, :cond_0

    .line 2220
    const-string v1, " txnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48259
    iget-wide v2, p3, Lcom/sleepycat/b/bp;->c:J

    .line 2220
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2222
    :cond_0
    if-eqz p4, :cond_1

    .line 2223
    const-string v1, " config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2225
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i;->k:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 49206
    iget-object v2, v2, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 2225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2228
    :cond_2
    return-void
.end method

.method private a(ZZLcom/sleepycat/b/j;Lcom/sleepycat/b/au;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 27206
    iget-object v2, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 504
    if-eqz v2, :cond_0

    .line 27688
    iget-object v1, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 505
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->a()V

    .line 28524
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28528
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28531
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    sget-object v4, Lcom/sleepycat/b/j;->a:Lcom/sleepycat/b/j;

    if-eq v1, v4, :cond_3

    .line 28532
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 511
    :cond_1
    if-eqz v2, :cond_2

    .line 30688
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 512
    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 515
    :cond_2
    return-void

    .line 28540
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->f()V

    .line 28546
    iput-object p3, p0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    .line 28547
    iput-object p4, p0, Lcom/sleepycat/b/i;->m:Lcom/sleepycat/b/au;

    .line 28553
    sget-object v1, Lcom/sleepycat/b/j;->b:Lcom/sleepycat/b/j;

    if-ne p3, v1, :cond_6

    .line 28554
    iget-object v1, p0, Lcom/sleepycat/b/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_4

    .line 28555
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " open cursors."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28559
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 28561
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " associated SecondaryDatabases."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28565
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 28567
    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " associated foreign key SecondaryDatabases."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28574
    :cond_6
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Database.close: "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/sleepycat/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Ljava/lang/Object;)V

    .line 28576
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->b()V

    .line 28578
    iget-object v1, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    if-eqz v1, :cond_e

    .line 28579
    iget-object v1, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 28580
    iget-object v4, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 29154
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28581
    iget-object v4, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 29206
    iget-object v4, v4, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 29379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 28581
    iget-object v5, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 28589
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 28591
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    if-eqz v4, :cond_d

    .line 28601
    sget-object v4, Lcom/sleepycat/b/j;->d:Lcom/sleepycat/b/j;

    if-ne p3, v4, :cond_7

    .line 28602
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    invoke-virtual {v4, p4}, Lcom/sleepycat/b/n/d;->a(Lcom/sleepycat/b/au;)V

    .line 28610
    :cond_7
    sget-object v4, Lcom/sleepycat/b/j;->b:Lcom/sleepycat/b/j;

    if-ne p3, v4, :cond_b

    .line 30082
    iget-boolean v4, p0, Lcom/sleepycat/b/i;->e:Z

    .line 28611
    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->v()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-nez v4, :cond_8

    .line 28614
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    invoke-static {v4, v1}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28620
    :cond_8
    :goto_0
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/n/d;->a_(Z)V

    .line 28626
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 28629
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28640
    if-eqz v0, :cond_9

    .line 28641
    :try_start_5
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(ZZ)V

    .line 28645
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 28646
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Database closed while still referenced by other handles."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    .line 31688
    iget-object v1, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 512
    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    :cond_a
    throw v0

    .line 28622
    :cond_b
    :try_start_6
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/n/d;->a_(Z)V

    goto :goto_1

    .line 28629
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 28650
    :cond_c
    if-eqz v1, :cond_1

    .line 28651
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 28617
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_d
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_e
    move-object v1, v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2156
    iget-boolean v0, p0, Lcom/sleepycat/b/i;->e:Z

    if-nez v0, :cond_0

    .line 2157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Database is Read Only: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2160
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1065
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->f()V

    .line 1066
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1067
    const-string v0, "Can\'t call Database.delete:"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 1068
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i;->b(Ljava/lang/String;)V

    .line 1069
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Database.delete"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1070
    iget-object v0, p0, Lcom/sleepycat/b/i;->n:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1072
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 33533
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v1

    .line 33982
    iget-object v3, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 34511
    iget-boolean v3, v3, Lcom/sleepycat/b/c/i;->d:Z

    .line 1075
    iget-object v4, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 34677
    invoke-virtual {v4}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v4

    .line 1075
    invoke-static {v0, p1, v1, v3, v4}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1080
    :try_start_2
    invoke-virtual {p0, v1, p2}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1083
    if-eqz v1, :cond_0

    .line 1084
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_0
    return-object v0

    .line 1083
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_0
    if-eqz v1, :cond_1

    .line 1084
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_1
    throw v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 35206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 1088
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1089
    throw v0

    .line 1083
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 1435
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->f()V

    .line 1436
    const-string v0, "key"

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1437
    const-string v0, "data"

    invoke-static {p3, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1438
    invoke-static {p2}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;)V

    .line 1439
    const-string v0, "Can\'t call Database.put"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 1440
    const-string v0, "put"

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i;->b(Ljava/lang/String;)V

    .line 1441
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Database.put"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1442
    iget-object v0, p0, Lcom/sleepycat/b/i;->q:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1444
    sget-object v0, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1266
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->f()V

    .line 1267
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1268
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 1269
    const-string v0, "Can\'t call Database.get:"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 1270
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Database.get"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 1271
    iget-object v0, p0, Lcom/sleepycat/b/i;->o:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 1273
    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 1274
    sget-object v1, Lcom/sleepycat/b/ao;->c:Lcom/sleepycat/b/ao;

    if-ne p4, v1, :cond_0

    .line 1275
    sget-object v0, Lcom/sleepycat/b/g;->c:Lcom/sleepycat/b/g;

    move-object p4, v7

    .line 1278
    :cond_0
    invoke-static {p1, p4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/ao;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    const/4 v3, 0x0

    .line 1284
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 41982
    iget-object v2, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 42511
    iget-boolean v2, v2, Lcom/sleepycat/b/c/i;->d:Z

    .line 43127
    iget-boolean v4, v0, Lcom/sleepycat/b/g;->e:Z

    .line 1284
    invoke-static {v1, p1, v2, v4}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1288
    :try_start_2
    new-instance v1, Lcom/sleepycat/b/e;

    invoke-direct {v1, p0, v2, v0}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43384
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/sleepycat/b/e;->d:Z

    .line 1290
    sget-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 1295
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1298
    if-eqz v2, :cond_1

    .line 1299
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_1
    return-object v0

    .line 1294
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_0
    if-eqz v1, :cond_2

    .line 1295
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1298
    :cond_2
    if-eqz v7, :cond_3

    .line 1299
    invoke-virtual {v7, v3}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_3
    throw v0
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 44206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 1303
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1304
    throw v0

    .line 1294
    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v7, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_0
.end method

.method final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 16

    .prologue
    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v8, v2

    .line 1108
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/i;->g()Z

    move-result v13

    .line 1110
    if-eqz v13, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 36133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 36688
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1111
    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->c()V

    .line 1124
    :cond_0
    if-eqz v13, :cond_6

    .line 1125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    invoke-interface {v2}, Lcom/sleepycat/b/be;->c()Ljava/util/Collection;

    move-result-object v4

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    .line 1127
    if-nez v8, :cond_1

    invoke-static {v4}, Lcom/sleepycat/b/bi;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v10, v2

    move-object v11, v3

    move-object v12, v4

    .line 1135
    :goto_2
    new-instance v14, Lcom/sleepycat/b/e;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37384
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v14, Lcom/sleepycat/b/e;->d:Z

    .line 1145
    new-instance v9, Lcom/sleepycat/b/m;

    invoke-direct {v9}, Lcom/sleepycat/b/m;-><init>()V

    .line 1146
    if-nez v10, :cond_2

    .line 1147
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v3, v4}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 1151
    :cond_2
    sget-object v2, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v3, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v9, v2, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1153
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v2, v3, :cond_9

    .line 1154
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    :try_start_2
    invoke-virtual {v14}, Lcom/sleepycat/b/e;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1211
    if-eqz v13, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 38133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 38688
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1212
    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    :cond_3
    :goto_3
    return-object v2

    .line 1107
    :cond_4
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 1127
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1130
    :cond_6
    const/4 v3, 0x0

    .line 1131
    const/4 v2, 0x0

    move v10, v8

    move-object v11, v2

    move-object v12, v3

    .line 1132
    goto :goto_2

    .line 1193
    :cond_7
    if-eqz v8, :cond_8

    .line 1194
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1, v6}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1199
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1200
    sget-object v2, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v3, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v9, v2, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1157
    :cond_9
    :goto_4
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_f

    .line 1164
    if-eqz v11, :cond_b

    .line 1165
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/bi;

    .line 1166
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/bi;->b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1208
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v14}, Lcom/sleepycat/b/e;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1211
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_a

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 41133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 41688
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1212
    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    :cond_a
    throw v2

    .line 1170
    :cond_b
    if-eqz v10, :cond_c

    move-object v6, v9

    .line 1178
    :goto_6
    if-eqz v12, :cond_d

    .line 1179
    :try_start_5
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/bi;

    .line 1180
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    goto :goto_7

    .line 1170
    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    .line 1186
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1188
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v2, v3, :cond_7

    .line 1208
    :try_start_6
    invoke-virtual {v14}, Lcom/sleepycat/b/e;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1211
    if-eqz v13, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 39133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 39688
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1212
    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    goto/16 :goto_3

    .line 1203
    :cond_e
    :try_start_7
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    goto :goto_4

    .line 1206
    :cond_f
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1208
    :try_start_8
    invoke-virtual {v14}, Lcom/sleepycat/b/e;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1211
    if-eqz v13, :cond_3

    .line 1212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 40133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 40688
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 1212
    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    goto/16 :goto_3
.end method

.method a()Lcom/sleepycat/b/be;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    .line 206
    iget-object v0, p0, Lcom/sleepycat/b/i;->d:Lcom/sleepycat/b/l;

    .line 23328
    iget-object v0, v0, Lcom/sleepycat/b/l;->u:Lcom/sleepycat/b/be;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/sleepycat/b/i;->d:Lcom/sleepycat/b/l;

    .line 24272
    iget-boolean v0, v0, Lcom/sleepycat/b/l;->f:Z

    .line 207
    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicates not allowed for a primary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    .line 212
    iget-object v0, p0, Lcom/sleepycat/b/i;->d:Lcom/sleepycat/b/l;

    .line 24328
    iget-object v0, v0, Lcom/sleepycat/b/l;->u:Lcom/sleepycat/b/be;

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    .line 217
    new-instance v0, Lcom/sleepycat/b/i$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i$1;-><init>(Lcom/sleepycat/b/i;)V

    goto :goto_0
.end method

.method final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;
    .locals 6

    .prologue
    .line 2246
    new-instance v0, Lcom/sleepycat/b/bj;

    const-string v2, "Secondary refers to a missing key in the primary database"

    invoke-virtual {p0}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bj;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    return-object v0
.end method

.method a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 144
    .line 3527
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->e:Z

    if-eqz v0, :cond_0

    .line 3528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseConfig.setReadOnly() must be set to false when creating a Database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3533
    :cond_0
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p4, Lcom/sleepycat/b/l;->g:Z

    if-eqz v0, :cond_1

    .line 3534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferredWrite mode is not supported for transactional databases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/l;)V

    .line 149
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 4206
    iget-object v0, v0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 4379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 151
    iget-object v4, p0, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, v5

    .line 4456
    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/n/d;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 153
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/i;)V

    .line 154
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 3

    .prologue
    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i;->f()V

    .line 816
    const-string v0, "Can\'t open a cursor"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 817
    if-nez p2, :cond_0

    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 32087
    :goto_0
    iget-boolean v1, v0, Lcom/sleepycat/b/g;->d:Z

    .line 820
    if-eqz v1, :cond_1

    .line 32127
    iget-boolean v1, v0, Lcom/sleepycat/b/g;->e:Z

    .line 820
    if-eqz v1, :cond_1

    .line 822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one may be specified: ReadCommitted or ReadUncommitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 33206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 832
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 833
    throw v0

    :cond_0
    move-object v0, p2

    .line 817
    goto :goto_0

    .line 827
    :cond_1
    :try_start_1
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "Database.openCursor"

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/sleepycat/b/i;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Ljava/lang/Object;)V

    .line 828
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/i;->b(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 830
    return-object v0
.end method

.method a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;Lcom/sleepycat/b/l;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    .line 6160
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->r:Z

    .line 5261
    if-nez v2, :cond_0

    .line 5262
    const-string v2, "sortedDuplicates"

    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v3

    .line 6272
    iget-boolean v4, p5, Lcom/sleepycat/b/l;->f:Z

    .line 5262
    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;ZZ)V

    .line 5265
    const-string v2, "temporary"

    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v3

    .line 7046
    iget-boolean v4, p5, Lcom/sleepycat/b/l;->h:Z

    .line 5265
    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;ZZ)V

    .line 5269
    iget-object v2, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 7206
    iget-object v2, v2, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 5269
    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5270
    const-string v2, "replicated"

    .line 7677
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v3

    .line 8290
    iget-boolean v4, p5, Lcom/sleepycat/b/l;->j:Z

    .line 5270
    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;ZZ)V

    .line 9140
    :cond_0
    iget-object v2, p3, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v1

    .line 5282
    :goto_0
    if-eqz v2, :cond_9

    .line 9160
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->r:Z

    .line 5283
    if-nez v2, :cond_1

    .line 5284
    const-string v2, "transactional"

    .line 9511
    iget-boolean v3, p3, Lcom/sleepycat/b/c/i;->d:Z

    .line 10361
    iget-boolean v4, p5, Lcom/sleepycat/b/l;->d:Z

    .line 5284
    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;ZZ)V

    .line 5287
    const-string v2, "deferredWrite"

    .line 10553
    iget-boolean v3, p3, Lcom/sleepycat/b/c/i;->e:Z

    .line 11104
    iget-boolean v4, p5, Lcom/sleepycat/b/l;->g:Z

    .line 5287
    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;ZZ)V

    .line 13160
    :cond_1
    :goto_1
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->r:Z

    .line 5300
    if-nez v2, :cond_7

    .line 13668
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->p:Z

    .line 5308
    if-eqz v2, :cond_2

    .line 14630
    iget-object v0, p5, Lcom/sleepycat/b/l;->l:Ljava/util/Comparator;

    .line 14640
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->n:Z

    .line 5309
    invoke-virtual {p3, v0, v2}, Lcom/sleepycat/b/c/i;->b(Ljava/util/Comparator;Z)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 14895
    :cond_2
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->q:Z

    .line 5314
    if-eqz v2, :cond_3

    .line 15855
    iget-object v2, p5, Lcom/sleepycat/b/l;->m:Ljava/util/Comparator;

    .line 15866
    iget-boolean v3, p5, Lcom/sleepycat/b/l;->o:Z

    .line 5315
    invoke-virtual {p3, v2, v3}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 15956
    :cond_3
    iget-object v2, p5, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    .line 15993
    iget-boolean v3, p5, Lcom/sleepycat/b/l;->w:Z

    .line 5320
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 16282
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->i:Z

    .line 5327
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->l()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 5329
    if-eqz v2, :cond_a

    .line 5330
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->m()V

    move v0, v1

    .line 16449
    :cond_4
    :goto_2
    iget v2, p5, Lcom/sleepycat/b/l;->k:I

    .line 5340
    if-eqz v2, :cond_5

    .line 16726
    iget v3, p3, Lcom/sleepycat/b/c/i;->s:I

    .line 5340
    if-eq v2, v3, :cond_5

    .line 16730
    iput v2, p3, Lcom/sleepycat/b/c/i;->s:I

    move v0, v1

    .line 5347
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 17206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 5348
    if-eqz v0, :cond_6

    .line 17330
    iget-boolean v0, v1, Lcom/sleepycat/b/c/ad;->g:Z

    .line 5348
    if-nez v0, :cond_6

    .line 17379
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 5352
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/g/g;)V
    :try_end_0
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_0

    .line 18379
    iget-object v0, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 5362
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V

    .line 19203
    :cond_6
    iget-object v0, p5, Lcom/sleepycat/b/l;->s:Lcom/sleepycat/b/a;

    .line 19780
    iput-object v0, p3, Lcom/sleepycat/b/c/i;->u:Lcom/sleepycat/b/a;

    .line 20252
    iget-object v0, p5, Lcom/sleepycat/b/l;->t:Lcom/sleepycat/b/b;

    .line 20788
    iput-object v0, p3, Lcom/sleepycat/b/c/i;->v:Lcom/sleepycat/b/b;

    .line 174
    :cond_7
    invoke-direct {p0, p1, p5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/l;)V

    .line 175
    iput-object p3, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 176
    invoke-virtual {p3, p0}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/i;)V

    .line 177
    return-void

    :cond_8
    move v2, v0

    .line 9140
    goto/16 :goto_0

    .line 11361
    :cond_9
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->d:Z

    .line 11518
    iput-boolean v2, p3, Lcom/sleepycat/b/c/i;->d:Z

    .line 12104
    iget-boolean v2, p5, Lcom/sleepycat/b/l;->g:Z

    .line 12569
    iput-boolean v2, p3, Lcom/sleepycat/b/c/i;->e:Z

    goto :goto_1

    .line 5332
    :cond_a
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->n()V

    move v0, v1

    goto :goto_2

    .line 5354
    :catch_0
    move-exception v0

    .line 5355
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DatabaseConfig properties may not be updated when the database is already open; first close other open handles for this database."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2125
    sget-object v0, Lcom/sleepycat/b/i$2;->a:[I

    iget-object v1, p0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    invoke-virtual {v1}, Lcom/sleepycat/b/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2137
    sget-boolean v0, Lcom/sleepycat/b/i;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/b/i;->a:Lcom/sleepycat/b/j;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2129
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Database was closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " The Transaction used to open the Database was aborted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2135
    :pswitch_2
    iget-object v0, p0, Lcom/sleepycat/b/i;->m:Lcom/sleepycat/b/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/au;->b(Ljava/lang/String;)Lcom/sleepycat/b/au;

    move-result-object v0

    throw v0

    .line 2139
    :cond_0
    :pswitch_3
    return-void

    .line 2125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 27133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 471
    invoke-virtual {v0, p2, p1, p0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i;)Lcom/sleepycat/b/au;

    move-result-object v0

    .line 474
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/sleepycat/b/j;->d:Lcom/sleepycat/b/j;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sleepycat/b/i;->a(ZZLcom/sleepycat/b/j;Lcom/sleepycat/b/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    .locals 4

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/sleepycat/b/i;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2188
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2189
    if-eqz p3, :cond_0

    .line 2190
    const-string v1, " txnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47259
    iget-wide v2, p3, Lcom/sleepycat/b/bp;->c:J

    .line 2190
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2192
    :cond_0
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2193
    if-eqz p5, :cond_1

    .line 2194
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sleepycat/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :cond_1
    if-eqz p6, :cond_2

    .line 2197
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2199
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i;->k:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 48206
    iget-object v2, v2, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 2199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p1, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2202
    :cond_3
    return-void
.end method

.method b(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 1

    .prologue
    .line 883
    new-instance v0, Lcom/sleepycat/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)V

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 25174
    iget-object v0, v0, Lcom/sleepycat/b/x;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    .line 486
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sleepycat/b/j;->c:Lcom/sleepycat/b/j;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/i;->a(ZZLcom/sleepycat/b/j;Lcom/sleepycat/b/au;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 438
    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sleepycat/b/j;->b:Lcom/sleepycat/b/j;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/b/i;->a(ZZLcom/sleepycat/b/j;Lcom/sleepycat/b/au;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    iget-object v1, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 26206
    iget-object v1, v1, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 441
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 442
    throw v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 1954
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    .prologue
    .line 2120
    const-string v0, "Database was closed while still in use:"

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Lcom/sleepycat/b/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2122
    return-void
.end method

.method final f()V
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->e()V

    .line 2149
    iget-object v0, p0, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/x;->g()V

    .line 2150
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    invoke-interface {v0}, Lcom/sleepycat/b/be;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
