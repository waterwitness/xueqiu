.class public Lcom/xueqiu/android/common/model/parser/IMGroupListParser;
.super Ljava/lang/Object;
.source "IMGroupListParser.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 33
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/parser/IMGroupListParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    :goto_0
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    instance-of v1, v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    if-eqz v1, :cond_2

    .line 40
    check-cast v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    .line 41
    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setCurrentPage(I)V

    .line 42
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setMaxPage(I)V

    .line 43
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setTotalCount(I)V

    .line 53
    :cond_0
    :goto_1
    return-object v0

    .line 36
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>(Ljava/util/ArrayList;)V

    .line 47
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 48
    const-string v0, "maxPage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 49
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    move-object v0, v1

    .line 50
    goto :goto_1
.end method

.method public parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v1, Lcom/xueqiu/android/message/model/IMGroup$Parser;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/IMGroup$Parser;-><init>()V

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
