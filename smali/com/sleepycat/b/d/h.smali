.class public final Lcom/sleepycat/b/d/h;
.super Ljava/lang/Object;
.source "EvictorStatDefinition.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nEvictPasses"

    const-string v2, "Number of eviction passes, an indicator of the eviction activity level."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->a:Lcom/sleepycat/b/p/ag;

    .line 52
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNodesSelected"

    const-string v2, "Number of nodes which pass the first criteria for eviction, an indicator of eviction efficiency. nNodesExplicitlyEvicted plus nBINsStripped will roughly equal nNodesSelected. nNodesSelected will be somewhat larger than the sum because some selected nodes don\'t pass a final screening."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->b:Lcom/sleepycat/b/p/ag;

    .line 63
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNodesScanned"

    const-string v2, "Number of nodes scanned in order to select the eviction set, an indicator of eviction overhead."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->c:Lcom/sleepycat/b/p/ag;

    .line 68
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nNodesEvicted"

    const-string v2, "Number of nodes selected and removed from the cache."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->d:Lcom/sleepycat/b/p/ag;

    .line 73
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRootNodesEvicted"

    const-string v2, "Number of database root nodes evicted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->e:Lcom/sleepycat/b/p/ag;

    .line 78
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINsStripped"

    const-string v2, "The number of BINs for which the child LNs have been removed (stripped) and are no longer in the cache. BIN stripping is the most efficient form of eviction."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->f:Lcom/sleepycat/b/p/ag;

    .line 85
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "requiredEvictBytes"

    const-string v2, "Number of bytes we need to evict in order to get under budget."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->g:Lcom/sleepycat/b/p/ag;

    .line 91
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nSharedCacheEnvironments"

    const-string v2, "Number of Environments sharing the cache."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->h:Lcom/sleepycat/b/p/ag;

    .line 96
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsFetch"

    const-string v2, "Number of LNs (data records) requested by btree operations. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->i:Lcom/sleepycat/b/p/ag;

    .line 102
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nUpperINsFetch"

    const-string v2, "Number of Upper INs (non-bottom internal nodes) requested by btree operations. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->j:Lcom/sleepycat/b/p/ag;

    .line 108
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINsFetch"

    const-string v2, "Number of BINs (bottom internal nodes) requested by btree operations. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->k:Lcom/sleepycat/b/p/ag;

    .line 114
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLNsFetchMiss"

    const-string v2, "Number of LNs (data records) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->l:Lcom/sleepycat/b/p/ag;

    .line 120
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nUpperINsFetchMiss"

    const-string v2, "Number of Upper INs (non-bottom internal nodes) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->m:Lcom/sleepycat/b/p/ag;

    .line 126
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBINsFetchMiss"

    const-string v2, "Number of BINs (bottom internal nodes) requested by btree operations that were not in cache. Can be used to gauge cache hit/miss ratios."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->n:Lcom/sleepycat/b/p/ag;

    .line 132
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCachedUpperINs"

    const-string v2, "Number of upper INs (non-bottom internal nodes) in cache. The cache holds INs and BINS, so this indicates the proportion used by each type of node. When used on shared environment caches, will only be visible via StatConfig.setFast(false)"

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->o:Lcom/sleepycat/b/p/ag;

    .line 142
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCachedBINs"

    const-string v2, "Number of BINs (bottom internal nodes) in cache. The cache holds INs and BINS, so this indicates the proportion used by each type of node. When used on shared environment caches, will only be visible via StatConfig.setFast(false)"

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->p:Lcom/sleepycat/b/p/ag;

    .line 151
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nThreadUnavailable"

    const-string v2, "Number of eviction tasks that were submitted to the background evictor pool, but were refused because all eviction threads were busy. The user may want to change the size of the evictor pool through the je.evictor.*threads properties."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/d/h;->q:Lcom/sleepycat/b/p/ag;

    .line 160
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINSparseTarget"

    const-string v2, "Number of INs that use a compact sparse array representation to point to child nodes in the cache."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->r:Lcom/sleepycat/b/p/ag;

    .line 167
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINNoTarget"

    const-string v2, "Number of INs that use a compact representation when none of its child nodes arein the cache."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->s:Lcom/sleepycat/b/p/ag;

    .line 174
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nINCompactKey"

    const-string v2, "Number of INs that use a compact key representation to minimize the key object representation overhead."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/d/h;->t:Lcom/sleepycat/b/p/ag;

    return-void
.end method
