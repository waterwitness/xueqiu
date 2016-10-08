.class public final Lcom/sleepycat/b/i/c/an;
.super Ljava/lang/Object;
.source "RepParams.java"


# static fields
.field public static final A:Lcom/sleepycat/b/b/e;

.field public static final B:Lcom/sleepycat/b/b/e;

.field public static final C:Lcom/sleepycat/b/b/e;

.field public static final D:Lcom/sleepycat/b/b/e;

.field public static final E:Lcom/sleepycat/b/b/e;

.field public static final F:Lcom/sleepycat/b/b/c;

.field public static final G:Lcom/sleepycat/b/b/c;

.field public static final H:Lcom/sleepycat/b/b/c;

.field public static final I:Lcom/sleepycat/b/b/c;

.field public static final J:Lcom/sleepycat/b/b/e;

.field public static final K:Lcom/sleepycat/b/b/c;

.field public static final L:Lcom/sleepycat/b/b/c;

.field public static final M:Lcom/sleepycat/b/b/c;

.field public static final N:Lcom/sleepycat/b/b/c;

.field public static final O:Lcom/sleepycat/b/b/c;

.field public static final P:Lcom/sleepycat/b/b/e;

.field public static final Q:Lcom/sleepycat/b/b/c;

.field public static final R:Lcom/sleepycat/b/b/e;

.field public static final S:Lcom/sleepycat/b/b/c;

.field public static final T:Lcom/sleepycat/b/b/e;

.field public static final U:Lcom/sleepycat/b/b/c;

.field public static final V:Lcom/sleepycat/b/b/c;

.field public static final W:Lcom/sleepycat/b/b/c;

.field public static final X:Lcom/sleepycat/b/b/a;

.field public static final Y:Lcom/sleepycat/b/b/c;

.field public static final Z:Lcom/sleepycat/b/b/e;

.field public static final a:Lcom/sleepycat/b/b/b;

.field public static final aa:Lcom/sleepycat/b/b/a;

.field public static final ab:Lcom/sleepycat/b/b/c;

.field public static final ac:Lcom/sleepycat/b/b/a;

.field public static final ad:Lcom/sleepycat/b/b/a;

.field public static final ae:Lcom/sleepycat/b/b/a;

.field public static final af:Lcom/sleepycat/b/b/a;

.field public static final ag:Lcom/sleepycat/b/b/e;

.field public static final ah:Lcom/sleepycat/b/b/a;

.field public static final b:Lcom/sleepycat/b/b/c;

.field public static final c:Lcom/sleepycat/b/b/e;

.field public static final d:Lcom/sleepycat/b/b/e;

.field public static final e:Lcom/sleepycat/b/b/e;

.field public static final f:Lcom/sleepycat/b/b/c;

.field public static final g:Lcom/sleepycat/b/b/c;

.field public static final h:Lcom/sleepycat/b/b/c;

.field public static final i:Lcom/sleepycat/b/b/c;

.field public static final j:Lcom/sleepycat/b/b/c;

.field public static final k:Lcom/sleepycat/b/b/c;

.field public static final l:Lcom/sleepycat/b/b/f;

.field public static final m:Lcom/sleepycat/b/b/b;

.field public static final n:Lcom/sleepycat/b/b/e;

.field public static final o:Lcom/sleepycat/b/b/b;

.field public static final p:Lcom/sleepycat/b/b/b;

.field public static final q:Lcom/sleepycat/b/i/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/c/f",
            "<",
            "Lcom/sleepycat/b/i/o;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lcom/sleepycat/b/b/e;

.field public static final s:Lcom/sleepycat/b/b/a;

.field public static final t:Lcom/sleepycat/b/b/a;

.field public static final u:Lcom/sleepycat/b/b/e;

.field public static final v:Lcom/sleepycat/b/b/a;

.field public static final w:Lcom/sleepycat/b/b/c;

.field public static final x:Lcom/sleepycat/b/b/b;

.field public static final y:Lcom/sleepycat/b/b/e;

