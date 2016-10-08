.class final Lcom/e/a/a/d;
.super Lcom/e/a/a/a;
.source "HttpBrowserCompatibleMultipart.java"


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
    iput-object p4, p0, Lcom/e/a/a/d;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/e/a/a/d;->d:Ljava/util/List;

    return-object v0
.end method

.method protected final a(Lcom/e/a/a/b;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 45
    .line 1047
    iget-object v0, p1, Lcom/e/a/a/b;->a:Lcom/e/a/a/c;

    .line 46
    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lcom/e/a/a/c;->a(Ljava/lang/String;)Lcom/e/a/a/i;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/e/a/a/d;->c:Ljava/nio/charset/Charset;

    invoke-static {v1, v2, p2}, Lcom/e/a/a/d;->a(Lcom/e/a/a/i;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 2043
    iget-object v1, p1, Lcom/e/a/a/b;->b:Lcom/e/a/a/a/c;

    .line 48
    invoke-interface {v1}, Lcom/e/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/e/a/a/c;->a(Ljava/lang/String;)Lcom/e/a/a/i;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/e/a/a/d;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, p2}, Lcom/e/a/a/d;->a(Lcom/e/a/a/i;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 54
    :cond_0
    return-void
.end method
