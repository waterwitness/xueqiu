.class public final Lcom/sleepycat/b/i/c/b/aq;
.super Ljava/lang/Object;
.source "ReplicaStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;

.field public static d:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLagConsistencyWaits"

    const-string v2, "Number of Transaction waits while the replica catches up in order to meet a transaction\'s consistency requirement."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/aq;->a:Lcom/sleepycat/b/p/ag;

    .line 28
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLagConsistencyWaitMS"

    const-string v2, "Number of msec waited while the replica catches up in order to meet a transaction\'s consistency requirement."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/aq;->b:Lcom/sleepycat/b/p/ag;

    .line 34
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nVLSNConsistencyWaits"

    const-string v2, "Number of Transaction waits while the replica catches up in order to receive a VLSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/aq;->c:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nVLSNConsistencyWaitMS"

    const-string v2, "Number of msec waited while the replica catches up in order to receive a VLSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/aq;->d:Lcom/sleepycat/b/p/ag;

    return-void
.end method
