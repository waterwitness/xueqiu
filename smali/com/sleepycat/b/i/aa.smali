.class public final Lcom/sleepycat/b/i/aa;
.super Lcom/sleepycat/b/i/y;
.source "RollbackProhibitedException.java"


# instance fields
.field private final c:Lcom/sleepycat/b/i/e/q;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;ILcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/e/q;)V
    .locals 8

    .prologue
    .line 80
    sget-object v0, Lcom/sleepycat/b/c/ac;->u:Lcom/sleepycat/b/c/ac;

    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/aj;->B()Ljava/lang/String;

    move-result-object v1

    .line 1142
    iget-wide v2, p4, Lcom/sleepycat/b/i/e/q;->a:J

    .line 1091
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    .line 1092
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    .line 1093
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Node "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " must rollback"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/b/i/e/q;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " in order to rejoin the replication group, but the transaction rollback limit of "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " prohibits this. Either increase the property je.rep.txnRollbackLimit to a value larger than "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " to permit automatic rollback, or manually remove the problematic transactions. To do a manual removal, truncate the log to file "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/m;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", offset 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vlsn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using the directions in com.sleepycat.je.util.DbTruncateLog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/i/y;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 83
    iput-object p4, p0, Lcom/sleepycat/b/i/aa;->c:Lcom/sleepycat/b/i/e/q;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/aa;)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/b/i/aa;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/b/i/y;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/y;)V

    .line 116
    iget-object v0, p2, Lcom/sleepycat/b/i/aa;->c:Lcom/sleepycat/b/i/e/q;

    iput-object v0, p0, Lcom/sleepycat/b/i/aa;->c:Lcom/sleepycat/b/i/e/q;

    .line 117
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 62
    .line 2125
    new-instance v0, Lcom/sleepycat/b/i/aa;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/aa;)V

    .line 62
    return-object v0
.end method
