.class final Lcom/xueqiu/android/stock/StockDetailActivity$8;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/snowballfinance/messageplatform/a/z;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$8;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 431
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1435
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    .line 2082
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1435
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lcom/xueqiu/android/stock/StockDetailActivity$8$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/StockDetailActivity$8$1;-><init>(Lcom/xueqiu/android/stock/StockDetailActivity$8;)V

    .line 1437
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/StockDetailActivity$8$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1435
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 1439
    :cond_0
    const-string v0, ""

    .line 3082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1440
    if-eqz v1, :cond_1

    .line 4082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1440
    array-length v1, v1

    if-lez v1, :cond_1

    .line 1441
    new-instance v0, Ljava/lang/String;

    .line 5082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1441
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1443
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "%d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6074
    iget-object v5, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1443
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method
