.class public abstract Lorg/apache/commons/a/a/b;
.super Ljava/io/InputStream;
.source "ArchiveInputStream.java"


# instance fields
.field public a:J

.field private final b:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/a/a/b;->b:[B

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/a/a/b;->a:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 81
    iget-object v1, p0, Lorg/apache/commons/a/a/b;->b:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/a/a/b;->read([BII)I

    move-result v1

    .line 82
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/a/a/b;->b:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
