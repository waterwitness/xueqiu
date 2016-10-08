.class public final Lcom/snowballfinance/message/io/a/b;
.super Ljava/lang/Object;
.source "CycleChunkBuffer.java"

# interfaces
.implements Lcom/snowballfinance/message/io/a/a;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 18
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    iput v0, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 19
    iput-object p1, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    return v0
.end method

.method public final a([BI)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    rem-int/2addr v0, v1

    .line 91
    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    sub-int/2addr v1, v0

    .line 92
    iget-object v2, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    iget-object v2, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    if-lt v1, p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v4, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 101
    :goto_0
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 102
    return p2

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v0, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v0, p0, Lcom/snowballfinance/message/io/a/b;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v1, 0x0

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a(I)Lcom/snowballfinance/message/io/a/a;
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    .line 33
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    return v0
.end method

.method public final b(I)Lcom/snowballfinance/message/io/a/a;
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    .line 44
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CycleChunkBuffer [position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1054
    iget v1, p0, Lcom/snowballfinance/message/io/a/b;->b:I

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
