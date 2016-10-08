.class final Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private final out:Lc/d;


# direct methods
.method constructor <init>(Lc/d;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    .line 374
    return-void
.end method


# virtual methods
.method final writeByteString(Lc/g;)V
    .locals 3

    .prologue
    .line 417
    .line 1281
    iget-object v0, p1, Lc/g;->c:[B

    array-length v0, v0

    .line 417
    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    invoke-virtual {v0, p1}, Lc/d;->a(Lc/g;)Lc/d;

    .line 419
    return-void
.end method

.method final writeHeaders(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lc/g;

    invoke-virtual {v0}, Lc/g;->c()Lc/g;

    move-result-object v4

    .line 382
    # getter for: Lcom/squareup/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 383
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v0, v4, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lc/g;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lc/g;)V

    .line 380
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    invoke-virtual {v0, v2}, Lc/d;->a(I)Lc/d;

    .line 389
    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lc/g;)V

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lc/g;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lc/g;)V

    goto :goto_1

    .line 393
    :cond_1
    return-void
.end method

.method final writeInt(III)V
    .locals 3

    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lc/d;->a(I)Lc/d;

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lc/d;->a(I)Lc/d;

    .line 405
    sub-int v0, p1, p2

    .line 408
    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 409
    and-int/lit8 v1, v0, 0x7f

    .line 410
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lc/d;->a(I)Lc/d;

    .line 411
    ushr-int/lit8 v0, v0, 0x7

    .line 412
    goto :goto_1

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lc/d;

    invoke-virtual {v1, v0}, Lc/d;->a(I)Lc/d;

    goto :goto_0
.end method
