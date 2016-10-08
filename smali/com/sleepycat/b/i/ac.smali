.class public abstract Lcom/sleepycat/b/i/ac;
.super Lcom/sleepycat/b/au;
.source "StateChangeException.java"


# instance fields
.field private final a:Lcom/sleepycat/b/i/ab;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V
    .locals 6

    .prologue
    .line 36
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 1059
    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    .line 1060
    :goto_1
    if-eqz p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem closing transaction "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The current state is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2055
    iget-object v1, p2, Lcom/sleepycat/b/i/ab;->a:Lcom/sleepycat/b/i/u;

    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The node transitioned to this state at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    .line 2065
    iget-wide v4, p2, Lcom/sleepycat/b/i/ab;->b:J

    .line 1060
    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iput-object p2, p0, Lcom/sleepycat/b/i/ac;->a:Lcom/sleepycat/b/i/ab;

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 1169
    :cond_1
    iget-wide v0, p1, Lcom/sleepycat/b/n/q;->k:J

    goto :goto_1

    .line 1060
    :cond_2
    const-string v0, "Node state inconsistent with operation"

    goto :goto_2
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/ac;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 76
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/sleepycat/b/i/ac;->a:Lcom/sleepycat/b/i/ab;

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/i/ac;->a:Lcom/sleepycat/b/i/ab;

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
