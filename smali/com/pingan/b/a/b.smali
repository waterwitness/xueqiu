.class public final Lcom/pingan/b/a/b;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:Lcom/pingan/b/a/j;

.field private final e:Lcom/pingan/b/a/c;


# direct methods
.method public constructor <init>([BILcom/pingan/b/a/j;Lcom/pingan/b/a/c;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 27
    array-length v0, p1

    if-ltz v0, :cond_0

    if-ltz p2, :cond_0

    add-int/lit8 v0, p2, 0x0

    if-ltz v0, :cond_0

    add-int/lit8 v0, p2, 0x0

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: 0 len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/pingan/b/a/b;->a:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/pingan/b/a/b;->b:I

    .line 33
    iput p2, p0, Lcom/pingan/b/a/b;->c:I

    .line 34
    iput-object p3, p0, Lcom/pingan/b/a/b;->d:Lcom/pingan/b/a/j;

    .line 35
    iput-object p4, p0, Lcom/pingan/b/a/b;->e:Lcom/pingan/b/a/c;

    .line 36
    return-void
.end method

.method public constructor <init>([BLcom/pingan/b/a/j;Lcom/pingan/b/a/c;)V
    .locals 1

    .prologue
    .line 22
    array-length v0, p1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/pingan/b/a/b;-><init>([BILcom/pingan/b/a/j;Lcom/pingan/b/a/c;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/pingan/b/a/b;->a:[B

    iget v2, p0, Lcom/pingan/b/a/b;->b:I

    iget v3, p0, Lcom/pingan/b/a/b;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/pingan/b/a/b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/16 v2, 0x2000

    .line 55
    iget-object v0, p0, Lcom/pingan/b/a/b;->d:Lcom/pingan/b/a/j;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pingan/b/a/b;->e:Lcom/pingan/b/a/c;

    if-eqz v0, :cond_4

    .line 1064
    :cond_0
    const/4 v0, 0x0

    .line 1065
    :goto_0
    iget v1, p0, Lcom/pingan/b/a/b;->c:I

    if-ge v0, v1, :cond_5

    .line 1066
    iget-object v1, p0, Lcom/pingan/b/a/b;->e:Lcom/pingan/b/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pingan/b/a/b;->e:Lcom/pingan/b/a/c;

    invoke-interface {v1}, Lcom/pingan/b/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1068
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_1
    new-instance v0, Lcom/pingan/b/a/d;

    invoke-direct {v0}, Lcom/pingan/b/a/d;-><init>()V

    throw v0

    .line 1074
    :cond_1
    iget v1, p0, Lcom/pingan/b/a/b;->c:I

    sub-int/2addr v1, v0

    .line 1075
    if-ge v1, v2, :cond_3

    .line 1076
    :goto_2
    iget-object v3, p0, Lcom/pingan/b/a/b;->a:[B

    iget v4, p0, Lcom/pingan/b/a/b;->b:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1077
    iget-object v3, p0, Lcom/pingan/b/a/b;->d:Lcom/pingan/b/a/j;

    if-eqz v3, :cond_2

    .line 1078
    iget-object v3, p0, Lcom/pingan/b/a/b;->d:Lcom/pingan/b/a/j;

    iget v4, p0, Lcom/pingan/b/a/b;->c:I

    invoke-interface {v3, v0, v4}, Lcom/pingan/b/a/j;->a(II)V

    .line 1080
    :cond_2
    add-int/2addr v0, v1

    .line 1081
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1075
    goto :goto_2

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/pingan/b/a/b;->a:[B

    iget v1, p0, Lcom/pingan/b/a/b;->b:I

    iget v2, p0, Lcom/pingan/b/a/b;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    :cond_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 61
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
