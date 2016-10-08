.class public final Lcom/sleepycat/b/l/a/b;
.super Lcom/sleepycat/b/l/j;
.source "DIN.java"


# instance fields
.field a:Lcom/sleepycat/b/l/e;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/sleepycat/b/l/j;-><init>()V

    .line 50
    new-instance v0, Lcom/sleepycat/b/l/e;

    invoke-direct {v0}, Lcom/sleepycat/b/l/e;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 51
    const/4 v0, 0x0

    sget-object v1, Lcom/sleepycat/b/l/w;->b:[B

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sleepycat/b/l/a/b;->a(Lcom/sleepycat/b/c/i;[BII)V

    .line 52
    return-void
.end method


# virtual methods
.method protected final M()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 103
    invoke-super {p0}, Lcom/sleepycat/b/l/j;->M()J

    move-result-wide v4

    .line 107
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 3094
    iget-object v2, v2, Lcom/sleepycat/b/l/e;->c:[B

    .line 108
    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v2

    int-to-long v2, v2

    .line 110
    iget-object v6, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 3187
    iget-object v6, v6, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 110
    if-eqz v6, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 4187
    iget-object v0, v0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 111
    invoke-virtual {v0}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v0

    .line 116
    :cond_0
    :goto_0
    add-long v6, v4, v2

    add-long/2addr v6, v0

    .line 117
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DIN: %d dkey: %d ln: %d %n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v4

    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 119
    return-wide v6

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public final T()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    if-eqz p2, :cond_0

    .line 5025
    const-string v0, "                                                                                                                                "

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    const-string v0, "<din>"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 6025
    const-string v2, "                                                                                                                                "

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "<dupkey>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->b:[B

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, "</dupkey>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    if-nez v0, :cond_3

    .line 227
    add-int/lit8 v0, p1, 0x2

    .line 7025
    const-string v2, "                                                                                                                                "

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "<dupCountLN/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-super {p0, p1, v3}, Lcom/sleepycat/b/l/j;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    if-eqz p2, :cond_1

    .line 8025
    const-string v0, "                                                                                                                                "

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8204
    const-string v0, "</din>"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->b:[B

    invoke-static {v0, v3}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    add-int/lit8 v2, p1, 0x4

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/StringBuilder;)V

    .line 187
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/l/e;->a(Ljava/lang/StringBuilder;Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    move v0, v1

    .line 167
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/j;->a(Ljava/nio/ByteBuffer;I)V

    .line 168
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a/b;->b:[B

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 173
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 174
    :goto_1
    if-eqz v1, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/e;->a(Ljava/nio/ByteBuffer;I)V

    .line 179
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 166
    goto :goto_0

    :cond_1
    move v1, v2

    .line 173
    goto :goto_1

    .line 177
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    goto :goto_2
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/sleepycat/b/l/j;->c()J

    move-result-wide v0

    .line 90
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 1094
    iget-object v2, v2, Lcom/sleepycat/b/l/e;->c:[B

    .line 91
    array-length v2, v2

    invoke-static {v2}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 92
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 1187
    iget-object v2, v2, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 92
    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 2187
    iget-object v2, v2, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 93
    invoke-virtual {v2}, Lcom/sleepycat/b/l/ac;->v_()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 97
    :cond_0
    return-wide v0
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected final n()J
    .locals 2

    .prologue
    .line 124
    sget v0, Lcom/sleepycat/b/c/ao;->E:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/a/b;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "<din>"

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "</din>"

    return-object v0
.end method

.method public final y()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/sleepycat/b/g/af;->n:Lcom/sleepycat/b/g/af;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "DIN"

    return-object v0
.end method
