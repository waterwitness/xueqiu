.class final Lcom/sleepycat/b/c/ap;
.super Lcom/sleepycat/b/c/ar;
.source "MemoryBudget.java"


# instance fields
.field private final c:Lcom/sleepycat/b/c/ao;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/c/ao;)V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/ar;-><init>(B)V

    .line 1346
    iput-object p1, p0, Lcom/sleepycat/b/c/ap;->c:Lcom/sleepycat/b/c/ao;

    .line 1347
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/c/ao;B)V
    .locals 0

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/ap;-><init>(Lcom/sleepycat/b/c/ao;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/sleepycat/b/c/ap;->c:Lcom/sleepycat/b/c/ao;

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/b/c/ao;)J

    move-result-wide v0

    return-wide v0
.end method

.method final a(J)Z
    .locals 4

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/sleepycat/b/c/ap;->c:Lcom/sleepycat/b/c/ao;

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/b/c/ao;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/c/ap;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return v0
.end method
