.class public final Lcom/snowballfinance/message/io/d;
.super Ljava/lang/Object;
.source "Protocol.java"


# direct methods
.method public static a([BII)I
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 30
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 31
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a([BI)J
    .locals 4

    .prologue
    .line 35
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 36
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    .line 37
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 38
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 39
    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static a([BIJ)V
    .locals 4

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x18

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 44
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 45
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 46
    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 47
    return-void
.end method

.method public static b([BIJ)V
    .locals 4

    .prologue
    .line 50
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x38

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 51
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 52
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 53
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 54
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 55
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 56
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 57
    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 58
    return-void
.end method

.method public static c([BIJ)I
    .locals 6

    .prologue
    .line 79
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 80
    const/4 v0, 0x0

    long-to-int v1, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 81
    const/4 v1, 0x1

    .line 82
    :goto_0
    const/4 v0, 0x7

    ushr-long/2addr p2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    .line 83
    long-to-int v0, p2

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 86
    :goto_1
    if-lez v0, :cond_1

    .line 87
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    aget-byte v4, v3, v0

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v2

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v0, p1, -0x1

    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 90
    return v1
.end method
