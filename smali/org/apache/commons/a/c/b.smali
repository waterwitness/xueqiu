.class public final Lorg/apache/commons/a/c/b;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    .prologue
    .line 48
    const/16 v0, 0x1f58

    invoke-static {p0, p1, v0}, Lorg/apache/commons/a/c/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6

    .prologue
    .line 64
    new-array v2, p2, [B

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 71
    :cond_0
    return-wide v0
.end method
