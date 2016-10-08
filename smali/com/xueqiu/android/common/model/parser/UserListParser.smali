.class public Lcom/xueqiu/android/common/model/parser/UserListParser;
.super Ljava/lang/Object;
.source "UserListParser.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    const-string v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/parser/UserListParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    :goto_0
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    instance-of v1, v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    if-eqz v1, :cond_4

    .line 48
    check-cast v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    .line 49
    const-string v1, "page"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setCurrentPage(I)V

    .line 50
    const-string v1, "maxPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setMaxPage(I)V

    .line 51
    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setTotalCount(I)V

    .line 65
    :cond_0
    :goto_1
    return-object v0

    .line 34
    :cond_1
    const-string v0, "followers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "followers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    const-string v0, "followers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/parser/UserListParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    const-string v0, "anonymous_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 37
    new-instance v0, Lcom/xueqiu/android/community/model/FollowerUserGroup;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/FollowerUserGroup;-><init>()V

    .line 38
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/model/FollowerUserGroup;->setAnonymousCount(I)V

    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 42
    const-string v0, "friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/parser/UserListParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 54
    :cond_4
    new-instance v1, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>(Ljava/util/ArrayList;)V

    .line 55
    const-string v0, "page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 56
    const-string v0, "maxPage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 57
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    :cond_5
    :goto_2
    move-object v0, v1

    .line 62
    goto :goto_1

    .line 59
    :cond_6
    const-string v0, "totalcount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    const-string v0, "totalcount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    goto :goto_2
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
    .line 71
    new-instance v0, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;

    new-instance v1, Lcom/xueqiu/android/common/model/parser/UserParser;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/parser/UserParser;-><init>()V

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
