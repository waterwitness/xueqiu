.class final Lcom/sleepycat/b/i/c/b/p;
.super Ljava/lang/Object;
.source "JoinGroupTimeouts.java"


# instance fields
.field final a:I

.field b:I

.field private final c:I

.field private final d:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/m;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/p;->d:J

    .line 66
    sget-object v0, Lcom/sleepycat/b/i/c/an;->g:Lcom/sleepycat/b/b/c;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/p;->a:I

    .line 68
    sget-object v0, Lcom/sleepycat/b/i/c/an;->i:Lcom/sleepycat/b/b/c;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lcom/sleepycat/b/i/c/an;->ac:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sleepycat/b/i/c/b/p;->a:I

    :goto_0
    iput v0, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    .line 88
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    iget v1, p0, Lcom/sleepycat/b/i/c/b/p;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/p;->b:I

    .line 89
    return-void

    .line 72
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0

    .line 75
    :cond_2
    sget-object v0, Lcom/sleepycat/b/i/c/an;->i:Lcom/sleepycat/b/b/c;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    .line 77
    iget v0, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    iget v1, p0, Lcom/sleepycat/b/i/c/b/p;->a:I

    if-le v0, v1, :cond_0

    .line 78
    const-string v0, " The timeout ENV_UNKNOWN_STATE_TIMEOUT(%,d ms) exceeds the timeout ENV_SETUP_TIMEOUT(%,d ms)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sleepycat/b/i/c/b/p;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method final a()I
    .locals 6

    .prologue
    .line 96
    iget v0, p0, Lcom/sleepycat/b/i/c/b/p;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/b/p;->d:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/sleepycat/b/i/c/b/p;->b:I

    iget v1, p0, Lcom/sleepycat/b/i/c/b/p;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
