.class public final Lcom/sleepycat/b/a/e;
.super Ljava/lang/Object;
.source "CleanerStatDefinition.java"


# static fields
.field public static final A:Lcom/sleepycat/b/p/ag;

.field public static final B:Lcom/sleepycat/b/p/ag;

.field public static final C:Lcom/sleepycat/b/p/ag;

.field public static final D:Lcom/sleepycat/b/p/ag;

.field public static final E:Lcom/sleepycat/b/p/ag;

.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;

.field public static final h:Lcom/sleepycat/b/p/ag;

.field public static final i:Lcom/sleepycat/b/p/ag;

.field public static final j:Lcom/sleepycat/b/p/ag;

.field public static final k:Lcom/sleepycat/b/p/ag;

.field public static final l:Lcom/sleepycat/b/p/ag;

.field public static final m:Lcom/sleepycat/b/p/ag;

.field public static final n:Lcom/sleepycat/b/p/ag;

.field public static final o:Lcom/sleepycat/b/p/ag;

.field public static final p:Lcom/sleepycat/b/p/ag;

.field public static final q:Lcom/sleepycat/b/p/ag;

.field public static final r:Lcom/sleepycat/b/p/ag;

.field public static final s:Lcom/sleepycat/b/p/ag;

.field public static final t:Lcom/sleepycat/b/p/ag;

.field public static final u:Lcom/sleepycat/b/p/ag;

.field public static final v:Lcom/sleepycat/b/p/ag;

.field public static final w:Lcom/sleepycat/b/p/ag;

.field public static final x:Lcom/sleepycat/b/p/ag;

.field public static final y:Lcom/sleepycat/b/p/ag;

.field public static final z:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cleanerBackLog"

    const-string v2, "Number of files to be cleaned to reach the target utilization."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->a:Lcom/sleepycat/b/p/ag;

    .line 34
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "fileDeletionBacklog"

    const-string v2, "Number of files that are ready to be deleted."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->b:Lcom/sleepycat/b/p/ag;

    .line 39
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCleanerRuns"

    const-string v2, "Number of cleaner runs, including probe runs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->c:Lcom/sleepycat/b/p/ag;

    .line 43
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCleanerProbeRuns"

    const-string v2, "Number of cleaner runs for probing utilization."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->d:Lcom/sleepycat/b/p/ag;

    .line 47
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCleanerDeletions"

    const-string v2, "Number of cleaner file deletions this session."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->e:Lcom/sleepycat/b/p/ag;

    .line 51
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "pendingLNQueueSize"

    const-string v2, "Number of LNs pending because they were locked and could not be migrated."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->f:Lcom/sleepycat/b/p/ag;

    .line 57
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINsObsolete"

    const-string v2, "Accumulated number of INs obsolete."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->g:Lcom/sleepycat/b/p/ag;

    .line 61
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINsCleaned"

    const-string v2, "Accumulated number of INs cleaned."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->h:Lcom/sleepycat/b/p/ag;

    .line 65
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINsDead"

    const-string v2, "Accumulated number of INs that were not found in the tree anymore (deleted)."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->i:Lcom/sleepycat/b/p/ag;

    .line 70
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINsMigrated"

    const-string v2, "Accumulated number of INs migrated."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->j:Lcom/sleepycat/b/p/ag;

    .line 74
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINDeltasObsolete"

    const-string v2, "Accumulated number of BINDeltas obsolete."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->k:Lcom/sleepycat/b/p/ag;

    .line 78
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINDeltasCleaned"

    const-string v2, "Accumulated number of BINDeltas cleaned."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->l:Lcom/sleepycat/b/p/ag;

    .line 82
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINDeltasDead"

    const-string v2, "Accumulated number of BINDeltas that were not found in the tree anymore (deleted)."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->m:Lcom/sleepycat/b/p/ag;

    .line 87
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINDeltasMigrated"

    const-string v2, "Accumulated number of BINDeltas migrated."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->n:Lcom/sleepycat/b/p/ag;

    .line 91
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsObsolete"

    const-string v2, "Accumulated number of LNs obsolete."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->o:Lcom/sleepycat/b/p/ag;

    .line 95
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsCleaned"

    const-string v2, "Accumulated number of LNs cleaned."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->p:Lcom/sleepycat/b/p/ag;

    .line 99
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsDead"

    const-string v2, "Accumulated number of LNs that were not found in the tree anymore (deleted)."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->q:Lcom/sleepycat/b/p/ag;

    .line 104
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsLocked"

    const-string v2, "Accumulated number of LNs encountered that were locked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->r:Lcom/sleepycat/b/p/ag;

    .line 109
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsMigrated"

    const-string v2, "Accumulated number of LNs that were marked for migration during cleaning."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->s:Lcom/sleepycat/b/p/ag;

    .line 114
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsMarked"

    const-string v2, "Accumulated number of LNs that were marked for migration during cleaning."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->t:Lcom/sleepycat/b/p/ag;

    .line 119
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNQueueHits"

    const-string v2, "Accumulated number of LNs processed without a tree lookup."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->u:Lcom/sleepycat/b/p/ag;

    .line 124
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nPendingLNsProcessed"

    const-string v2, "Accumulated number of LNs processed because they were previously locked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->v:Lcom/sleepycat/b/p/ag;

    .line 129
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nMarkLNsProcessed"

    const-string v2, "Accumulated number of LNs processed because they were previously marked for migration."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->w:Lcom/sleepycat/b/p/ag;

    .line 134
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nToBeCleanedLNsProcessed"

    const-string v2, "Accumulated number of LNs processed because they are soon to be cleaned."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->x:Lcom/sleepycat/b/p/ag;

    .line 139
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nClusterLNsProcessed"

    const-string v2, "Accumulated number of LNs processed because they qualify for clustering."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->y:Lcom/sleepycat/b/p/ag;

    .line 144
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nPendingLNsLocked"

    const-string v2, "Accumulated number of pending LNs that could not be locked for migration because of a long duration application lock."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->z:Lcom/sleepycat/b/p/ag;

    .line 150
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCleanerEntriesRead"

    const-string v2, "Accumulated number of log entries read by the cleaner."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->A:Lcom/sleepycat/b/p/ag;

    .line 155
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRepeatIteratorReads"

    const-string v2, "Number of attempts to read a log entry larger than the read buffer size during which the log buffer couldn\'t be grown enough to accommodate the object."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/a/e;->B:Lcom/sleepycat/b/p/ag;

    .line 162
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "totalLogSize"

    const-string v2, "Approximation of the total log size in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->C:Lcom/sleepycat/b/p/ag;

    .line 167
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lnSizeCorrectionFactor"

    const-string v2, "The factor used to correct average LN size, for LNs whose obsolete size is not determined. Used to calculate corrected utilization."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->D:Lcom/sleepycat/b/p/ag;

    .line 174
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lastKnownUtilization"

    const-string v2, "The last known log utilization as a percentage. This statistic provides a cheap way of checking the log utilization without having to run the DbSpace utility."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/e;->E:Lcom/sleepycat/b/p/ag;

    return-void
.end method
