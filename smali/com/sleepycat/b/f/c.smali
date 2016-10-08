.class public final Lcom/sleepycat/b/f/c;
.super Ljava/lang/Object;
.source "LatchStatDefinition.java"


# static fields
.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchAcquiresNoWaiters"

    const-string v2, "Number of times the latch was acquired without contention."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->a:Lcom/sleepycat/b/p/ag;

    .line 25
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchAcquiresSelfOwned"

    const-string v2, "Number of times the latch was acquired it was already owned by the caller."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->b:Lcom/sleepycat/b/p/ag;

    .line 30
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchAcquiresWithContention"

    const-string v2, "Number of times the latch was acquired when it was already owned by another thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->c:Lcom/sleepycat/b/p/ag;

    .line 35
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchAcquiresNoWaitSuccessful"

    const-string v2, "Number of times acquireNoWait() was called when the latch was successfully acquired."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->d:Lcom/sleepycat/b/p/ag;

    .line 40
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchAcquireNoWaitUnsuccessful"

    const-string v2, "Number of unsuccessful acquireNoWait() calls."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->e:Lcom/sleepycat/b/p/ag;

    .line 44
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nLatchReleases"

    const-string v2, "Number of latch releases."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/f/c;->f:Lcom/sleepycat/b/p/ag;

    return-void
.end method
