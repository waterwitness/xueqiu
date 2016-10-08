.class final Lcom/sleepycat/b/i/b/m$2;
.super Lcom/sleepycat/b/i/b/ap;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/p;Ljava/util/List;)Lcom/sleepycat/b/i/b/r;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/sleepycat/b/i/b/r;

.field final synthetic d:Lcom/sleepycat/b/i/p;

.field final synthetic e:Lcom/sleepycat/b/i/b/m;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/m;Ljava/util/concurrent/Future;Ljava/util/List;Lcom/sleepycat/b/i/b/r;Lcom/sleepycat/b/i/p;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iput-object p2, p0, Lcom/sleepycat/b/i/b/m$2;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/sleepycat/b/i/b/m$2;->c:Lcom/sleepycat/b/i/b/r;

    iput-object p5, p0, Lcom/sleepycat/b/i/b/m$2;->d:Lcom/sleepycat/b/i/p;

    invoke-direct {p0}, Lcom/sleepycat/b/i/b/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m$2;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 296
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    .line 298
    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 1225
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 1520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 299
    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iget-object v3, v3, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No response from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 2287
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 308
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v3

    .line 309
    iget-object v4, v2, Lcom/sleepycat/b/i/b/x;->f:Lcom/sleepycat/b/i/c/av;

    if-ne v3, v4, :cond_2

    .line 310
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$2;->a:Ljava/util/concurrent/Future;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/List;)V

    .line 313
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    .line 3048
    iget-object v1, v1, Lcom/sleepycat/b/i/b/m;->d:Lcom/sleepycat/b/p/o;

    .line 313
    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V

    .line 314
    new-instance v1, Lcom/sleepycat/b/i/b/o;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/b/o;-><init>(Ljava/net/InetSocketAddress;)V

    throw v1

    .line 315
    :cond_2
    iget-object v4, v2, Lcom/sleepycat/b/i/b/x;->h:Lcom/sleepycat/b/i/c/av;

    if-ne v3, v4, :cond_3

    .line 316
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->c:Lcom/sleepycat/b/i/b/r;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/r;->a:Ljava/util/Set;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m$2;->e:Lcom/sleepycat/b/i/b/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->d:Lcom/sleepycat/b/i/p;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->c:Lcom/sleepycat/b/i/b/r;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/r;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/b/m;Lcom/sleepycat/b/i/p;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$2;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/List;)V

    .line 322
    new-instance v0, Lcom/sleepycat/b/i/b/n;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/n;-><init>()V

    throw v0

    .line 324
    :cond_3
    iget-object v0, v2, Lcom/sleepycat/b/i/b/x;->n:Lcom/sleepycat/b/i/c/av;

    if-ne v3, v0, :cond_4

    move-object v0, v1

    .line 325
    check-cast v0, Lcom/sleepycat/b/i/c/ax;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Protocol error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3612
    iget-object v0, v0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 330
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
