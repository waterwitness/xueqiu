.class public final Lcom/e/a/a/j;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lcom/e/a/a/k;

.field private volatile c:Lcom/e/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/e/a/a/j;->a:[C

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/e/a/a/e;->a:I

    invoke-direct {p0, v0}, Lcom/e/a/a/j;-><init>(I)V

    .line 68
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/e/a/a/k;

    invoke-direct {v0}, Lcom/e/a/a/k;-><init>()V

    .line 1057
    iput p1, v0, Lcom/e/a/a/k;->b:I

    .line 1077
    iput-object v1, v0, Lcom/e/a/a/k;->d:Ljava/nio/charset/Charset;

    .line 2072
    iput-object v1, v0, Lcom/e/a/a/k;->c:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/e/a/a/j;->b:Lcom/e/a/a/k;

    .line 51
    iput-object v1, p0, Lcom/e/a/a/j;->c:Lcom/e/a/a/l;

    .line 52
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/e/a/a/j;-><init>(I)V

    .line 61
    return-void
.end method

.method private a()Lcom/e/a/a/l;
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/e/a/a/j;->c:Lcom/e/a/a/l;

    if-nez v0, :cond_0

    .line 95
    iget-object v3, p0, Lcom/e/a/a/j;->b:Lcom/e/a/a/k;

    .line 2162
    iget-object v0, v3, Lcom/e/a/a/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/e/a/a/k;->a:Ljava/lang/String;

    .line 2163
    :goto_0
    iget-object v4, v3, Lcom/e/a/a/k;->d:Ljava/nio/charset/Charset;

    .line 2164
    iget-object v1, v3, Lcom/e/a/a/k;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/e/a/a/k;->c:Ljava/lang/String;

    .line 2165
    :goto_1
    iget-object v2, v3, Lcom/e/a/a/k;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/e/a/a/k;->e:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2167
    :goto_2
    iget v5, v3, Lcom/e/a/a/k;->b:I

    if-eqz v5, :cond_4

    iget v3, v3, Lcom/e/a/a/k;->b:I

    .line 2169
    :goto_3
    sget-object v5, Lcom/e/a/a/k$1;->a:[I

    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_0

    .line 2177
    new-instance v3, Lcom/e/a/a/g;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/e/a/a/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 2179
    :goto_4
    new-instance v2, Lcom/e/a/a/l;

    invoke-static {v1, v4}, Lcom/e/a/a/k;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/e/a/a/a;->b()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/e/a/a/l;-><init>(Lcom/e/a/a/a;Ljava/lang/String;J)V

    .line 95
    iput-object v2, p0, Lcom/e/a/a/j;->c:Lcom/e/a/a/l;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/j;->c:Lcom/e/a/a/l;

    return-object v0

    .line 2162
    :cond_1
    const-string v0, "form-data"

    goto :goto_0

    .line 2164
    :cond_2
    invoke-static {}, Lcom/e/a/a/k;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2166
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 2167
    :cond_4
    sget v3, Lcom/e/a/a/e;->a:I

    goto :goto_3

    .line 2171
    :pswitch_0
    new-instance v3, Lcom/e/a/a/d;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/e/a/a/d;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 2172
    goto :goto_4

    .line 2174
    :pswitch_1
    new-instance v3, Lcom/e/a/a/f;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/e/a/a/f;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    move-object v0, v3

    .line 2175
    goto :goto_4

    .line 2169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/e/a/a/a/c;)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/e/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/e/a/a/b;-><init>(Ljava/lang/String;Lcom/e/a/a/a/c;)V

    .line 3101
    iget-object v1, p0, Lcom/e/a/a/j;->b:Lcom/e/a/a/k;

    .line 4085
    iget-object v2, v1, Lcom/e/a/a/k;->e:Ljava/util/List;

    if-nez v2, :cond_0

    .line 4086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/e/a/a/k;->e:Ljava/util/List;

    .line 4088
    :cond_0
    iget-object v1, v1, Lcom/e/a/a/k;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/j;->c:Lcom/e/a/a/l;

    .line 107
    return-void
.end method

.method public final consumeContent()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/e/a/a/j;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public final isChunked()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->isChunked()Z

    move-result v0

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public final isStreaming()Z
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/e/a/a/l;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/e/a/a/j;->a()Lcom/e/a/a/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/e/a/a/l;->writeTo(Ljava/io/OutputStream;)V

    .line 148
    return-void
.end method
