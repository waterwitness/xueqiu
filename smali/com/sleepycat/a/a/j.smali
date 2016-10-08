.class public Lcom/sleepycat/a/a/j;
.super Ljava/lang/Object;
.source "TupleBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private outputBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/a/a/j;->outputBufferSize:I

    .line 38
    return-void
.end method

.method public static entryToInput(Lcom/sleepycat/b/m;)Lcom/sleepycat/a/a/l;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/sleepycat/a/a/l;

    .line 2197
    iget-object v1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 2382
    iget v2, p0, Lcom/sleepycat/b/m;->d:I

    .line 2410
    iget v3, p0, Lcom/sleepycat/b/m;->e:I

    .line 134
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/a/a/l;-><init>([BII)V

    return-object v0
.end method

.method public static inputToEntry(Lcom/sleepycat/a/a/l;Lcom/sleepycat/b/m;)V
    .locals 3

    .prologue
    .line 119
    .line 2170
    iget-object v0, p0, Lcom/sleepycat/c/c;->d:[B

    .line 2180
    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    .line 119
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->l()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/b/m;->a([BII)V

    .line 121
    return-void
.end method

.method public static newOutput()Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/sleepycat/a/a/m;

    invoke-direct {v0}, Lcom/sleepycat/a/a/m;-><init>()V

    return-object v0
.end method

.method public static newOutput([B)Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/sleepycat/a/a/m;

    invoke-direct {v0, p0}, Lcom/sleepycat/a/a/m;-><init>([B)V

    return-object v0
.end method

.method public static outputToEntry(Lcom/sleepycat/a/a/m;Lcom/sleepycat/b/m;)V
    .locals 3

    .prologue
    .line 105
    .line 1259
    iget-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    .line 105
    const/4 v1, 0x0

    .line 1280
    iget v2, p0, Lcom/sleepycat/c/d;->a:I

    .line 105
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/b/m;->a([BII)V

    .line 107
    return-void
.end method


# virtual methods
.method public getTupleBufferSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/sleepycat/a/a/j;->outputBufferSize:I

    return v0
.end method

.method protected getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/sleepycat/a/a/m;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sleepycat/a/a/j;->getTupleBufferSize()I

    move-result v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Lcom/sleepycat/a/a/m;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/a/a/m;-><init>([B)V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/a/a/m;

    invoke-direct {v0}, Lcom/sleepycat/a/a/m;-><init>()V

    goto :goto_0
.end method

.method public setTupleBufferSize(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/sleepycat/a/a/j;->outputBufferSize:I

    .line 52
    return-void
.end method
