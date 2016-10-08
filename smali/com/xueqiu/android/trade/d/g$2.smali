.class final Lcom/xueqiu/android/trade/d/g$2;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeHistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/d/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/g$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 140
    const-string v0, "TradeHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryTrustDeedList error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    .line 1038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 141
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/l;->c()V

    .line 142
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1116
    if-eqz p1, :cond_0

    .line 1119
    const-string v0, "TradeHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryTrustDeedList response:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v0, "result_code"

    const-string v4, ""

    invoke-static {p1, v0, v4}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    iget-object v4, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/xueqiu/android/trade/d/g$2;->a:Ljava/lang/String;

    invoke-static {v4, p1, v0, v5, v6}, Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/trade/d/g;Lcom/google/gson/JsonObject;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    .line 2038
    iget-object v3, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$2;->a:Ljava/lang/String;

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1122
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v4, v0}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/List;Z)V

    .line 1123
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1122
    goto :goto_0

    .line 1127
    :cond_2
    const-string v0, "result_data"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1128
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v4, "result_data"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/trade/d/g$2$1;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/trade/d/g$2$1;-><init>(Lcom/xueqiu/android/trade/d/g$2;)V

    .line 1129
    invoke-virtual {v5}, Lcom/xueqiu/android/trade/d/g$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1128
    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1132
    :goto_2
    iget-object v4, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    const-string v5, "last_pos"

    invoke-static {p1, v5, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3038
    iput-object v3, v4, Lcom/xueqiu/android/trade/d/g;->d:Ljava/lang/String;

    .line 1134
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    .line 4038
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1134
    invoke-interface {v3}, Lcom/xueqiu/android/trade/b/l;->c()V

    .line 1135
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/g$2;->b:Lcom/xueqiu/android/trade/d/g;

    .line 5038
    iget-object v3, v3, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 1135
    iget-object v4, p0, Lcom/xueqiu/android/trade/d/g$2;->a:Ljava/lang/String;

    .line 5197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1135
    if-nez v4, :cond_3

    :goto_3
    invoke-interface {v3, v0, v1}, Lcom/xueqiu/android/trade/b/l;->a(Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method
