.class public final Lcom/sleepycat/b/l/a/d;
.super Lcom/sleepycat/b/l/y;
.source "DupCountLN.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sleepycat/b/l/y;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/a/d;->a:I

    .line 39
    return-void
.end method


# virtual methods
.method public final T()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method protected final a(ZZ)Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 116
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/af;->i:Lcom/sleepycat/b/g/af;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/af;->j:Lcom/sleepycat/b/g/af;

    goto :goto_0
.end method

.method public final a(IZ)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    if-eqz p2, :cond_0

    .line 1025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v1, "<dupCountLN>"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    add-int/lit8 v1, p1, 0x2

    .line 2025
    const-string v2, "                                                                                                                                "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "<count v=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/l/a/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-super {p0, p1, v3}, Lcom/sleepycat/b/l/y;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    if-eqz p2, :cond_1

    .line 3025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    const-string v1, "</dupCountLN>"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 143
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/l/a/d;->a:I

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/y;->b(Ljava/lang/StringBuilder;Z)V

    .line 162
    const-string v0, "<count v=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/l/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "<dupCountLN>"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "</dupCountLN>"

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/a/d;->a(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v_()J
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/sleepycat/b/c/ao;->v:I

    int-to-long v0, v0

    return-wide v0
.end method
