.class final Lcom/e/a/a/g;
.super Lcom/e/a/a/a;
.source "HttpStrictMultipart.java"


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/e/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/e/a/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/e/a/a/a;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 28
    iput-object p4, p0, Lcom/e/a/a/g;->d:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/e/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/e/a/a/g;->d:Ljava/util/List;

    return-object v0
.end method

.method protected final a(Lcom/e/a/a/b;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 42
    .line 1047
    iget-object v0, p1, Lcom/e/a/a/b;->a:Lcom/e/a/a/c;

    .line 43
    invoke-virtual {v0}, Lcom/e/a/a/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/i;

    .line 2024
    iget-object v2, v0, Lcom/e/a/a/i;->a:Ljava/lang/String;

    .line 1055
    invoke-static {v2, p2}, Lcom/e/a/a/a;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1056
    sget-object v2, Lcom/e/a/a/a;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v2, p2}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 2028
    iget-object v0, v0, Lcom/e/a/a/i;->b:Ljava/lang/String;

    .line 1057
    invoke-static {v0, p2}, Lcom/e/a/a/a;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1058
    sget-object v0, Lcom/e/a/a/a;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/e/a/a/a;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
