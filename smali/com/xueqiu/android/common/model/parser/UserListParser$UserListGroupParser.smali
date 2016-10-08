.class Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;
.super Lcom/xueqiu/android/common/model/parser/GroupParser;
.source "UserListParser.java"


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/model/parser/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/parser/Parser",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected parse(Ljava/util/ArrayList;Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 85
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    .line 87
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 88
    check-cast v0, Lorg/json/JSONObject;

    .line 89
    const-string v1, "friend"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    const-string v4, "friend"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 91
    :cond_0
    const-string v1, "follower"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    const-string v4, "follower"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/model/parser/UserListParser$UserListGroupParser;->mSubParser:Lcom/xueqiu/android/common/model/parser/Parser;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/model/parser/Parser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
