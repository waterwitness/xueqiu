.class final Lcom/sleepycat/b/a/x;
.super Ljava/lang/Object;
.source "PackedOffsets.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/a/w;

.field private b:I

.field private c:J


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/a/w;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sleepycat/b/a/x;->a:Lcom/sleepycat/b/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/a/w;B)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/sleepycat/b/a/x;-><init>(Lcom/sleepycat/b/a/w;)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sleepycat/b/a/x;->a:Lcom/sleepycat/b/a/w;

    invoke-static {v0}, Lcom/sleepycat/b/a/w;->a(Lcom/sleepycat/b/a/w;)[S

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/a/x;->b:I

    iget-object v1, p0, Lcom/sleepycat/b/a/x;->a:Lcom/sleepycat/b/a/w;

    invoke-static {v1}, Lcom/sleepycat/b/a/w;->a(Lcom/sleepycat/b/a/w;)[S

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()J
    .locals 8

    .prologue
    .line 124
    iget-wide v2, p0, Lcom/sleepycat/b/a/x;->c:J

    .line 125
    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/a/x;->a:Lcom/sleepycat/b/a/w;

    invoke-static {v1}, Lcom/sleepycat/b/a/w;->a(Lcom/sleepycat/b/a/w;)[S

    move-result-object v1

    iget v4, p0, Lcom/sleepycat/b/a/x;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sleepycat/b/a/x;->b:I

    aget-short v1, v1, v4

    int-to-long v4, v1

    .line 127
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 128
    const-wide/16 v6, -0x1

    sub-long v4, v6, v4

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 125
    add-int/lit8 v0, v0, 0xf

    goto :goto_0

    .line 130
    :cond_0
    shl-long v0, v4, v0

    add-long/2addr v0, v2

    .line 134
    iput-wide v0, p0, Lcom/sleepycat/b/a/x;->c:J

    .line 135
    return-wide v0
.end method
