.class public final Lcom/sleepycat/b/c/a;
.super Ljava/lang/Object;
.source "BTreeStatDefinition.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "binCount"

    const-string v2, "Number of bottom internal nodes in the database\'s btree."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->a:Lcom/sleepycat/b/p/ag;

    .line 28
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "deletedLNCount"

    const-string v2, "Number of deleted leaf nodes in the database\'s btree."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->b:Lcom/sleepycat/b/p/ag;

    .line 34
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "inCount"

    const-string v2, "Number of internal nodes in database\'s btree. BINs are not included."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->c:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lnCount"

    const-string v2, "Number of leaf nodes in the database\'s btree."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->d:Lcom/sleepycat/b/p/ag;

    .line 45
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "mainTreeMaxDepth"

    const-string v2, "Maximum depth of the in-memory tree."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->e:Lcom/sleepycat/b/p/ag;

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "insByLevel"

    const-string v2, "Histogram of internal nodes by level."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->f:Lcom/sleepycat/b/p/ag;

    .line 55
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "binsByLevel"

    const-string v2, "Histogram of bottom internal nodes by level."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->g:Lcom/sleepycat/b/p/ag;

    .line 60
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "relatchesRequired"

    const-string v2, "Number of latch upgrades (relatches) required."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/a;->h:Lcom/sleepycat/b/p/ag;

    .line 64
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRootSplits"

    const-string v2, "Number of times the root was split."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/a;->i:Lcom/sleepycat/b/p/ag;

    .line 68
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "binEntriesHistogram"

    const-string v2, "Histogram of bottom internal nodes fill percentage."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/a;->j:Lcom/sleepycat/b/p/ag;

    return-void
.end method
