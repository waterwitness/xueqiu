.class abstract Lcom/sleepycat/b/c/an;
.super Ljava/lang/Object;
.source "LSNAccumulator.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/t;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/sleepycat/b/c/an;->a()V

    .line 34
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/sleepycat/b/c/an;->c:J

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/an;->b(J)V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/an;->a:Ljava/util/Map;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/c/an;->b:I

    .line 40
    sget v0, Lcom/sleepycat/b/c/ao;->q:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/an;->b(J)V

    .line 41
    return-void
.end method

.method abstract a(J)V
.end method

.method final b(J)V
    .locals 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sleepycat/b/c/an;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/b/c/an;->c:J

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/c/an;->a(J)V

    .line 56
    return-void
.end method

.method final c(J)V
    .locals 5

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 60
    iget-object v0, p0, Lcom/sleepycat/b/c/an;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/t;

    .line 61
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/sleepycat/b/a/t;

    invoke-direct {v0}, Lcom/sleepycat/b/a/t;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/sleepycat/b/c/an;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget v1, Lcom/sleepycat/b/c/ao;->Q:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/b/c/an;->b(J)V

    .line 65
    sget v1, Lcom/sleepycat/b/c/ao;->r:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/sleepycat/b/c/an;->b(J)V

    .line 68
    :cond_0
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/a/t;->a(JZ)Z

    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    sget v0, Lcom/sleepycat/b/c/ao;->R:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/an;->b(J)V

    .line 74
    :cond_1
    iget v0, p0, Lcom/sleepycat/b/c/an;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/c/an;->b:I

    .line 75
    return-void
.end method
