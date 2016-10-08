.class public final Lcom/sleepycat/b/q;
.super Ljava/lang/Object;
.source "DbInternal.java"


# direct methods
.method public static a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/sleepycat/b/af;
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/sleepycat/b/af;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/af;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/sleepycat/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V

    .line 1384
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/e;->d:Z

    .line 158
    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/n/q;
    .locals 4

    .prologue
    .line 303
    .line 1853
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    if-nez v0, :cond_0

    .line 1854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/bp;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed and is no longer usable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 303
    return-object v0
.end method
