.class public Lcom/xueqiu/android/message/model/Apply$ListParser;
.super Ljava/lang/Object;
.source "Apply.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/message/model/Apply;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/model/Apply$ListParser;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v1, Lcom/xueqiu/android/message/model/Apply$Parser;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Apply$Parser;-><init>()V

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    .line 197
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/model/Apply$ListParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 185
    :cond_0
    const-string v1, "maxpage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    new-instance v1, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>(Ljava/util/ArrayList;)V

    .line 187
    const-string v0, "maxpage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 188
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    move-object v0, v1

    .line 191
    :cond_1
    return-object v0
.end method
