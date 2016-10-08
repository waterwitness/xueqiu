.class public final Lcom/sleepycat/b/i/r;
.super Lcom/sleepycat/b/au;
.source "ReplicaConsistencyException.java"


# instance fields
.field final a:Lcom/sleepycat/b/bc;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/bc;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to achieve consistency despite waiting for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2}, Lcom/sleepycat/b/bc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, " The node is not currently in contact with a master."

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v1, v0, v4}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iput-object p1, p0, Lcom/sleepycat/b/i/r;->a:Lcom/sleepycat/b/bc;

    .line 72
    return-void

    .line 64
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iput-object v1, p0, Lcom/sleepycat/b/i/r;->a:Lcom/sleepycat/b/bc;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/r;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 91
    iget-object v0, p2, Lcom/sleepycat/b/i/r;->a:Lcom/sleepycat/b/bc;

    iput-object v0, p0, Lcom/sleepycat/b/i/r;->a:Lcom/sleepycat/b/bc;

    .line 92
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/sleepycat/b/i/r;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/r;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/r;)V

    return-object v0
.end method
