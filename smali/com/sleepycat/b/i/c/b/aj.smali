.class public final Lcom/sleepycat/b/i/c/b/aj;
.super Ljava/lang/Exception;
.source "Replica.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/x;

.field final b:Lcom/sleepycat/b/p/au;

.field final c:Lcom/sleepycat/b/p/au;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 1536
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1538
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/aj;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 1539
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/aj;->b:Lcom/sleepycat/b/p/au;

    .line 1540
    iput-object p3, p0, Lcom/sleepycat/b/i/c/b/aj;->c:Lcom/sleepycat/b/p/au;

    .line 1541
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Need election preceding hard recovery to verify master:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aj;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last txn end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aj;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchpoint VLSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aj;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
