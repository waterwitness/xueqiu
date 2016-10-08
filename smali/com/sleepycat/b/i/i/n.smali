.class final Lcom/sleepycat/b/i/i/n;
.super Lcom/sleepycat/a/a/k;
.source "VLSNRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Lcom/sleepycat/b/i/i/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 293
    .line 6297
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->i()I

    move-result v0

    .line 6298
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6299
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t expect version diff on_disk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 6306
    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/i/m;

    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    new-instance v2, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/sleepycat/b/p/au;-><init>(J)V

    new-instance v3, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/b/p/au;-><init>(J)V

    new-instance v4, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/sleepycat/b/p/au;-><init>(J)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/i/m;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;B)V

    .line 293
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 293
    check-cast p1, Lcom/sleepycat/b/i/i/m;

    .line 1318
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->c(I)Lcom/sleepycat/a/a/m;

    .line 2110
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 1319
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 3114
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 4101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 1320
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 4118
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 5101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 1321
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 5122
    iget-object v0, p1, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;

    .line 6101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 1322
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 293
    return-void
.end method
