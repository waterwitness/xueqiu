.class public Lcom/sleepycat/b/a/w;
.super Ljava/lang/Object;
.source "PackedOffsets.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[S

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sleepycat/b/a/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/w;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lcom/sleepycat/b/a/w;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/a/w;->e()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/a/w;)[S
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    array-length v0, v0

    .line 157
    :goto_0
    iget v1, p0, Lcom/sleepycat/b/a/w;->c:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 199
    iget v0, p0, Lcom/sleepycat/b/a/w;->c:I

    if-lez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/sleepycat/b/a/w;->c()Lcom/sleepycat/b/a/x;

    move-result-object v0

    .line 201
    const-string v1, "<offsets size=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lcom/sleepycat/b/a/w;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/b/a/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Lcom/sleepycat/b/a/x;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_0
    const-string v0, "</offsets>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_1
    return-void

    .line 211
    :cond_1
    const-string v0, "<offsets size=\"0\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 167
    iget v1, p0, Lcom/sleepycat/b/a/w;->c:I

    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 168
    iget-object v1, p0, Lcom/sleepycat/b/a/w;->b:[S

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sleepycat/b/a/w;->b:[S

    array-length v1, v1

    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/a/w;->b:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/sleepycat/b/a/w;->b:[S

    aget-short v1, v1, v0

    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;S)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 176
    :cond_1
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 184
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/b/a/w;->c:I

    .line 185
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 186
    if-lez v0, :cond_1

    .line 187
    new-array v2, v0, [S

    iput-object v2, p0, Lcom/sleepycat/b/a/w;->b:[S

    .line 188
    :goto_1
    if-ge v1, v0, :cond_1

    .line 189
    iget-object v2, p0, Lcom/sleepycat/b/a/w;->b:[S

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;)S

    move-result v3

    aput-short v3, v2, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 183
    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method public final a([J)V
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 55
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    new-array v10, v0, [S

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    move v0, v1

    move-wide v2, v4

    move v8, v1

    .line 61
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 62
    aget-wide v6, p1, v0

    .line 63
    sub-long v2, v6, v2

    .line 1093
    sget-boolean v9, Lcom/sleepycat/b/a/w;->a:Z

    if-nez v9, :cond_0

    cmp-long v9, v2, v4

    if-gez v9, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1096
    :cond_0
    :goto_1
    const-wide/16 v12, 0x7fff

    and-long/2addr v12, v2

    long-to-int v9, v12

    int-to-short v11, v9

    .line 1097
    const/16 v9, 0xf

    ushr-long/2addr v2, v9

    .line 1098
    cmp-long v9, v2, v4

    if-lez v9, :cond_1

    .line 1099
    add-int/lit8 v9, v8, 0x1

    rsub-int/lit8 v11, v11, -0x1

    int-to-short v11, v11

    aput-short v11, v10, v8

    move v8, v9

    goto :goto_1

    .line 1101
    :cond_1
    add-int/lit8 v2, v8, 0x1

    aput-short v11, v10, v8

    .line 61
    add-int/lit8 v0, v0, 0x1

    move v8, v2

    move-wide v2, v6

    goto :goto_0

    .line 68
    :cond_2
    new-array v0, v8, [S

    iput-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    .line 69
    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    invoke-static {v10, v1, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/b/a/w;->c:I

    .line 71
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 220
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method final c()Lcom/sleepycat/b/a/x;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/sleepycat/b/a/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/a/x;-><init>(Lcom/sleepycat/b/a/w;B)V

    return-object v0
.end method

.method final d()[J
    .locals 6

    .prologue
    .line 77
    iget v0, p0, Lcom/sleepycat/b/a/w;->c:I

    new-array v2, v0, [J

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/sleepycat/b/a/w;->c()Lcom/sleepycat/b/a/x;

    move-result-object v3

    .line 80
    :goto_0
    invoke-virtual {v3}, Lcom/sleepycat/b/a/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Lcom/sleepycat/b/a/x;->b()J

    move-result-wide v4

    aput-wide v4, v2, v0

    move v0, v1

    goto :goto_0

    .line 83
    :cond_0
    sget-boolean v1, Lcom/sleepycat/b/a/w;->a:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sleepycat/b/a/w;->c:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_1
    return-object v2
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sleepycat/b/a/w;->b:[S

    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->b(I)I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/a/w;->a(Ljava/lang/StringBuilder;Z)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
