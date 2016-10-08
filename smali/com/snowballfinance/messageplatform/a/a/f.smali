.class public Lcom/snowballfinance/messageplatform/a/a/f;
.super Ljava/io/ByteArrayOutputStream;
.source "RandomAccessBuffer.java"


# instance fields
.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    .line 85
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    if-le v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->buf:[B

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([B)V
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/f;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    if-le v0, v1, :cond_1

    .line 46
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 47
    const/4 v1, 0x0

    array-length v2, v0

    invoke-super {p0, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 48
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    .line 56
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 57
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    if-ge v0, v1, :cond_0

    .line 50
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->buf:[B

    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    add-int/2addr p2, v0

    .line 54
    sub-int/2addr p3, v0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->c:I

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/f;->count:I

    .line 90
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
