.class public Lcom/xueqiu/android/common/model/parser/IndustryParser;
.super Lcom/xueqiu/android/common/model/parser/AbstractParser;
.source "IndustryParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/model/parser/AbstractParser",
        "<",
        "Lcom/xueqiu/android/community/model/IndustryOfUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/xueqiu/android/common/model/parser/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/IndustryOfUser;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/xueqiu/android/community/model/IndustryOfUser;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/IndustryOfUser;-><init>()V

    .line 24
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/IndustryParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/IndustryOfUser;->setName(Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/IndustryParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/IndustryOfUser;->setId(I)V

    .line 30
    :cond_1
    const-string v1, "order_id"

    invoke-static {p1, v1}, Lcom/xueqiu/android/common/model/parser/IndustryParser;->hasKeyAndValueNotNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/IndustryOfUser;->setOrderId(I)V

    .line 33
    :cond_2
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/parser/IndustryParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/community/model/IndustryOfUser;

    move-result-object v0

    return-object v0
.end method
