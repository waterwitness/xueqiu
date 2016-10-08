.class public Lcom/sleepycat/c/d;
.super Ljava/io/OutputStream;
.source "FastOutputStream.java"


# static fields
.field private static d:[B


# instance fields
.field public a:I

.field public b:[B

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/c/d;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1145
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    .line 1146
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/c/d;->c:I

    .line 91
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/sleepycat/c/d;->b:[B

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/c/d;->c:I

    .line 126
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    iget v0, p0, Lcom/sleepycat/c/d;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/c/d;->c:I

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v1, v1

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 313
    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    iget v2, p0, Lcom/sleepycat/c/d;->a:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iput-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    .line 316
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)V
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 245
    if-lez v0, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/sleepycat/c/d;->a(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    iget v1, p0, Lcom/sleepycat/c/d;->a:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sleepycat/c/d;->a:I

    .line 250
    return-void
.end method

.method public final d(I)V
    .locals 3

    .prologue
    .line 216
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/c/d;->a(I)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/c/d;->b:[B

    iget v1, p0, Lcom/sleepycat/c/d;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/c/d;->a:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 220
    return-void
.end method

.method public final e(I)V
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 292
    if-lez v0, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/sleepycat/c/d;->a(I)V

    .line 294
    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/c/d;->a:I

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sleepycat/c/d;->a:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public write(I)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/sleepycat/c/d;->d(I)V

    .line 165
    return-void
.end method

.method public write([B)V
    .locals 4

    .prologue
    .line 170
    .line 1229
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1230
    if-lez v0, :cond_0

    .line 1231
    invoke-direct {p0, v0}, Lcom/sleepycat/c/d;->a(I)V

    .line 1233
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    iget v2, p0, Lcom/sleepycat/c/d;->a:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1234
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/c/d;->a:I

    .line 171
    return-void
.end method

.method public write([BII)V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/c/d;->a([BII)V

    .line 177
    return-void
.end method
