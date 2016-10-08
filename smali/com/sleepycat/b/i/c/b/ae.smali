.class public final Lcom/sleepycat/b/i/c/b/ae;
.super Ljava/lang/Object;
.source "Replay.java"


# instance fields
.field final a:Lcom/sleepycat/b/p/au;

.field final b:J


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/p/au;J)V
    .locals 0

    .prologue
    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ae;->a:Lcom/sleepycat/b/p/au;

    .line 1339
    iput-wide p2, p0, Lcom/sleepycat/b/i/c/b/ae;->b:J

    .line 1340
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/p/au;JB)V
    .locals 0

    .prologue
    .line 1333
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/i/c/b/ae;-><init>(Lcom/sleepycat/b/p/au;J)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " VLSN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ae;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " masterTxnEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ae;->b:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
