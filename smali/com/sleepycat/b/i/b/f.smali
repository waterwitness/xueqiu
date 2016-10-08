.class final Lcom/sleepycat/b/i/b/f;
.super Lcom/sleepycat/b/p/aj;
.source "Elections.java"


# instance fields
.field a:Lcom/sleepycat/b/i/b/v;

.field b:Lcom/sleepycat/b/i/b/p;

.field final synthetic c:Lcom/sleepycat/b/i/b/d;

.field private final d:Lcom/sleepycat/b/i/p;

.field private final e:Lcom/sleepycat/b/i/b/i;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/i;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElectionThread_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 685
    iput-object p2, p0, Lcom/sleepycat/b/i/b/f;->d:Lcom/sleepycat/b/i/p;

    .line 686
    iput-object p3, p0, Lcom/sleepycat/b/i/b/f;->e:Lcom/sleepycat/b/i/b/i;

    .line 687
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/i;Lcom/sleepycat/b/c/ad;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 668
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/i/b/f;-><init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/i;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->h(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/e;

    move-result-object v0

    .line 2567
    iget-object v0, v0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    .line 744
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->e(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/x;

    move-result-object v0

    .line 3183
    iget v0, v0, Lcom/sleepycat/b/i/c/ap;->m:I

    .line 758
    return v0
.end method

.method public final run()V
    .locals 8

    .prologue
    const v7, 0x7fffffff

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Started election thread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->c(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/m;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->d:Lcom/sleepycat/b/i/p;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->e:Lcom/sleepycat/b/i/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/u;)Lcom/sleepycat/b/i/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/f;->a:Lcom/sleepycat/b/i/b/v;

    .line 701
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->d(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->f()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->a:Lcom/sleepycat/b/i/b/v;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->e(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/x;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v3}, Lcom/sleepycat/b/i/b/d;->f(Lcom/sleepycat/b/i/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v4}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v5}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v5

    .line 1520
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 701
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;Lcom/sleepycat/b/i/b/v;Lcom/sleepycat/b/i/b/x;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/aj;Ljava/util/logging/Formatter;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/b/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Election thread exited. Group master: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 721
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 727
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/b/i/b/f;->b:Lcom/sleepycat/b/i/b/p;

    .line 710
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exiting election after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/b/f;->e:Lcom/sleepycat/b/i/b/i;

    .line 1659
    iget v6, v5, Lcom/sleepycat/b/i/b/i;->a:I

    iget v5, v5, Lcom/sleepycat/b/i/b/i;->b:I

    sub-int v5, v6, v5

    .line 710
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Election thread exited. Group master: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 721
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 715
    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Election thread interrupted"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Election thread exited. Group master: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 721
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 717
    :catch_2
    move-exception v0

    .line 2115
    :try_start_3
    iput-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 721
    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Election thread exited. Group master: "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 721
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 720
    throw v0

    :catchall_0
    move-exception v0

    .line 721
    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/f;->D:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "Election thread exited. Group master: "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 2462
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 721
    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v1

    goto :goto_5

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method
