.class final Lcom/sleepycat/b/g/ak;
.super Lcom/sleepycat/b/g/af;
.source "LogEntryType.java"


# direct methods
.method public constructor <init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V
    .locals 9

    .prologue
    .line 867
    const-class v0, Lcom/sleepycat/b/l/y;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v6, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v7, Lcom/sleepycat/b/g/ah;->e:I

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;IB)V

    .line 871
    return-void
.end method


# virtual methods
.method public final a(IIB)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 878
    if-gt p1, p2, :cond_1

    .line 1644
    iget-byte v2, p0, Lcom/sleepycat/b/g/af;->K:B

    .line 878
    if-ne v2, p3, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v0

    .line 886
    :cond_1
    if-le p1, p2, :cond_4

    .line 2717
    iget-object v2, p0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 3708
    iget-boolean v2, v2, Lcom/sleepycat/b/g/aj;->c:Z

    .line 1898
    if-nez v2, :cond_2

    sget-object v2, Lcom/sleepycat/b/g/ak;->b:Lcom/sleepycat/b/g/af;

    .line 4644
    iget-byte v2, v2, Lcom/sleepycat/b/g/af;->K:B

    .line 1898
    if-eq p3, v2, :cond_3

    .line 4717
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 5708
    iget-boolean v2, v2, Lcom/sleepycat/b/g/aj;->c:Z

    .line 1898
    if-eqz v2, :cond_5

    sget-object v2, Lcom/sleepycat/b/g/ak;->a:Lcom/sleepycat/b/g/af;

    .line 6644
    iget-byte v2, v2, Lcom/sleepycat/b/g/af;->K:B

    .line 1898
    if-ne p3, v2, :cond_5

    :cond_3
    move v2, v0

    .line 886
    :goto_1
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 894
    goto :goto_0

    :cond_5
    move v2, v1

    .line 1904
    goto :goto_1
.end method
