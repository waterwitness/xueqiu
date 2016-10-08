.class public final Lcom/sleepycat/b/n/n;
.super Ljava/lang/Object;
.source "LockStatDefinition.java"


# static fields
.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nReadLocks"

    const-string v2, "Number of read locks currently held."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/n;->a:Lcom/sleepycat/b/p/ag;

    .line 27
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWriteLocks"

    const-string v2, "Number of write locks currently held."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/n;->b:Lcom/sleepycat/b/p/ag;

    .line 32
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nOwners"

    const-string v2, "Number of lock owners in lock table."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/n;->c:Lcom/sleepycat/b/p/ag;

    .line 37
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nRequests"

    const-string v2, "Number of times a lock request was made."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/n;->d:Lcom/sleepycat/b/p/ag;

    .line 41
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nTotalLocks"

    const-string v2, "Number of locks current in lock table."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/n;->e:Lcom/sleepycat/b/p/ag;

    .line 46
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWaits"

    const-string v2, "Number of times a lock request blocked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/n;->f:Lcom/sleepycat/b/p/ag;

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nWaiters"

    const-string v2, "Number of transactions waiting for a lock."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/n/n;->g:Lcom/sleepycat/b/p/ag;

    return-void
.end method
