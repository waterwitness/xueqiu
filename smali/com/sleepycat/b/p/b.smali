.class public final Lcom/sleepycat/b/p/b;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    return-void
.end method

.method public static a()Ljava/util/zip/Checksum;
    .locals 2

    .prologue
    .line 82
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->T:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/sleepycat/b/c/ad;->y()I

    move-result v1

    .line 84
    if-lez v1, :cond_0

    .line 85
    new-instance v0, Lcom/sleepycat/b/p/c;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/c;-><init>(I)V

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lcom/sleepycat/b/p/b;

    invoke-direct {v0}, Lcom/sleepycat/b/p/b;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 141
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    .line 142
    return-void
.end method

.method public final update(I)V
    .locals 10

    .prologue
    const-wide/32 v4, 0xffff

    const-wide/32 v8, 0xfff1

    const/16 v6, 0x10

    .line 107
    iget-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    and-long/2addr v0, v4

    .line 108
    iget-wide v2, p0, Lcom/sleepycat/b/p/b;->a:J

    shr-long/2addr v2, v6

    and-long/2addr v2, v4

    .line 109
    and-int/lit16 v4, p1, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    rem-long/2addr v0, v8

    .line 110
    add-long/2addr v2, v0

    rem-long/2addr v2, v8

    .line 111
    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    .line 112
    return-void
.end method

.method public final update([BII)V
    .locals 8

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    const-wide/32 v2, 0xffff

    and-long v4, v0, v2

    .line 119
    iget-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    move v1, p3

    move v6, p2

    .line 121
    :goto_0
    if-lez v1, :cond_2

    .line 122
    const/16 v0, 0x15b0

    if-ge v1, v0, :cond_0

    move v0, v1

    .line 123
    :goto_1
    sub-int p3, v1, v0

    .line 126
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 127
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 128
    add-long/2addr v2, v4

    move v6, v0

    move v0, v1

    goto :goto_2

    .line 122
    :cond_0
    const/16 v0, 0x15b0

    goto :goto_1

    .line 131
    :cond_1
    const-wide/32 v0, 0xfff1

    rem-long/2addr v4, v0

    .line 132
    const-wide/32 v0, 0xfff1

    rem-long/2addr v2, v0

    move v1, p3

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/16 v0, 0x10

    shl-long v0, v2, v0

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sleepycat/b/p/b;->a:J

    .line 135
    return-void
.end method
