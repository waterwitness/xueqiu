.class public final Lcom/a/a/d/i;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public static a(II)I
    .locals 0

    .prologue
    .line 35
    if-gtz p0, :cond_1

    .line 36
    const/4 p1, 0x0

    .line 41
    :cond_0
    :goto_0
    return p1

    .line 38
    :cond_1
    if-ge p0, p1, :cond_0

    move p1, p0

    .line 41
    goto :goto_0
.end method