.field public static final z:Lcom/sleepycat/b/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/16 v15, 0x3e8

    const v14, 0x7fffffff

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 107
    new-instance v0, Lcom/sleepycat/b/i/c/ao;

    const-string v1, "je.rep.groupName"

    const-string v3, "DefaultGroup"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/ao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    .line 121
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.repStreamTimeout"

    const-string v4, "24 h"

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->b:Lcom/sleepycat/b/b/c;

    .line 143
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.minRetainedVLSNs"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v0, 0x30d40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->c:Lcom/sleepycat/b/b/e;

    .line 156
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.replicaReceiveBufferSize"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->d:Lcom/sleepycat/b/b/e;

    .line 180
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.replicaMessageQueueSize"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->e:Lcom/sleepycat/b/b/e;

    .line 192
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replayTxnLockTimeout"

    const-string v9, "1 ms"

    const-string v10, "75 min"

    const-string v11, "500 ms"

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->f:Lcom/sleepycat/b/b/c;

    .line 203
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.envSetupTimeout"

    const-string v4, "10 h"

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->g:Lcom/sleepycat/b/b/c;

    .line 216
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.envConsistencyTimeout"

    const-string v9, "10 ms"

    const-string v11, "5 min"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->h:Lcom/sleepycat/b/b/c;

    .line 227
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.envUnknownStateTimeout"

    const-string v4, "0 s"

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->i:Lcom/sleepycat/b/b/c;

    .line 239
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replicaAckTimeout"

    const-string v9, "10 ms"

    const-string v11, "5 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->j:Lcom/sleepycat/b/b/c;

    .line 250
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.insufficientReplicasTimeout"

    const-string v9, "10 ms"

    const-string v11, "10 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->k:Lcom/sleepycat/b/b/c;

    .line 268
    new-instance v7, Lcom/sleepycat/b/b/f;

    const-string v8, "je.rep.maxMessageSize"

    const-wide/32 v0, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/f;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->l:Lcom/sleepycat/b/b/f;

    .line 285
    new-instance v0, Lcom/sleepycat/b/i/c/an$1;

    const-string v1, "je.rep.consistencyPolicy"

    const-string v3, "TimeConsistencyPolicy(1 s,1 h)"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/an$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->m:Lcom/sleepycat/b/b/b;

    .line 305
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.defaultPort"

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x7fff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x1389

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->n:Lcom/sleepycat/b/b/e;

    .line 317
    new-instance v0, Lcom/sleepycat/b/i/c/an$2;

    const-string v1, "je.rep.nodeHostPort"

    const-string v3, "localhost"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/an$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->o:Lcom/sleepycat/b/b/b;

    .line 365
    new-instance v0, Lcom/sleepycat/b/i/c/ao;

    const-string v1, "je.rep.nodeName"

    const-string v3, "DefaultRepNodeName"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/ao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    .line 374
    new-instance v0, Lcom/sleepycat/b/i/c/f;

    const-string v1, "je.rep.nodeType"

    sget-object v3, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    const-class v4, Lcom/sleepycat/b/i/o;

    invoke-direct {v0, v1, v3, v4}, Lcom/sleepycat/b/i/c/f;-><init>(Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->q:Lcom/sleepycat/b/i/c/f;

    .line 387
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.node.priority"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->r:Lcom/sleepycat/b/b/e;

    .line 398
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.designatedPrimary"

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->s:Lcom/sleepycat/b/b/a;

    .line 410
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.feederTcpNoDelay"

    invoke-direct {v0, v1, v6, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->t:Lcom/sleepycat/b/b/a;

    .line 420
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.electableGroupSizeOverride"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->u:Lcom/sleepycat/b/b/e;

    .line 434
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.resetRepGroup"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->v:Lcom/sleepycat/b/b/a;

    .line 445
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.maxClockDelta"

    const-string v3, "1 min"

    const-string v4, "2 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->w:Lcom/sleepycat/b/b/c;

    .line 456
    new-instance v0, Lcom/sleepycat/b/i/c/an$3;

    const-string v1, "je.rep.helperHosts"

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/c/an$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->x:Lcom/sleepycat/b/b/b;

    .line 491
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.heartbeatInterval"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->y:Lcom/sleepycat/b/b/e;

    .line 501
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.dbIdCacheOpCount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x1388

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->z:Lcom/sleepycat/b/b/e;

    .line 510
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.vlsn.stride"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->A:Lcom/sleepycat/b/b/e;

    .line 518
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.vlsn.mappings"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->B:Lcom/sleepycat/b/b/e;

    .line 527
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.vlsn.distance"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->C:Lcom/sleepycat/b/b/e;

    .line 540
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.test.replicaDelay"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->D:Lcom/sleepycat/b/b/e;

    .line 553
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.vlsn.logCacheSize"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->E:Lcom/sleepycat/b/b/e;

    .line 566
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.repstreamOpenTimeout"

    const-string v3, "5 min"

    const-string v4, "5 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->F:Lcom/sleepycat/b/b/c;

    .line 579
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.electionsOpenTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->G:Lcom/sleepycat/b/b/c;

    .line 593
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.electionsReadTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->H:Lcom/sleepycat/b/b/c;

    .line 606
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.electionsRebroadcastPeriod"

    const-string v4, "1 min"

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->I:Lcom/sleepycat/b/b/c;

    .line 618
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.electionsPrimaryRetries"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->J:Lcom/sleepycat/b/b/e;

    .line 629
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.repGroupOpenTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->K:Lcom/sleepycat/b/b/c;

    .line 641
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.repGroupReadTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->L:Lcom/sleepycat/b/b/c;

    .line 653
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.monitorOpenTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->M:Lcom/sleepycat/b/b/c;

    .line 665
    new-instance v0, Lcom/sleepycat/b/b/c;

    const-string v1, "je.rep.monitorReadTimeout"

    const-string v3, "1 min"

    const-string v4, "10 s"

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->N:Lcom/sleepycat/b/b/c;

    .line 677
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replicaTimeout"

    const-string v9, "2 s"

    const-string v11, "30 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->O:Lcom/sleepycat/b/b/c;

    .line 686
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.replayMaxOpenDbHandles"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->P:Lcom/sleepycat/b/b/e;

    .line 695
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replayOpenHandleTimeout"

    const-string v9, "1 s"

    const-string v11, "30 s"

    move-object v10, v2

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->Q:Lcom/sleepycat/b/b/c;

    .line 704
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.replicaMaxGroupCommit"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->R:Lcom/sleepycat/b/b/e;

    .line 713
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replicaGroupCommitInterval"

    const-string v9, "0 ms"

    const-string v11, "3 ms"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->S:Lcom/sleepycat/b/b/c;

    .line 736
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.feederHeartbeatTrigger"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->T:Lcom/sleepycat/b/b/e;

    .line 748
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.feederTimeout"

    const-string v9, "2 s"

    const-string v11, "30 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->U:Lcom/sleepycat/b/b/c;

    .line 761
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.transferLoggingThreshold"

    const-string v9, "1 ms"

    const-string v11, "5 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->V:Lcom/sleepycat/b/b/c;

    .line 774
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.replayLoggingThreshold"

    const-string v9, "1 ms"

    const-string v11, "5 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->W:Lcom/sleepycat/b/b/c;

    .line 794
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.commitToNetwork"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->X:Lcom/sleepycat/b/b/a;

    .line 802
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.preHeartbeatTimeoutMs"

    const-string v9, "1 s"

    const-string v11, "60 s"

    move-object v10, v2

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->Y:Lcom/sleepycat/b/b/c;

    .line 870
    new-instance v7, Lcom/sleepycat/b/b/e;

    const-string v8, "je.rep.txnRollbackLimit"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->Z:Lcom/sleepycat/b/b/e;

    .line 882
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.runLogFlushTask"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->aa:Lcom/sleepycat/b/b/a;

    .line 891
    new-instance v7, Lcom/sleepycat/b/b/c;

    const-string v8, "je.rep.logFlushTaskInterval"

    const-string v9, "1 s"

    const-string v11, "5 min"

    move-object v10, v2

    move v12, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sleepycat/b/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v7, Lcom/sleepycat/b/i/c/an;->ab:Lcom/sleepycat/b/b/c;

    .line 904
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.allowUnknownStateEnvOpen"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->ac:Lcom/sleepycat/b/b/a;

    .line 914
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.dontJoinRepGroup"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->ad:Lcom/sleepycat/b/b/a;

    .line 933
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.preserveRecordVersion"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->ae:Lcom/sleepycat/b/b/a;

    .line 951
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.cacheRecordVersion"

    invoke-direct {v0, v1, v6, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->af:Lcom/sleepycat/b/b/a;

    .line 971
    new-instance v0, Lcom/sleepycat/b/b/e;

    const-string v1, "je.rep.cachedRecordVersionMinLength"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->ag:Lcom/sleepycat/b/b/e;

    .line 984
    new-instance v0, Lcom/sleepycat/b/b/a;

    const-string v1, "je.rep.protocolOldStringEncoding"

    invoke-direct {v0, v1, v6, v5, v6}, Lcom/sleepycat/b/b/a;-><init>(Ljava/lang/String;ZZZ)V

    sput-object v0, Lcom/sleepycat/b/i/c/an;->ah:Lcom/sleepycat/b/b/a;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/sleepycat/b/i/c/an;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 30
    .line 1849
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1850
    if-ltz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1853
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing hostname"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    .line 1850
    goto :goto_0

    .line 1857
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    if-ltz v1, :cond_2

    .line 1863
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/i/c/an;->c(Ljava/lang/String;)V

    .line 30
    :cond_2
    return-void

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid hostname: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 821
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 823
    if-lez v0, :cond_0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid port number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid port number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_1
    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_2

    .line 828
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Port number "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid because the port must be outside the range of \"well known\" ports"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 835
    :cond_2
    return-void
.end method
