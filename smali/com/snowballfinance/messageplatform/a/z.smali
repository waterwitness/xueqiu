.class public final Lcom/snowballfinance/messageplatform/a/z;
.super Lcom/snowballfinance/messageplatform/a/a;
.source "Response.java"


# instance fields
.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:[B

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a;-><init>()V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/snowballfinance/messageplatform/a/y;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a;-><init>()V

    .line 1054
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->c:Ljava/lang/Integer;

    .line 90
    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/z;->c:Ljava/lang/Integer;

    .line 1062
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/y;->d:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/snowballfinance/messageplatform/a/z;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static a(IILjava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v1, "error"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Lcom/snowballfinance/messageplatform/a/z;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/z;-><init>()V

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2125
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3078
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 124
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 3086
    iput-object v0, v1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 125
    return-object v1
.end method

.method public static a(Lcom/snowballfinance/messageplatform/a/y;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Lcom/snowballfinance/messageplatform/a/z;

    invoke-direct {v1, p0}, Lcom/snowballfinance/messageplatform/a/z;-><init>(Lcom/snowballfinance/messageplatform/a/y;)V

    .line 1121
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 1125
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 104
    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2078
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 105
    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/b/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 2086
    iput-object v0, v1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 106
    return-object v1
.end method
