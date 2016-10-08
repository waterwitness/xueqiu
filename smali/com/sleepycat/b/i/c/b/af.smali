.class public final Lcom/sleepycat/b/i/c/b/af;
.super Ljava/lang/Object;
.source "ReplayStatDefinition.java"


# static fields
.field public static a:Lcom/sleepycat/b/p/ag;

.field public static b:Lcom/sleepycat/b/p/ag;

.field public static c:Lcom/sleepycat/b/p/ag;

.field public static d:Lcom/sleepycat/b/p/ag;

.field public static e:Lcom/sleepycat/b/p/ag;

.field public static f:Lcom/sleepycat/b/p/ag;

.field public static g:Lcom/sleepycat/b/p/ag;

.field public static h:Lcom/sleepycat/b/p/ag;

.field public static i:Lcom/sleepycat/b/p/ag;

.field public static j:Lcom/sleepycat/b/p/ag;

.field public static k:Lcom/sleepycat/b/p/ag;

.field public static l:Lcom/sleepycat/b/p/ag;

.field public static m:Lcom/sleepycat/b/p/ag;

.field public static n:Lcom/sleepycat/b/p/ag;

.field public static o:Lcom/sleepycat/b/p/ag;

.field public static p:Lcom/sleepycat/b/p/ag;

.field public static q:Lcom/sleepycat/b/p/ag;

.field public static final r:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommits"

    const-string v2, "Number of Commits replayed by the Replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->a:Lcom/sleepycat/b/p/ag;

    .line 26
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommitTimeouts"

    const-string v2, "Number of group commits that were initiated due to the group timeout interval(ReplicationConfig.REPLICA_GROUP_COMMIT_INTERVAL) being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->b:Lcom/sleepycat/b/p/ag;

    .line 33
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommitMaxExceeded"

    const-string v2, "Number of group commits that were initiated due to the max group size(ReplicationConfig.REPLICA_MAX_GROUP_COMMIT)  being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->c:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommitTxns"

    const-string v2, "Number of replay transaction commits that were part of a group commit operation."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->d:Lcom/sleepycat/b/p/ag;

    .line 45
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nGroupCommits"

    const-string v2, "Number of group commit operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->e:Lcom/sleepycat/b/p/ag;

    .line 49
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommitAcks"

    const-string v2, "Number of commits for which the Master requested an ack."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->f:Lcom/sleepycat/b/p/ag;

    .line 54
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommitSyncs"

    const-string v2, "Number of CommitSyncs used to satisfy ack requests. Note that user level commit sync requests may be optimized into CommitNoSync requests as part of a group commit."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->g:Lcom/sleepycat/b/p/ag;

    .line 62
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommitNoSyncs"

    const-string v2, "Number of CommitNoSyncs used to satisfy ack requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->h:Lcom/sleepycat/b/p/ag;

    .line 67
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommitWriteNoSyncs"

    const-string v2, "Number of CommitWriteNoSyncs used to satisfy ack requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->i:Lcom/sleepycat/b/p/ag;

    .line 72
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nAborts"

    const-string v2, "Number of Aborts replayed by the Replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->j:Lcom/sleepycat/b/p/ag;

    .line 76
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNs"

    const-string v2, "Number of LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->k:Lcom/sleepycat/b/p/ag;

    .line 79
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNameLNs"

    const-string v2, "Number of Name LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->l:Lcom/sleepycat/b/p/ag;

    .line 82
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nElapsedTxnTime"

    const-string v2, "The elapsed time in ms, spent replaying all transactions."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->m:Lcom/sleepycat/b/p/ag;

    .line 87
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMessageQueueOverflows"

    const-string v2, "Number of failed attempts to place an entry in the replica message queue due to the queue being full."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->n:Lcom/sleepycat/b/p/ag;

    .line 93
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "minCommitProcessingNanos"

    const-string v2, "Minimum nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->o:Lcom/sleepycat/b/p/ag;

    .line 97
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "maxCommitProcessingNanos"

    const-string v2, "Maximum nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->p:Lcom/sleepycat/b/p/ag;

    .line 101
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "totalCommitProcessingNanos"

    const-string v2, "Total nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->q:Lcom/sleepycat/b/p/ag;

    .line 105
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "totalCommitLagMs"

    const-string v2, "Sum of time periods, in msec, between when update operations commit on the master and then subsequently commit on the replica. This value is affected by any clock skew between the master and the replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/b/af;->r:Lcom/sleepycat/b/p/ag;

    return-void
.end method
