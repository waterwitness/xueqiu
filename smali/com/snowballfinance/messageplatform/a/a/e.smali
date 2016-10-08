.class public Lcom/snowballfinance/messageplatform/a/a/e;
.super Lcom/snowballfinance/messageplatform/a/a/f;
.source "PrimitiveOutputStream.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field public a:I

.field private d:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a/f;-><init>()V

    .line 18
    const/16 v0, 0x8

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    .line 19
    iput-byte v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 20
    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 105
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    if-eq v0, v1, :cond_0

    .line 106
    iget-byte v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    invoke-super {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 107
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 108
    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    .line 110
    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 54
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x8

    .line 23
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_3

    .line 24
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_3

    if-ltz p1, :cond_2

    if-le p1, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UI8 overflow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 27
    :cond_3
    invoke-super {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 28
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 48
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->c(I)V

    .line 49
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    :try_start_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    :try_start_1
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 120
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->d(I)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    move v0, v1

    .line 1077
    :goto_0
    if-lez v1, :cond_2

    .line 1078
    iget v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    if-le v1, v3, :cond_1

    .line 1080
    iget-byte v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    rsub-int/lit8 v4, v1, 0x20

    shl-int v4, v0, v4

    iget v5, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    rsub-int/lit8 v5, v5, 0x20

    ushr-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 1084
    iget-byte v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    invoke-super {p0, v3}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 1085
    iget v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    sub-int/2addr v1, v3

    .line 1086
    iput-byte v2, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 1087
    iput v6, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    .line 1090
    :cond_1
    iget-byte v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    rsub-int/lit8 v4, v1, 0x20

    shl-int v4, v0, v4

    iget v5, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    rsub-int/lit8 v5, v5, 0x20

    ushr-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 1091
    iget v3, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    .line 1094
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    if-nez v1, :cond_3

    .line 1096
    iget-byte v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    invoke-super {p0, v1}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 1097
    iput-byte v2, p0, Lcom/snowballfinance/messageplatform/a/a/e;->e:B

    .line 1098
    iput v6, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    move v1, v2

    goto :goto_0

    .line 73
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1

    .prologue
    .line 154
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->d(I)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/e;->write([B)V

    .line 156
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    const v0, 0xffff

    .line 31
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 32
    :cond_0
    sget-boolean v1, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    sget-boolean v1, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v1, :cond_3

    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "UI16 overflow"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 34
    :cond_3
    shr-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 35
    invoke-super {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 36
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    shr-int/lit8 v0, p1, 0x18

    invoke-super {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 41
    shr-int/lit8 v0, p1, 0x10

    invoke-super {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 42
    shr-int/lit8 v0, p1, 0x8

    invoke-super {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/f;->write(I)V

    .line 44
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 128
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->d:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/a/a/e;->b:Z

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encoded32 overflow"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 130
    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 131
    invoke-virtual {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 151
    :goto_0
    return-void

    .line 132
    :cond_2
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_3

    .line 133
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 134
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    goto :goto_0

    .line 135
    :cond_3
    const/high16 v0, 0x200000

    if-ge p1, v0, :cond_4

    .line 136
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 137
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 138
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    goto :goto_0

    .line 139
    :cond_4
    const/high16 v0, 0x10000000

    if-ge p1, v0, :cond_5

    .line 140
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 141
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 142
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 143
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    goto :goto_0

    .line 145
    :cond_5
    shr-int/lit8 v0, p1, 0x1c

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 146
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 147
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 148
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    .line 149
    and-int/lit8 v0, p1, 0x7f

    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->write(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/snowballfinance/messageplatform/a/a/f;->reset()V

    .line 114
    return-void
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/snowballfinance/messageplatform/a/a/f;->writeTo(Ljava/io/OutputStream;)V

    .line 64
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->buf:[B

    array-length v0, v0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
