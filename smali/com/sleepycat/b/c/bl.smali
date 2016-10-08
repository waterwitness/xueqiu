.class public final Lcom/sleepycat/b/c/bl;
.super Ljava/lang/Object;
.source "TxnStatDefinition.java"


# static fields
.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;

.field public static final h:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nActive"

    const-string v2, "Number of transactions that are currently active."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->a:Lcom/sleepycat/b/p/ag;

    .line 22
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nBegins"

    const-string v2, "Number of transactions that have begun."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->b:Lcom/sleepycat/b/p/ag;

    .line 26
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nAborts"

    const-string v2, "Number of transactions that have aborted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->c:Lcom/sleepycat/b/p/ag;

    .line 30
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nCommits"

    const-string v2, "Number of transactions that have committed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->d:Lcom/sleepycat/b/p/ag;

    .line 34
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nXAAborts"

    const-string v2, "Number of XA transactions that have aborted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->e:Lcom/sleepycat/b/p/ag;

    .line 38
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nXAPrepares"

    const-string v2, "Number of XA transactions that have been prepared."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->f:Lcom/sleepycat/b/p/ag;

    .line 43
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "nXACommits"

    const-string v2, "Number of XA transactions that have committed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->g:Lcom/sleepycat/b/p/ag;

    .line 47
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "activeTxns"

    const-string v2, "Array of active transactions. Each element of the array is an object of type Transaction.Active."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bl;->h:Lcom/sleepycat/b/p/ag;

    return-void
.end method
