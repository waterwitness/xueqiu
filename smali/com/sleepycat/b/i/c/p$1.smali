.class final Lcom/sleepycat/b/i/c/p$1;
.super Lcom/sleepycat/b/i/c/s;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/i/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/p;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;)V
    .locals 1

    .prologue
    .line 570
    iput-object p1, p0, Lcom/sleepycat/b/i/c/p$1;->a:Lcom/sleepycat/b/i/c/p;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/i/c/s;-><init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;B)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p$1;->d:Lcom/sleepycat/b/n/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p$1;->c:Lcom/sleepycat/b/c/i;

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/i/c/t;

    move-result-object v1

    .line 1760
    iget-object v0, v1, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 575
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->c:Lcom/sleepycat/b/c/i;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/p$1;->d:Lcom/sleepycat/b/n/z;

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/i/c/p;->a(Ljava/lang/String;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 2208
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 3190
    iget-object v4, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 4190
    iget-object v5, v2, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 2209
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/i/c/b/x;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2212
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2213
    new-instance v1, Lcom/sleepycat/b/i/c/v;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New or moved node:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4197
    iget-object v4, v2, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 5087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", is configured with the socket address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  It conflicts with the socket already used by the member: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5197
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 6087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/v;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6334
    :cond_1
    iget v0, v1, Lcom/sleepycat/b/i/c/t;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/sleepycat/b/i/c/t;->d:I

    .line 578
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 7190
    iget-object v2, v2, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 578
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 8190
    iget-object v2, v2, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 8362
    iget v3, v1, Lcom/sleepycat/b/i/c/t;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/sleepycat/b/i/c/t;->e:I

    .line 579
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/b/x;->a(I)V

    .line 581
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->d:Lcom/sleepycat/b/n/z;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/p$1;->c:Lcom/sleepycat/b/c/i;

    invoke-static {v2, v1, v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/c/i;)V

    .line 582
    iget-object v1, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 9182
    iput v0, v1, Lcom/sleepycat/b/i/c/am;->h:I

    .line 583
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p$1;->d:Lcom/sleepycat/b/n/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/p$1;->c:Lcom/sleepycat/b/c/i;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/b/c/i;)V

    .line 584
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 9190
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 10115
    const/4 v1, -0x1

    iput v1, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 589
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p$1;->b:Lcom/sleepycat/b/i/c/am;

    .line 10190
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 11115
    const/4 v1, -0x1

    iput v1, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 594
    return-void
.end method
