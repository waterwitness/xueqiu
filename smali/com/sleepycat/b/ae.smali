.class public final Lcom/sleepycat/b/ae;
.super Ljava/lang/Object;
.source "EnvironmentStats.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lcom/sleepycat/b/p/ai;

.field public b:Lcom/sleepycat/b/p/ai;

.field public c:Lcom/sleepycat/b/p/ai;

.field public d:Lcom/sleepycat/b/p/ai;

.field public e:Lcom/sleepycat/b/p/ai;

.field public f:Lcom/sleepycat/b/p/ai;

.field public g:Lcom/sleepycat/b/p/ai;

.field public h:Lcom/sleepycat/b/p/ai;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Node Compression"

    const-string v2, "Removal and compression of internal btree nodes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    .line 196
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cache"

    const-string v2, "Current size, allocations, and eviction activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    .line 198
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Checkpoints"

    const-string v2, "Frequency and extent of checkpointing activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    .line 200
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cleaning"

    const-string v2, "Frequency and extent of log file cleaning activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    .line 202
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "I/O"

    const-string v2, "Log file opens, fsyncs, reads, writes, cache misses."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    .line 204
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Locks"

    const-string v2, "Locks held by data operations, latching contention on lock table."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    .line 206
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Environment"

    const-string v2, "General environment wide statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    .line 208
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Op"

    const-string v2, "Thoughput statistics for JE calls."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/ae;->h:Lcom/sleepycat/b/p/ai;

    .line 211
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    .line 2161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    .line 3161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    .line 4161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    .line 5161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    .line 6161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    .line 7161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    .line 8161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, p0, Lcom/sleepycat/b/ae;->h:Lcom/sleepycat/b/p/ai;

    .line 9161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/sleepycat/b/ae;->h:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/p/ai;)V
    .locals 2

    .prologue
    .line 246
    .line 10161
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 246
    const-string v1, "Node Compression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    .line 262
    :goto_0
    return-void

    .line 11161
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 248
    const-string v1, "Cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iput-object p1, p0, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 12161
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 250
    const-string v1, "Checkpoints"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iput-object p1, p0, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 13161
    :cond_2
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 252
    const-string v1, "Cleaning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    iput-object p1, p0, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 14161
    :cond_3
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 254
    const-string v1, "I/O"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iput-object p1, p0, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 15161
    :cond_4
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 256
    const-string v1, "Locks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 257
    iput-object p1, p0, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 16161
    :cond_5
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 258
    const-string v1, "Environment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 259
    iput-object p1, p0, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 17161
    :cond_6
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 260
    const-string v1, "Op"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    iput-object p1, p0, Lcom/sleepycat/b/ae;->h:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 264
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stat group name in setStatGroup "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18161
    iget-object v1, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1621
    iget-object v1, p0, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    iget-object v1, p0, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    iget-object v1, p0, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    iget-object v1, p0, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    iget-object v1, p0, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    iget-object v1, p0, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    iget-object v1, p0, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
