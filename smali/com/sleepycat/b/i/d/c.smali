.class public final Lcom/sleepycat/b/i/d/c;
.super Lcom/sleepycat/b/i/d/e;
.source "LeaveGroupEvent.java"


# instance fields
.field private final b:J

.field private final c:Lcom/sleepycat/b/i/d/d;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/sleepycat/b/i/d/f;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " left at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1082
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/b/i/d/c;->b:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/sleepycat/b/i/d/c;->c:Lcom/sleepycat/b/i/d/d;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
