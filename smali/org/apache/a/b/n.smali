.class public final Lorg/apache/a/b/n;
.super Lorg/apache/a/b/a;


# static fields
.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lorg/apache/a/b/n;->f:I

    sput v0, Lorg/apache/a/b/n;->g:I

    sput v0, Lorg/apache/a/b/n;->h:I

    const/high16 v0, 0xa00000

    sput v0, Lorg/apache/a/b/n;->i:I

    const/high16 v0, 0x6400000

    sput v0, Lorg/apache/a/b/n;->j:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/c/d;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/a/b/a;-><init>(Lorg/apache/a/c/d;ZZ)V

    return-void
.end method


# virtual methods
.method public final g()Lorg/apache/a/b/g;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/a/b/n;->k()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/a/b/n;->k()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/a/b/n;->m()I

    move-result v2

    sget v3, Lorg/apache/a/b/n;->f:I

    if-le v2, v3, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Thrift map size "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lorg/apache/a/b/g;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/a/b/g;-><init>(BBI)V

    return-object v3
.end method

.method public final h()Lorg/apache/a/b/f;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/a/b/n;->k()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/a/b/n;->m()I

    move-result v1

    sget v2, Lorg/apache/a/b/n;->g:I

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrift list size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/apache/a/b/f;

    invoke-direct {v2, v0, v1}, Lorg/apache/a/b/f;-><init>(BI)V

    return-object v2
.end method

.method public final i()Lorg/apache/a/b/l;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/a/b/n;->k()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/a/b/n;->m()I

    move-result v1

    sget v2, Lorg/apache/a/b/n;->h:I

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrift set size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lorg/apache/a/b/l;

    invoke-direct {v2, v0, v1}, Lorg/apache/a/b/l;-><init>(BI)V

    return-object v2
.end method

.method public final p()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/a/b/n;->m()I

    move-result v1

    sget v0, Lorg/apache/a/b/n;->i:I

    if-le v1, v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrift string size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v0}, Lorg/apache/a/c/d;->c()I

    move-result v0

    if-lt v0, v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v2}, Lorg/apache/a/c/d;->a()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v3}, Lorg/apache/a/c/d;->b()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v2, v1}, Lorg/apache/a/c/d;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/a/g;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lorg/apache/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/a/b/n;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/a/b/n;->m()I

    move-result v1

    sget v0, Lorg/apache/a/b/n;->j:I

    if-le v1, v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thrift binary size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/a/b/n;->d(I)V

    iget-object v0, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v0}, Lorg/apache/a/c/d;->c()I

    move-result v0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v0}, Lorg/apache/a/c/d;->a()[B

    move-result-object v0

    iget-object v2, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v2}, Lorg/apache/a/c/d;->b()I

    move-result v2

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v2, v1}, Lorg/apache/a/c/d;->a(I)V

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v1, [B

    iget-object v2, p0, Lorg/apache/a/b/n;->e:Lorg/apache/a/c/d;

    invoke-virtual {v2, v0, v1}, Lorg/apache/a/c/d;->a([BI)I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method
