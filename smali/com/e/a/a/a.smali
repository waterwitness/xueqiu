.class abstract Lcom/e/a/a/a;
.super Ljava/lang/Object;
.source "AbstractMultipartForm.java"


# static fields
.field static final a:Lorg/apache/http/util/ByteArrayBuffer;

.field static final b:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final d:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field protected final c:Ljava/nio/charset/Charset;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/e/a/a/h;->a:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/e/a/a/a;->a:Lorg/apache/http/util/ByteArrayBuffer;

    .line 70
    sget-object v0, Lcom/e/a/a/h;->a:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    .line 71
    sget-object v0, Lcom/e/a/a/h;->a:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/e/a/a/a;->d:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "Multipart subtype"

    invoke-static {p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const-string v0, "Multipart boundary"

    invoke-static {p3, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Lcom/e/a/a/a;->e:Ljava/lang/String;

    .line 90
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/e/a/a/a;->c:Ljava/nio/charset/Charset;

    .line 91
    iput-object p3, p0, Lcom/e/a/a/a;->f:Ljava/lang/String;

    .line 92
    return-void

    .line 90
    :cond_0
    sget-object p2, Lcom/e/a/a/h;->a:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 4

    .prologue
    .line 30
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 33
    return-object v1
.end method

.method protected static a(Lcom/e/a/a/i;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 63
    .line 1024
    iget-object v0, p0, Lcom/e/a/a/i;->a:Ljava/lang/String;

    .line 63
    invoke-static {v0, p1, p2}, Lcom/e/a/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 64
    sget-object v0, Lcom/e/a/a/a;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 1028
    iget-object v0, p0, Lcom/e/a/a/i;->b:Ljava/lang/String;

    .line 65
    invoke-static {v0, p1, p2}, Lcom/e/a/a/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 66
    sget-object v0, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method

.method private a(Ljava/io/OutputStream;Z)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/e/a/a/a;->c:Ljava/nio/charset/Charset;

    .line 1109
    iget-object v1, p0, Lcom/e/a/a/a;->f:Ljava/lang/String;

    .line 116
    invoke-static {v0, v1}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/e/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/b;

    .line 118
    sget-object v3, Lcom/e/a/a/a;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 119
    invoke-static {v1, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 120
    sget-object v3, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/e/a/a/a;->a(Lcom/e/a/a/b;Ljava/io/OutputStream;)V

    .line 124
    sget-object v3, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 126
    if-eqz p2, :cond_0

    .line 2043
    iget-object v0, v0, Lcom/e/a/a/b;->b:Lcom/e/a/a/a/c;

    .line 127
    invoke-interface {v0, p1}, Lcom/e/a/a/a/c;->a(Ljava/io/OutputStream;)V

    .line 129
    :cond_0
    sget-object v0, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/e/a/a/a;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 132
    invoke-static {v1, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 133
    sget-object v0, Lcom/e/a/a/a;->d:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 134
    sget-object v0, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 135
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/e/a/a/h;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 50
    invoke-static {v0, p1}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p1, p0}, Lcom/e/a/a/a;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 44
    invoke-static {v0, p2}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method

.method static a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/e/a/a/b;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/e/a/a/b;Ljava/io/OutputStream;)V
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/e/a/a/a;->a(Ljava/io/OutputStream;Z)V

    .line 151
    return-void
.end method

.method public final b()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/e/a/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/b;

    .line 3043
    iget-object v0, v0, Lcom/e/a/a/b;->b:Lcom/e/a/a/a/c;

    .line 170
    invoke-interface {v0}, Lcom/e/a/a/a/c;->e()J

    move-result-wide v0

    .line 171
    cmp-long v9, v0, v4

    if-ltz v9, :cond_0

    .line 172
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v6

    .line 184
    :goto_1
    return-wide v0

    .line 177
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a;->a(Ljava/io/OutputStream;Z)V

    .line 180
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 181
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    move-wide v0, v6

    goto :goto_1
.end method
