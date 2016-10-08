.class final Lcom/sleepycat/b/l/an$1;
.super Lcom/sleepycat/b/l/an;
.source "VLSNCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/l/an;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sleepycat/b/l/an;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(I)J
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 43
    return-wide v0
.end method

.method public final a(III)Lcom/sleepycat/b/l/an;
    .locals 0

    .prologue
    .line 74
    return-object p0
.end method

.method public final a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;
    .locals 6

    .prologue
    .line 53
    .line 2717
    iget-object v0, p4, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 3133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 53
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object p0

    .line 57
    :cond_1
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 4101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 57
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/sleepycat/b/l/ao;

    .line 4372
    iget-object v1, p4, Lcom/sleepycat/b/l/j;->h:[B

    array-length v1, v1

    .line 4717
    iget-object v2, p4, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 5133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 61
    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->L()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/l/ao;-><init>(II)V

    .line 6083
    const-wide/16 v2, 0x0

    .line 67
    invoke-virtual {v0}, Lcom/sleepycat/b/l/an;->a()J

    move-result-wide v4

    invoke-virtual {p4, v2, v3, v4, v5}, Lcom/sleepycat/b/l/j;->a(JJ)V

    .line 69
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/l/an;->a(IJLcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/an;

    move-result-object p0

    goto :goto_0
.end method
