.class final Lcom/xueqiu/android/common/y$3;
.super Lcom/xueqiu/android/base/b/p;
.source "SuggestedFollowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/y;
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
.field final synthetic a:Lcom/xueqiu/android/common/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/y;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;Lcom/android/volley/y;)V

    .line 212
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 208
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1216
    invoke-static {}, Lcom/xueqiu/android/common/y;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "response = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->b(Lcom/xueqiu/android/common/y;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1219
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->c(Lcom/xueqiu/android/common/y;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1220
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->d(Lcom/xueqiu/android/common/y;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1221
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->e(Lcom/xueqiu/android/common/y;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v0}, Lcom/xueqiu/android/common/y;->f(Lcom/xueqiu/android/common/y;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1224
    const-string v0, "users"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1225
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/y$3$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/y$3$1;-><init>(Lcom/xueqiu/android/common/y$3;)V

    .line 1227
    invoke-virtual {v2}, Lcom/xueqiu/android/common/y$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1225
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1230
    if-eqz v0, :cond_2

    .line 1231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 1232
    if-eqz v1, :cond_0

    .line 1233
    iget-object v4, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-static {v4, v6, v7, v8}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;JZ)V

    goto :goto_1

    .line 1216
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1240
    :goto_2
    const-string v0, "stocks"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1241
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/common/y$3$2;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/common/y$3$2;-><init>(Lcom/xueqiu/android/common/y$3;)V

    .line 1243
    invoke-virtual {v4}, Lcom/xueqiu/android/common/y$3$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1241
    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1244
    if-eqz v0, :cond_4

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/RecommendStock;

    .line 1246
    if-eqz v1, :cond_3

    .line 1247
    iget-object v5, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendStock;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v8}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-object v4, v0

    .line 1254
    :goto_4
    const-string v0, "cubes"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1255
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "cubes"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    new-instance v3, Lcom/xueqiu/android/common/y$3$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/y$3$3;-><init>(Lcom/xueqiu/android/common/y$3;)V

    .line 1257
    invoke-virtual {v3}, Lcom/xueqiu/android/common/y$3$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1255
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1258
    if-eqz v0, :cond_7

    .line 1259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/RecommendCube;

    .line 1260
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1261
    iget-object v5, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v8}, Lcom/xueqiu/android/common/y;->b(Lcom/xueqiu/android/common/y;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_6
    move-object v0, v3

    .line 1267
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/common/y$3;->a:Lcom/xueqiu/android/common/y;

    invoke-static {v1}, Lcom/xueqiu/android/common/y;->a(Lcom/xueqiu/android/common/y;)Lcom/xueqiu/android/community/a/at;

    move-result-object v1

    .line 2077
    iget-object v3, v1, Lcom/xueqiu/android/community/a/at;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2079
    invoke-virtual {v1, v2, v4, v0}, Lcom/xueqiu/android/community/a/at;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2080
    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/at;->notifyDataSetChanged()V

    .line 208
    return-void

    :cond_8
    move-object v4, v3

    goto :goto_4

    :cond_9
    move-object v2, v3

    goto/16 :goto_2
.end method
