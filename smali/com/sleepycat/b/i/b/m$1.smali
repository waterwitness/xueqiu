.class final Lcom/sleepycat/b/i/b/m$1;
.super Lcom/sleepycat/b/i/b/ap;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/b/m;->a(Lcom/sleepycat/b/i/b/s;Ljava/util/List;)Lcom/sleepycat/b/i/b/q;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/sleepycat/b/i/b/q;

.field final synthetic d:Lcom/sleepycat/b/i/b/m;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/m;Ljava/util/concurrent/Future;Ljava/util/List;Lcom/sleepycat/b/i/b/q;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iput-object p2, p0, Lcom/sleepycat/b/i/b/m$1;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/sleepycat/b/i/b/m$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    invoke-direct {p0}, Lcom/sleepycat/b/i/b/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sleepycat/b/i/b/m$1;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 177
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 1225
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 1520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 178
    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v3, v3, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

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

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 2287
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 185
    iget-object v2, v2, Lcom/sleepycat/b/i/b/x;->f:Lcom/sleepycat/b/i/c/av;

    if-ne v1, v2, :cond_2

    .line 192
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$1;->a:Ljava/util/concurrent/Future;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$1;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/List;)V

    .line 195
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    .line 3048
    iget-object v1, v1, Lcom/sleepycat/b/i/b/m;->c:Lcom/sleepycat/b/p/o;

    .line 195
    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V

    .line 196
    new-instance v1, Lcom/sleepycat/b/i/b/o;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/b/o;-><init>(Ljava/net/InetSocketAddress;)V

    throw v1

    .line 197
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 3287
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 197
    iget-object v2, v2, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    if-ne v1, v2, :cond_4

    .line 199
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    iget-object v2, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/q;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/b/ac;

    .line 4278
    iget-object v1, v0, Lcom/sleepycat/b/i/b/ac;->a:Lcom/sleepycat/b/i/b/s;

    .line 203
    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/q;->c:Lcom/sleepycat/b/i/b/s;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/q;->c:Lcom/sleepycat/b/i/b/s;

    invoke-interface {v1, v2}, Lcom/sleepycat/b/i/b/s;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 207
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    iput-object v1, v2, Lcom/sleepycat/b/i/b/q;->c:Lcom/sleepycat/b/i/b/s;

    .line 208
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->c:Lcom/sleepycat/b/i/b/q;

    .line 4282
    iget-object v0, v0, Lcom/sleepycat/b/i/b/ac;->b:Lcom/sleepycat/b/i/b/ai;

    .line 208
    iput-object v0, v1, Lcom/sleepycat/b/i/b/q;->d:Lcom/sleepycat/b/i/b/ai;

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 4287
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 210
    iget-object v2, v2, Lcom/sleepycat/b/i/b/x;->n:Lcom/sleepycat/b/i/c/av;

    if-ne v1, v2, :cond_5

    .line 212
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/ax;

    .line 215
    iget-object v1, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v1, v1, Lcom/sleepycat/b/i/b/m;->e:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/m;->a:Lcom/sleepycat/b/i/b/d;

    .line 5225
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 215
    iget-object v3, p0, Lcom/sleepycat/b/i/b/m$1;->d:Lcom/sleepycat/b/i/b/m;

    iget-object v3, v3, Lcom/sleepycat/b/i/b/m;->f:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Election protocol error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5612
    iget-object v0, v0, Lcom/sleepycat/b/i/c/ax;->a:Ljava/lang/String;

    .line 215
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
