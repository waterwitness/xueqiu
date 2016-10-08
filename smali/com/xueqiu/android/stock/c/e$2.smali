.class final Lcom/xueqiu/android/stock/c/e$2;
.super Lcom/xueqiu/android/base/b/p;
.source "IndustryIndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/e;
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
.field final synthetic a:Lcom/xueqiu/android/stock/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/e;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 139
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->z()V

    .line 140
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 135
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1144
    const-string v0, "tqFinFinmainindexOfIndustry"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1145
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    const-string v2, "reportdate"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/c/e;->b(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 1146
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    const-string v2, "count"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/stock/c/e;->a(Lcom/xueqiu/android/stock/c/e;I)I

    .line 1147
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 1148
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    .line 1149
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1150
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1151
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v4}, Lcom/xueqiu/android/stock/c/e;->e(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->f(Lcom/xueqiu/android/stock/c/e;)V

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->g(Lcom/xueqiu/android/stock/c/e;)V

    .line 1156
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->d(Lcom/xueqiu/android/stock/c/e;)V

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->h(Lcom/xueqiu/android/stock/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->i(Lcom/xueqiu/android/stock/c/e;)V

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$2;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->z()V

    .line 135
    return-void
.end method
