.class public final Lcom/sleepycat/b/i/c/b/n;
.super Ljava/lang/Object;
.source "FeederManagerStatDefinition.java"


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

    const-string v1, "nFeedersCreated"

    const-string v2, "Number of Feeder threads since this node was started."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/n;->a:Lcom/sleepycat/b/p/ag;

    .line 27
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nFeedersShutdown"

    const-string v2, "Number of Feeder threads that were shut down, either because this node, or the Replica terminated the connection."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/n;->b:Lcom/sleepycat/b/p/ag;

    .line 33
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMaxReplicaLag"

    const-string v2, "The maximum number of VLSNs by which a replica is lagging."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/n;->c:Lcom/sleepycat/b/p/ag;

    .line 38
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMaxReplicaLagName"

    const-string v2, "The name of the replica with the maximal lag."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/n;->d:Lcom/sleepycat/b/p/ag;

    return-void
.end method
