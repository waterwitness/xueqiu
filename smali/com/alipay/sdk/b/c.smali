.class public final Lcom/alipay/sdk/b/c;
.super Ljava/lang/Object;


# instance fields
.field public a:[Lorg/apache/http/Header;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/b/c;->a:[Lorg/apache/http/Header;

    iput-object v0, p0, Lcom/alipay/sdk/b/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/sdk/b/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/sdk/b/c;->a:[Lorg/apache/http/Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/b/c;->a:[Lorg/apache/http/Header;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/b/c;->a:[Lorg/apache/http/Header;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
