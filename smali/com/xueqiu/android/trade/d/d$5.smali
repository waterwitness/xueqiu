.class final Lcom/xueqiu/android/trade/d/d$5;
.super Ljava/lang/Object;
.source "OrderFullPresenter.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/d;
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
.field final synthetic a:Lcom/xueqiu/android/trade/d/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/d;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d$5;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 188
    check-cast p1, Lcom/snowballfinance/messageplatform/a/z;

    .line 2074
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1192
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    .line 2082
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1192
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Lcom/xueqiu/android/trade/d/d$5$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/d/d$5$1;-><init>(Lcom/xueqiu/android/trade/d/d$5;)V

    .line 1194
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/d/d$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1192
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 1196
    :cond_0
    const-string v0, ""

    .line 3082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1197
    if-eqz v1, :cond_1

    .line 4082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1197
    array-length v1, v1

    if-lez v1, :cond_1

    .line 1198
    new-instance v0, Ljava/lang/String;

    .line 5082
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/z;->f:[B

    .line 1198
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1200
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "%d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6074
    iget-object v5, p1, Lcom/snowballfinance/messageplatform/a/z;->e:Ljava/lang/Integer;

    .line 1200
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method
