.class public final Lcom/snowballfinance/message/io/d/a;
.super Ljava/lang/Object;
.source "Buffers.java"


# direct methods
.method public static a(Lcom/snowballfinance/message/io/a/b;I)Lcom/snowballfinance/message/io/a/b;
    .locals 7

    .prologue
    .line 18
    new-instance v0, Lcom/snowballfinance/message/io/a/b;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snowballfinance/message/io/a/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1038
    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 1049
    iget v2, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 1054
    iget v3, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 22
    add-int/2addr v1, v2

    rem-int/2addr v1, v3

    .line 1077
    iget-object v4, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 23
    sub-int v2, v3, v2

    .line 1107
    iget v3, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    iget v5, v0, Lcom/snowballfinance/message/io/a/b;->c:I

    sub-int/2addr v3, v5

    .line 1108
    iget-object v5, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1109
    iget-object v5, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/snowballfinance/message/io/a/b;->c:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1110
    if-lt v3, v2, :cond_0

    .line 1111
    iget-object v3, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1117
    :goto_0
    iget v1, v0, Lcom/snowballfinance/message/io/a/b;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 1118
    iget v1, v0, Lcom/snowballfinance/message/io/a/b;->c:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/snowballfinance/message/io/a/b;->b:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 24
    return-object v0

    .line 1113
    :cond_0
    iget-object v5, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1114
    iget-object v5, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1115
    iget-object v5, v0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    add-int/2addr v1, v3

    sub-int v3, v2, v3

    invoke-virtual {v5, v4, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
