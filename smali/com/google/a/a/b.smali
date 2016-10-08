.class public final Lcom/google/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public final d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/a/a/b;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/b;->c:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/google/a/a/b;->b:I

    return-void
.end method

.method constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/a/a/b;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/b;->c:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/a/a/b;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/a/a/f;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/b;->c(I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/a/a/b;->c(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(II)I
    .locals 2

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/a/a/b;->a(I)I

    move-result v1

    .line 4000
    if-ltz p1, :cond_0

    invoke-static {p1}, Lcom/google/a/a/b;->c(I)I

    move-result v0

    .line 0
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 4000
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    .prologue
    .line 0
    int-to-byte v0, p1

    .line 5000
    iget v1, p0, Lcom/google/a/a/b;->c:I

    iget v2, p0, Lcom/google/a/a/b;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/a/a/b;->a()V

    :cond_0
    iget-object v1, p0, Lcom/google/a/a/b;->a:[B

    iget v2, p0, Lcom/google/a/a/b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/a/a/b;->c:I

    aput-byte v0, v1, v2

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/c;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/a/a/b;->a:[B

    iget v2, p0, Lcom/google/a/a/b;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/a/a/b;->c:I

    return-void
.end method

.method public final a(II)V
    .locals 6

    .prologue
    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/b;->c(II)V

    .line 1000
    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/a/a/b;->b(I)V

    .line 2000
    :goto_0
    return-void

    .line 1000
    :cond_0
    int-to-long v0, p2

    .line 2000
    :goto_1
    const-wide/16 v2, -0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/a/b;->d(I)V

    goto :goto_0

    :cond_1
    long-to-int v2, v0

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-direct {p0, v2}, Lcom/google/a/a/b;->d(I)V

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/b;->c(II)V

    .line 3000
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/a/a/b;->d(I)V

    .line 0
    return-void
.end method

.method public final b(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/a/a/b;->d(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/a/a/b;->d(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final c(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/a/a/f;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/a/b;->b(I)V

    return-void
.end method
