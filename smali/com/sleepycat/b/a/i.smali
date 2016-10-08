.class final Lcom/sleepycat/b/a/i;
.super Ljava/lang/Object;
.source "FileProcessor.java"


# instance fields
.field final a:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/r;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field c:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1490
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/i;->a:Ljava/util/SortedMap;

    .line 1491
    iput p1, p0, Lcom/sleepycat/b/a/i;->b:I

    .line 1492
    sget v0, Lcom/sleepycat/b/c/ao;->q:I

    iput v0, p0, Lcom/sleepycat/b/a/i;->c:I

    .line 1493
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Long;)Lcom/sleepycat/b/a/r;
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/sleepycat/b/a/i;->a:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/r;

    .line 1515
    if-eqz v0, :cond_0

    .line 1516
    iget v1, p0, Lcom/sleepycat/b/a/i;->c:I

    invoke-virtual {v0}, Lcom/sleepycat/b/a/r;->a()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/b/a/i;->c:I

    .line 1517
    iget v1, p0, Lcom/sleepycat/b/a/i;->c:I

    sget v2, Lcom/sleepycat/b/c/ao;->r:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/b/a/i;->c:I

    .line 1519
    :cond_0
    return-object v0
.end method
