.class public final Lcom/sleepycat/b/i/e/r;
.super Ljava/lang/Object;
.source "MatchpointSearchResults.java"


# instance fields
.field public final a:Lcom/sleepycat/b/p/aq;

.field public final b:J

.field public final c:Lcom/sleepycat/b/p/au;

.field public final d:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/p/aq;JLcom/sleepycat/b/p/au;J)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/sleepycat/b/i/e/r;->a:Lcom/sleepycat/b/p/aq;

    .line 200
    iput-wide p2, p0, Lcom/sleepycat/b/i/e/r;->b:J

    .line 201
    iput-object p4, p0, Lcom/sleepycat/b/i/e/r;->c:Lcom/sleepycat/b/p/au;

    .line 202
    iput-wide p5, p0, Lcom/sleepycat/b/i/e/r;->d:J

    .line 203
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/r;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/r;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vlsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/r;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/r;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
