.class public final Lcom/sleepycat/b/g/a/g;
.super Lcom/sleepycat/b/g/a/k;
.source "DeletedDupLNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/k",
        "<",
        "Lcom/sleepycat/b/l/y;",
        ">;"
    }
.end annotation


# instance fields
.field private h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sleepycat/b/l/y;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/a/k;-><init>(Ljava/lang/Class;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/g/a/k;->a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 75
    iget-object v0, p0, Lcom/sleepycat/b/g/a/g;->h:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-object p1
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/g/a/g;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;Z)V

    .line 1283
    iget v1, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 65
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p3, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/g;->h:[B

    .line 66
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method final b()[B
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/sleepycat/b/g/a/g;->k()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/a/g;->h:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/y;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final d_()I
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
