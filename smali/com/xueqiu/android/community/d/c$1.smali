.class final Lcom/xueqiu/android/community/d/c$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/c;
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
.field final synthetic a:Lcom/xueqiu/android/community/d/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 1050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/b/i;->b(Z)V

    .line 96
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 97
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1081
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 2050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1081
    invoke-interface {v0, v9}, Lcom/xueqiu/android/community/b/i;->b(Z)V

    .line 1082
    const-string v0, "info"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    const-string v0, "info"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1084
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/model/TopicInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/TopicInfo;

    .line 1085
    iget-object v2, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 2173
    iget-object v3, v2, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicId()J

    move-result-wide v4

    .line 2174
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/TopicInfo;->getTopicTitle()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/community/d/c$5;

    iget-object v1, v2, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    check-cast v1, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v7, v2, v1}, Lcom/xueqiu/android/community/d/c$5;-><init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V

    .line 2173
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1086
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/d/c;->d()V

    .line 1087
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 3050
    iget-object v1, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1087
    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/b/i;->a(Lcom/xueqiu/android/community/model/TopicInfo;)V

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 4050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1088
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/i;->j()V

    .line 1090
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$1;->a:Lcom/xueqiu/android/community/d/c;

    .line 5113
    const-string v0, "stocks"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5114
    iget v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    .line 5115
    iput-boolean v8, v1, Lcom/xueqiu/android/community/d/c;->e:Z

    .line 5117
    :cond_1
    const-string v0, "users"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5118
    iget v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    .line 5119
    iput-boolean v8, v1, Lcom/xueqiu/android/community/d/c;->e:Z

    .line 5121
    :cond_2
    const-string v0, "cubes"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5122
    iget v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    .line 5123
    iput-boolean v8, v1, Lcom/xueqiu/android/community/d/c;->e:Z

    .line 5126
    :cond_3
    const-string v0, "statuses"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5127
    const-string v0, "statuses"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 5128
    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "items"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5129
    iget v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    .line 5133
    :cond_4
    const-string v0, "stocks"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5134
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v2, "stocks"

    .line 5135
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/d/c$2;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/community/d/c$2;-><init>(Lcom/xueqiu/android/community/d/c;)V

    .line 5136
    invoke-virtual {v3}, Lcom/xueqiu/android/community/d/c$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5135
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5137
    iget-object v2, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    invoke-interface {v2, v0}, Lcom/xueqiu/android/community/b/i;->a(Ljava/util/List;)V

    .line 5140
    :cond_5
    const-string v0, "users"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5141
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v2, "users"

    .line 5142
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/d/c$3;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/community/d/c$3;-><init>(Lcom/xueqiu/android/community/d/c;)V

    .line 5143
    invoke-virtual {v3}, Lcom/xueqiu/android/community/d/c$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5142
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5144
    iget-object v2, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    invoke-interface {v2, v0}, Lcom/xueqiu/android/community/b/i;->b(Ljava/util/List;)V

    .line 5147
    :cond_6
    const-string v0, "cubes"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5148
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v2, "cubes"

    .line 5149
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/d/c$4;

    invoke-direct {v3, v1}, Lcom/xueqiu/android/community/d/c$4;-><init>(Lcom/xueqiu/android/community/d/c;)V

    .line 5150
    invoke-virtual {v3}, Lcom/xueqiu/android/community/d/c$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5149
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RecommendCube;

    .line 5153
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getCube()Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v4

    .line 5154
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->setOwner(Lcom/xueqiu/android/community/model/User;)V

    .line 5155
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->isHasExist()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 5156
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RecommendCube;->getRecommendReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/cube/model/Cube;->setRecommendReason(Ljava/lang/String;)V

    .line 5157
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5159
    :cond_7
    iget-object v0, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/community/b/i;->b(Ljava/util/ArrayList;)V

    .line 5163
    :cond_8
    const-string v0, "statuses"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, v1, Lcom/xueqiu/android/community/d/c;->f:I

    if-le v0, v9, :cond_9

    .line 5164
    const-string v0, "statuses"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 5165
    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "items"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 5166
    iget-object v0, v1, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/i;->k()V

    .line 78
    :cond_9
    return-void
.end method
