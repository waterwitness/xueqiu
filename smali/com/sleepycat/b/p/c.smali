.class public final Lcom/sleepycat/b/p/c;
.super Ljava/util/zip/Adler32;
.source "Adler32.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/zip/Adler32;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/p/c;->a:I

    .line 60
    iput p1, p0, Lcom/sleepycat/b/p/c;->a:I

    .line 61
    return-void
.end method


# virtual methods
.method public final update([BII)V
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lcom/sleepycat/b/p/c;->a:I

    if-ge p3, v0, :cond_1

    .line 66
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 78
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    if-ge v0, p3, :cond_0

    .line 72
    sub-int v1, p3, v0

    .line 73
    iget v2, p0, Lcom/sleepycat/b/p/c;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 75
    add-int v2, p2, v0

    invoke-super {p0, p1, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 76
    add-int/2addr v0, v1

    .line 77
    goto :goto_0
.end method
