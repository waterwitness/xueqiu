.class public final Lorg/apache/commons/a/c/a;
.super Ljava/lang/Object;
.source "ArchiveUtils.java"


# direct methods
.method public static a(Ljava/lang/String;[B)Z
    .locals 2

    .prologue
    .line 70
    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    array-length v1, v0

    invoke-static {v0, v1, p1}, Lorg/apache/commons/a/c/a;->a([BI[B)Z

    move-result v0

    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([BI[B)Z
    .locals 6

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 149
    if-ge p1, v1, :cond_0

    move v0, p1

    :goto_0
    move v3, v2

    .line 150
    :goto_1
    if-ge v3, v0, :cond_2

    .line 151
    add-int/lit8 v4, v3, 0x0

    aget-byte v4, p0, v4

    add-int/lit16 v5, v3, 0x101

    aget-byte v5, p2, v5

    if-eq v4, v5, :cond_1

    move v0, v2

    .line 174
    :goto_2
    return v0

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    :cond_2
    if-ne p1, v1, :cond_3

    .line 156
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 174
    goto :goto_2
.end method
