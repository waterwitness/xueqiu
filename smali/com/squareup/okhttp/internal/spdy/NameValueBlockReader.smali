.class Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lc/l;

.field private final source:Lc/f;


# direct methods
.method public constructor <init>(Lc/f;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;Lc/s;)V

    .line 65
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)V

    .line 77
    new-instance v2, Lc/l;

    invoke-direct {v2, v0, v1}, Lc/l;-><init>(Lc/s;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lc/l;

    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lc/l;

    invoke-static {v0}, Lc/m;->a(Lc/s;)Lc/f;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lc/f;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method private doneReading()V
    .locals 3

    .prologue
    .line 109
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lc/l;

    invoke-virtual {v0}, Lc/l;->a()Z

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "compressedLimit > 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private readByteString()Lc/g;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lc/f;

    invoke-interface {v0}, Lc/f;->h()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lc/f;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lc/f;->c(J)Lc/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lc/f;

    invoke-interface {v0}, Lc/f;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    .line 84
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lc/f;

    invoke-interface {v0}, Lc/f;->h()I

    move-result v1

    .line 85
    if-gez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs < 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/16 v0, 0x400

    if-le v1, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numberOfPairs > 1024: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lc/g;

    move-result-object v3

    invoke-virtual {v3}, Lc/g;->c()Lc/g;

    move-result-object v3

    .line 91
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lc/g;

    move-result-object v4

    .line 1281
    iget-object v5, v3, Lc/g;->c:[B

    array-length v5, v5

    .line 92
    if-nez v5, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v5, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lc/g;Lc/g;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->doneReading()V

    .line 97
    return-object v2
.end method
