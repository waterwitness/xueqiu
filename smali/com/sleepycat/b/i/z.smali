.class public final Lcom/sleepycat/b/i/z;
.super Lcom/sleepycat/b/i/y;
.source "RollbackException.java"


# instance fields
.field private final c:Lcom/sleepycat/b/i/e/q;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/e/q;)V
    .locals 6

    .prologue
    .line 68
    sget-object v0, Lcom/sleepycat/b/c/ac;->e:Lcom/sleepycat/b/c/ac;

    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/aj;->B()Ljava/lang/String;

    move-result-object v1

    .line 1142
    iget-wide v2, p3, Lcom/sleepycat/b/i/e/q;->a:J

    .line 1082
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Node "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " must rollback"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sleepycat/b/i/e/q;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in order to rejoin the replication group. All existing ReplicatedEnvironment handles must be closed and reinstantiated.  Log files were truncated to file 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", offset 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vlsn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/i/y;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 72
    iput-object p3, p0, Lcom/sleepycat/b/i/z;->c:Lcom/sleepycat/b/i/e/q;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/z;)V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sleepycat/b/i/z;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/b/i/y;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/y;)V

    .line 133
    iget-object v0, p2, Lcom/sleepycat/b/i/z;->c:Lcom/sleepycat/b/i/e/q;

    iput-object v0, p0, Lcom/sleepycat/b/i/z;->c:Lcom/sleepycat/b/i/e/q;

    .line 134
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 56
    .line 2142
    new-instance v0, Lcom/sleepycat/b/i/z;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/z;)V

    .line 56
    return-object v0
.end method
