.class public final Lcom/sleepycat/b/a/z;
.super Lcom/sleepycat/b/a/o;
.source "TrackedFileSummary.java"


# instance fields
.field l:Lcom/sleepycat/b/a/b;

.field m:J

.field n:Lcom/sleepycat/b/a/t;

.field public o:I

.field p:Z

.field public q:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/b/a/b;JZ)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sleepycat/b/a/o;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/a/z;->q:Z

    .line 37
    iput-object p1, p0, Lcom/sleepycat/b/a/z;->l:Lcom/sleepycat/b/a/b;

    .line 38
    iput-wide p2, p0, Lcom/sleepycat/b/a/z;->m:J

    .line 39
    iput-boolean p4, p0, Lcom/sleepycat/b/a/z;->p:Z

    .line 40
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 4

    .prologue
    .line 176
    iget v0, p0, Lcom/sleepycat/b/a/z;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/b/a/z;->o:I

    .line 177
    iget-object v0, p0, Lcom/sleepycat/b/a/z;->l:Lcom/sleepycat/b/a/b;

    iget-object v0, v0, Lcom/sleepycat/b/a/b;->b:Lcom/sleepycat/b/c/ad;

    .line 5508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 177
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 178
    return-void
.end method

.method public final i()V
    .locals 6

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/b/a/z;->l:Lcom/sleepycat/b/a/b;

    .line 4062
    iget-wide v2, p0, Lcom/sleepycat/b/a/z;->m:J

    .line 3317
    iget-wide v4, v0, Lcom/sleepycat/b/a/b;->d:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 5047
    iget-boolean v1, p0, Lcom/sleepycat/b/a/z;->q:Z

    .line 3317
    if-eqz v1, :cond_0

    .line 3320
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5062
    iget-wide v2, p0, Lcom/sleepycat/b/a/z;->m:J

    .line 3322
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3323
    iput-object v1, v0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    .line 88
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/z;->o:I

    if-lez v0, :cond_1

    .line 89
    iget v0, p0, Lcom/sleepycat/b/a/z;->o:I

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/a/z;->a(I)V

    .line 92
    :cond_1
    invoke-super {p0}, Lcom/sleepycat/b/a/o;->i()V

    .line 93
    return-void
.end method

.method public final j()[J
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/t;->a()[J

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
